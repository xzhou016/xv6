#include "param.h"
#include "types.h"
#include "defs.h"
#include "x86.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "spinlock.h"

struct {
  struct spinlock lock;
  struct shm_page {
    uint id;
    char *frame;
    int refcnt;
  } shm_pages[64];
} shm_table;

void shminit() {
  int i;
  initlock(&(shm_table.lock), "SHM lock");
  acquire(&(shm_table.lock));
  for (i = 0; i< 64; i++) {
    shm_table.shm_pages[i].id =0;
    shm_table.shm_pages[i].frame =0;
    shm_table.shm_pages[i].refcnt =0;
  }
  release(&(shm_table.lock));
}

/*General information
  * shm_open looks through the shm_table to see if this segment id already exists. 
  * If it doesn't then it needs to allocate a page and map it, and store this information in the shm_table. 
  * If the segment already exists, increase the refence count, 
  * and use mappages to add the mapping between the virtual address and the physical address. 
  * In either case, return the virtual address through the second parameter of the system call.
*/
int shm_open(int id, char **pointer) {
  //CS 153
  //HAS 2 CPUs, WILL SCREW UP PRINTING!!
  struct proc* curproc = myproc();
  //get the current process virtual memory
  uint va = PGROUNDUP(curproc->sz);
  int i;
  char * new_page;
 
  //Get locks
  initlock(&(shm_table.lock), "SHM lock");
  acquire(&(shm_table.lock));
  //Look through the shm_table
  for (i = 0; i< 64; i++){
    //Case 1: id for current process is found in shm_table
    //update share mem, map physical to virtual
    if (id == shm_table.shm_pages[i].id){
      //mapping to the page table : {get current page , virtual mem, size of the page size = virtual page size,
                                  // physical of the share mem table entry, write flag}
      if(mappages(curproc->pgdir, (void *)va, PGSIZE, V2P(shm_table.shm_pages[i].frame), PTE_W|PTE_U))
        panic("Shared memory not mapped");
      //increment reference counter
      shm_table.shm_pages[i].refcnt++;
      //pass the new virtual address
      *pointer = (char *)va;
      curproc->sz = va;
      //release lock
      release(&(shm_table.lock));
      return id; //done
    }
  }

  //Case 2: Did not find the id
  for (i = 0; i < 64; ++i){
    //find the empty page entry
    if (!shm_table.shm_pages[i].id){
      //printf(1,"found empty table\n");
      //allocate a new physical page
      new_page = kalloc();
      //set the page size
      memset(new_page, 0, PGSIZE);
      //assign the id to the current share mem page
      shm_table.shm_pages[i].id = id;
      //mapping to the page table : {get current page , assign frame , page size = virtual page size,
                                  // physical address, write flag}
      if(mappages(curproc->pgdir, (void *)va, PGSIZE, V2P(new_page), PTE_W|PTE_U))
        panic("Shared memory not mapped");
      //assign the new va to frame
      shm_table.shm_pages[i].frame = new_page;
      //start new reference counter
      shm_table.shm_pages[i].refcnt = 1;
      //pass back virtual address
      *pointer = (char *)va;
      //assing virtual address to current sz
      curproc->sz = va;
      //release lock
      release(&(shm_table.lock));
      return 0;
    }
  }



  //release lock
  //release(&(shm_table.lock));
  return -1; //major error, should never gotten here
}

/* General information
* shm_close looks for the shared memory segment in shm_table.
* If it finds it it decrements the reference count. And if it reaches zero, then it clears the shm_table. 
* If not then do not need to free up the page since it is still mapped in the page table. Ok to leave it that way.
*/

int shm_close(int id) {
  //Get locks
  initlock(&(shm_table.lock), "SHM lock");
  acquire(&(shm_table.lock));
  int i;

  //loop through the table to find id
  for (i = 0; i < 64; ++i)
  {  
    if (shm_table.shm_pages[i].id == id)
    {
      //decrease reference count
      shm_table.shm_pages[i].refcnt--;
      //if refcnt @ 0, free the shared mem entry
      if (shm_table.shm_pages[i].refcnt == 0)
      {
        shm_table.shm_pages[i].id =0;
        shm_table.shm_pages[i].frame =0;
      }

    }
  }

  release(&(shm_table.lock));
  return 0; //added to remove compiler warning -- you should decide what to return
}
