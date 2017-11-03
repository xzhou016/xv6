
_lab1:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "user.h"

int main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	83 ec 10             	sub    $0x10,%esp
   a:	8b 5d 0c             	mov    0xc(%ebp),%ebx
	
	int exitWait(void);
	int waitPid(void);
	//int PScheduler(void);

  printf(1, "\n This program tests the correctness of your lab#1\n");
   d:	c7 44 24 04 68 0c 00 	movl   $0xc68,0x4(%esp)
  14:	00 
  15:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  1c:	e8 2f 07 00 00       	call   750 <printf>
  
  if (atoi(argv[1]) == 1)
  21:	8b 43 04             	mov    0x4(%ebx),%eax
  24:	89 04 24             	mov    %eax,(%esp)
  27:	e8 74 05 00 00       	call   5a0 <atoi>
  2c:	83 f8 01             	cmp    $0x1,%eax
  2f:	74 30                	je     61 <main+0x61>
	exitWait();
  else if (atoi(argv[1]) == 2)
  31:	8b 43 04             	mov    0x4(%ebx),%eax
  34:	89 04 24             	mov    %eax,(%esp)
  37:	e8 64 05 00 00       	call   5a0 <atoi>
  3c:	83 f8 02             	cmp    $0x2,%eax
  3f:	74 27                	je     68 <main+0x68>
	waitPid();
  //else if (atoi(argv[1]) == 3)
	//PScheduler();
  else 
   printf(1, "\ntype \"lab1 1\" to test exit and wait, \"lab1 2\" to test waitpid and \"lab1 3\" to test the priority scheduler \n");
  41:	c7 44 24 04 9c 0c 00 	movl   $0xc9c,0x4(%esp)
  48:	00 
  49:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  50:	e8 fb 06 00 00       	call   750 <printf>
  
    // End of test
	 exit(0);
  55:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  5c:	e8 a1 05 00 00       	call   602 <exit>
	//int PScheduler(void);

  printf(1, "\n This program tests the correctness of your lab#1\n");
  
  if (atoi(argv[1]) == 1)
	exitWait();
  61:	e8 1a 00 00 00       	call   80 <exitWait>
  66:	eb ed                	jmp    55 <main+0x55>
  68:	90                   	nop
  69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  else if (atoi(argv[1]) == 2)
	waitPid();
  70:	e8 0b 01 00 00       	call   180 <waitPid>
  75:	eb de                	jmp    55 <main+0x55>
  77:	66 90                	xchg   %ax,%ax
  79:	66 90                	xchg   %ax,%ax
  7b:	66 90                	xchg   %ax,%ax
  7d:	66 90                	xchg   %ax,%ax
  7f:	90                   	nop

00000080 <exitWait>:
    // End of test
	 exit(0);
 }
  
  
int exitWait(void) {
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	56                   	push   %esi
  84:	53                   	push   %ebx
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
  85:	31 db                	xor    %ebx,%ebx
    // End of test
	 exit(0);
 }
  
  
int exitWait(void) {
  87:	83 ec 20             	sub    $0x20,%esp
	  int pid, ret_pid, exit_status;
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");
  8a:	c7 44 24 04 b8 0a 00 	movl   $0xab8,0x4(%esp)
  91:	00 
      {
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
      exit(-1);
  } 
    } else if (pid > 0) { // only the parent exeecutes this code
      ret_pid = wait(&exit_status);
  92:	8d 75 f4             	lea    -0xc(%ebp),%esi
int exitWait(void) {
	  int pid, ret_pid, exit_status;
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");
  95:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  9c:	e8 af 06 00 00       	call   750 <printf>

  for (i = 0; i < 2; i++) {
    pid = fork();
  a1:	e8 54 05 00 00       	call   5fa <fork>
    if (pid == 0) { // only the child executed this code
  a6:	83 f8 00             	cmp    $0x0,%eax
  a9:	74 45                	je     f0 <exitWait+0x70>
  ab:	90                   	nop
  ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      else
      {
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
      exit(-1);
  } 
    } else if (pid > 0) { // only the parent exeecutes this code
  b0:	0f 8e a3 00 00 00    	jle    159 <exitWait+0xd9>
      ret_pid = wait(&exit_status);
  b6:	89 34 24             	mov    %esi,(%esp)
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
  b9:	83 c3 01             	add    $0x1,%ebx
      {
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
      exit(-1);
  } 
    } else if (pid > 0) { // only the parent exeecutes this code
      ret_pid = wait(&exit_status);
  bc:	e8 49 05 00 00       	call   60a <wait>
      printf(1, "\n This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
  c1:	8b 55 f4             	mov    -0xc(%ebp),%edx
  c4:	c7 44 24 04 30 0b 00 	movl   $0xb30,0x4(%esp)
  cb:	00 
  cc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  d3:	89 54 24 0c          	mov    %edx,0xc(%esp)
  d7:	89 44 24 08          	mov    %eax,0x8(%esp)
  db:	e8 70 06 00 00       	call   750 <printf>
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
  e0:	83 fb 02             	cmp    $0x2,%ebx
  e3:	75 bc                	jne    a1 <exitWait+0x21>
	  printf(2, "\nError using fork\n");
      exit(-1);
    }
  }
  return 0;
}
  e5:	83 c4 20             	add    $0x20,%esp
  e8:	31 c0                	xor    %eax,%eax
  ea:	5b                   	pop    %ebx
  eb:	5e                   	pop    %esi
  ec:	5d                   	pop    %ebp
  ed:	c3                   	ret    
  ee:	66 90                	xchg   %ax,%ax
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");

  for (i = 0; i < 2; i++) {
    pid = fork();
    if (pid == 0) { // only the child executed this code
      if (i == 0)
  f0:	85 db                	test   %ebx,%ebx
  f2:	75 34                	jne    128 <exitWait+0xa8>
      {
      printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
  f4:	e8 89 05 00 00       	call   682 <getpid>
  f9:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 100:	00 
 101:	c7 44 24 04 f4 0a 00 	movl   $0xaf4,0x4(%esp)
 108:	00 
 109:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 110:	89 44 24 08          	mov    %eax,0x8(%esp)
 114:	e8 37 06 00 00       	call   750 <printf>
      exit(0);
 119:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 120:	e8 dd 04 00 00       	call   602 <exit>
 125:	8d 76 00             	lea    0x0(%esi),%esi
  }
      else
      {
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
 128:	e8 55 05 00 00       	call   682 <getpid>
 12d:	c7 44 24 0c ff ff ff 	movl   $0xffffffff,0xc(%esp)
 134:	ff 
 135:	c7 44 24 04 f4 0a 00 	movl   $0xaf4,0x4(%esp)
 13c:	00 
 13d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 144:	89 44 24 08          	mov    %eax,0x8(%esp)
 148:	e8 03 06 00 00       	call   750 <printf>
      exit(-1);
 14d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 154:	e8 a9 04 00 00       	call   602 <exit>
    } else if (pid > 0) { // only the parent exeecutes this code
      ret_pid = wait(&exit_status);
      printf(1, "\n This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
    } else  // something went wrong with fork system call
    {  
	  printf(2, "\nError using fork\n");
 159:	c7 44 24 04 0c 0d 00 	movl   $0xd0c,0x4(%esp)
 160:	00 
 161:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 168:	e8 e3 05 00 00       	call   750 <printf>
      exit(-1);
 16d:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 174:	e8 89 04 00 00       	call   602 <exit>
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000180 <waitPid>:
    }
  }
  return 0;
}

int waitPid(void){
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	56                   	push   %esi
 184:	53                   	push   %ebx
 185:	83 ec 30             	sub    $0x30,%esp
  int ret_pid, exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");
 188:	c7 44 24 04 74 0b 00 	movl   $0xb74,0x4(%esp)
 18f:	00 
 190:	8d 5d e4             	lea    -0x1c(%ebp),%ebx
 193:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 19a:	8d 75 f8             	lea    -0x8(%ebp),%esi

int waitPid(void){
	
  int ret_pid, exit_status;
  int i;
  int pid_a[5]={0, 0, 0, 0, 0};
 19d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 1a4:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 1ab:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 1b2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 1b9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");
 1c0:	e8 8b 05 00 00       	call   750 <printf>

  for (i = 0; i <5; i++) {
    pid_a[i] = fork();
 1c5:	e8 30 04 00 00       	call   5fa <fork>
	
    if (pid_a[i] == 0) { // only the child executed this code
 1ca:	85 c0                	test   %eax,%eax
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");

  for (i = 0; i <5; i++) {
    pid_a[i] = fork();
 1cc:	89 03                	mov    %eax,(%ebx)
	
    if (pid_a[i] == 0) { // only the child executed this code
 1ce:	0f 84 d5 01 00 00    	je     3a9 <waitPid+0x229>
 1d4:	83 c3 04             	add    $0x4,%ebx
  int pid_a[5]={0, 0, 0, 0, 0};
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");

  for (i = 0; i <5; i++) {
 1d7:	39 f3                	cmp    %esi,%ebx
 1d9:	75 ea                	jne    1c5 <waitPid+0x45>
     
      
      printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), 0);
      exit(0);}}
       
      sleep(5);
 1db:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
      ret_pid = waitpid(pid_a[3], &exit_status, 0);
 1e2:	8d 5d e0             	lea    -0x20(%ebp),%ebx
     
      
      printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), 0);
      exit(0);}}
       
      sleep(5);
 1e5:	e8 a8 04 00 00       	call   692 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
 1ea:	8b 75 f0             	mov    -0x10(%ebp),%esi
 1ed:	c7 44 24 04 f0 0b 00 	movl   $0xbf0,0x4(%esp)
 1f4:	00 
 1f5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1fc:	89 74 24 08          	mov    %esi,0x8(%esp)
 200:	e8 4b 05 00 00       	call   750 <printf>
      ret_pid = waitpid(pid_a[3], &exit_status, 0);
 205:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 209:	89 34 24             	mov    %esi,(%esp)
 20c:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 213:	00 
 214:	e8 89 04 00 00       	call   6a2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 219:	8b 55 e0             	mov    -0x20(%ebp),%edx
 21c:	c7 44 24 04 2c 0c 00 	movl   $0xc2c,0x4(%esp)
 223:	00 
 224:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 22b:	89 54 24 0c          	mov    %edx,0xc(%esp)
 22f:	89 44 24 08          	mov    %eax,0x8(%esp)
 233:	e8 18 05 00 00       	call   750 <printf>
      sleep(5);
 238:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 23f:	e8 4e 04 00 00       	call   692 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[1]);
 244:	8b 75 e8             	mov    -0x18(%ebp),%esi
 247:	c7 44 24 04 f0 0b 00 	movl   $0xbf0,0x4(%esp)
 24e:	00 
 24f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 256:	89 74 24 08          	mov    %esi,0x8(%esp)
 25a:	e8 f1 04 00 00       	call   750 <printf>
      ret_pid = waitpid(pid_a[1], &exit_status, 0);
 25f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 263:	89 34 24             	mov    %esi,(%esp)
 266:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 26d:	00 
 26e:	e8 2f 04 00 00       	call   6a2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 273:	8b 55 e0             	mov    -0x20(%ebp),%edx
 276:	c7 44 24 04 2c 0c 00 	movl   $0xc2c,0x4(%esp)
 27d:	00 
 27e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 285:	89 54 24 0c          	mov    %edx,0xc(%esp)
 289:	89 44 24 08          	mov    %eax,0x8(%esp)
 28d:	e8 be 04 00 00       	call   750 <printf>
      sleep(5);
 292:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 299:	e8 f4 03 00 00       	call   692 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[2]);
 29e:	8b 75 ec             	mov    -0x14(%ebp),%esi
 2a1:	c7 44 24 04 f0 0b 00 	movl   $0xbf0,0x4(%esp)
 2a8:	00 
 2a9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 2b0:	89 74 24 08          	mov    %esi,0x8(%esp)
 2b4:	e8 97 04 00 00       	call   750 <printf>
      ret_pid = waitpid(pid_a[2], &exit_status, 0);
 2b9:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 2bd:	89 34 24             	mov    %esi,(%esp)
 2c0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 2c7:	00 
 2c8:	e8 d5 03 00 00       	call   6a2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 2cd:	8b 55 e0             	mov    -0x20(%ebp),%edx
 2d0:	c7 44 24 04 2c 0c 00 	movl   $0xc2c,0x4(%esp)
 2d7:	00 
 2d8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 2df:	89 54 24 0c          	mov    %edx,0xc(%esp)
 2e3:	89 44 24 08          	mov    %eax,0x8(%esp)
 2e7:	e8 64 04 00 00       	call   750 <printf>
      sleep(5);
 2ec:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 2f3:	e8 9a 03 00 00       	call   692 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[0]);
 2f8:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 2fb:	c7 44 24 04 f0 0b 00 	movl   $0xbf0,0x4(%esp)
 302:	00 
 303:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 30a:	89 74 24 08          	mov    %esi,0x8(%esp)
 30e:	e8 3d 04 00 00       	call   750 <printf>
      ret_pid = waitpid(pid_a[0], &exit_status, 0);
 313:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 317:	89 34 24             	mov    %esi,(%esp)
 31a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 321:	00 
 322:	e8 7b 03 00 00       	call   6a2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 327:	8b 55 e0             	mov    -0x20(%ebp),%edx
 32a:	c7 44 24 04 2c 0c 00 	movl   $0xc2c,0x4(%esp)
 331:	00 
 332:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 339:	89 54 24 0c          	mov    %edx,0xc(%esp)
 33d:	89 44 24 08          	mov    %eax,0x8(%esp)
 341:	e8 0a 04 00 00       	call   750 <printf>
      sleep(5);
 346:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 34d:	e8 40 03 00 00       	call   692 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[4]);
 352:	8b 75 f4             	mov    -0xc(%ebp),%esi
 355:	c7 44 24 04 f0 0b 00 	movl   $0xbf0,0x4(%esp)
 35c:	00 
 35d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 364:	89 74 24 08          	mov    %esi,0x8(%esp)
 368:	e8 e3 03 00 00       	call   750 <printf>
      ret_pid = waitpid(pid_a[4], &exit_status, 0);
 36d:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 371:	89 34 24             	mov    %esi,(%esp)
 374:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 37b:	00 
 37c:	e8 21 03 00 00       	call   6a2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 381:	8b 55 e0             	mov    -0x20(%ebp),%edx
 384:	c7 44 24 04 2c 0c 00 	movl   $0xc2c,0x4(%esp)
 38b:	00 
 38c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 393:	89 54 24 0c          	mov    %edx,0xc(%esp)
 397:	89 44 24 08          	mov    %eax,0x8(%esp)
 39b:	e8 b0 03 00 00       	call   750 <printf>
      
      return 0;
  }
 3a0:	83 c4 30             	add    $0x30,%esp
 3a3:	31 c0                	xor    %eax,%eax
 3a5:	5b                   	pop    %ebx
 3a6:	5e                   	pop    %esi
 3a7:	5d                   	pop    %ebp
 3a8:	c3                   	ret    
    pid_a[i] = fork();
	
    if (pid_a[i] == 0) { // only the child executed this code
     
      
      printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), 0);
 3a9:	e8 d4 02 00 00       	call   682 <getpid>
 3ae:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 3b5:	00 
 3b6:	c7 44 24 04 b4 0b 00 	movl   $0xbb4,0x4(%esp)
 3bd:	00 
 3be:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 3c5:	89 44 24 08          	mov    %eax,0x8(%esp)
 3c9:	e8 82 03 00 00       	call   750 <printf>
      exit(0);}}
 3ce:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 3d5:	e8 28 02 00 00       	call   602 <exit>
 3da:	66 90                	xchg   %ax,%ax
 3dc:	66 90                	xchg   %ax,%ax
 3de:	66 90                	xchg   %ax,%ax

000003e0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	8b 45 08             	mov    0x8(%ebp),%eax
 3e6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 3e9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3ea:	89 c2                	mov    %eax,%edx
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3f0:	83 c1 01             	add    $0x1,%ecx
 3f3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 3f7:	83 c2 01             	add    $0x1,%edx
 3fa:	84 db                	test   %bl,%bl
 3fc:	88 5a ff             	mov    %bl,-0x1(%edx)
 3ff:	75 ef                	jne    3f0 <strcpy+0x10>
    ;
  return os;
}
 401:	5b                   	pop    %ebx
 402:	5d                   	pop    %ebp
 403:	c3                   	ret    
 404:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 40a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000410 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	8b 55 08             	mov    0x8(%ebp),%edx
 416:	53                   	push   %ebx
 417:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 41a:	0f b6 02             	movzbl (%edx),%eax
 41d:	84 c0                	test   %al,%al
 41f:	74 2d                	je     44e <strcmp+0x3e>
 421:	0f b6 19             	movzbl (%ecx),%ebx
 424:	38 d8                	cmp    %bl,%al
 426:	74 0e                	je     436 <strcmp+0x26>
 428:	eb 2b                	jmp    455 <strcmp+0x45>
 42a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 430:	38 c8                	cmp    %cl,%al
 432:	75 15                	jne    449 <strcmp+0x39>
    p++, q++;
 434:	89 d9                	mov    %ebx,%ecx
 436:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 439:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 43c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 43f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 443:	84 c0                	test   %al,%al
 445:	75 e9                	jne    430 <strcmp+0x20>
 447:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 449:	29 c8                	sub    %ecx,%eax
}
 44b:	5b                   	pop    %ebx
 44c:	5d                   	pop    %ebp
 44d:	c3                   	ret    
 44e:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 451:	31 c0                	xor    %eax,%eax
 453:	eb f4                	jmp    449 <strcmp+0x39>
 455:	0f b6 cb             	movzbl %bl,%ecx
 458:	eb ef                	jmp    449 <strcmp+0x39>
 45a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000460 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 466:	80 39 00             	cmpb   $0x0,(%ecx)
 469:	74 12                	je     47d <strlen+0x1d>
 46b:	31 d2                	xor    %edx,%edx
 46d:	8d 76 00             	lea    0x0(%esi),%esi
 470:	83 c2 01             	add    $0x1,%edx
 473:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 477:	89 d0                	mov    %edx,%eax
 479:	75 f5                	jne    470 <strlen+0x10>
    ;
  return n;
}
 47b:	5d                   	pop    %ebp
 47c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 47d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 47f:	5d                   	pop    %ebp
 480:	c3                   	ret    
 481:	eb 0d                	jmp    490 <memset>
 483:	90                   	nop
 484:	90                   	nop
 485:	90                   	nop
 486:	90                   	nop
 487:	90                   	nop
 488:	90                   	nop
 489:	90                   	nop
 48a:	90                   	nop
 48b:	90                   	nop
 48c:	90                   	nop
 48d:	90                   	nop
 48e:	90                   	nop
 48f:	90                   	nop

00000490 <memset>:

void*
memset(void *dst, int c, uint n)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	8b 55 08             	mov    0x8(%ebp),%edx
 496:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 497:	8b 4d 10             	mov    0x10(%ebp),%ecx
 49a:	8b 45 0c             	mov    0xc(%ebp),%eax
 49d:	89 d7                	mov    %edx,%edi
 49f:	fc                   	cld    
 4a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4a2:	89 d0                	mov    %edx,%eax
 4a4:	5f                   	pop    %edi
 4a5:	5d                   	pop    %ebp
 4a6:	c3                   	ret    
 4a7:	89 f6                	mov    %esi,%esi
 4a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004b0 <strchr>:

char*
strchr(const char *s, char c)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	8b 45 08             	mov    0x8(%ebp),%eax
 4b6:	53                   	push   %ebx
 4b7:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
 4ba:	0f b6 18             	movzbl (%eax),%ebx
 4bd:	84 db                	test   %bl,%bl
 4bf:	74 1d                	je     4de <strchr+0x2e>
    if(*s == c)
 4c1:	38 d3                	cmp    %dl,%bl
 4c3:	89 d1                	mov    %edx,%ecx
 4c5:	75 0d                	jne    4d4 <strchr+0x24>
 4c7:	eb 17                	jmp    4e0 <strchr+0x30>
 4c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4d0:	38 ca                	cmp    %cl,%dl
 4d2:	74 0c                	je     4e0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 4d4:	83 c0 01             	add    $0x1,%eax
 4d7:	0f b6 10             	movzbl (%eax),%edx
 4da:	84 d2                	test   %dl,%dl
 4dc:	75 f2                	jne    4d0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 4de:	31 c0                	xor    %eax,%eax
}
 4e0:	5b                   	pop    %ebx
 4e1:	5d                   	pop    %ebp
 4e2:	c3                   	ret    
 4e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 4e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004f0 <gets>:

char*
gets(char *buf, int max)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	57                   	push   %edi
 4f4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 4f5:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 4f7:	53                   	push   %ebx
 4f8:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 4fb:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 4fe:	eb 31                	jmp    531 <gets+0x41>
    cc = read(0, &c, 1);
 500:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 507:	00 
 508:	89 7c 24 04          	mov    %edi,0x4(%esp)
 50c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 513:	e8 02 01 00 00       	call   61a <read>
    if(cc < 1)
 518:	85 c0                	test   %eax,%eax
 51a:	7e 1d                	jle    539 <gets+0x49>
      break;
    buf[i++] = c;
 51c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 520:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 522:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 525:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 527:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 52b:	74 0c                	je     539 <gets+0x49>
 52d:	3c 0a                	cmp    $0xa,%al
 52f:	74 08                	je     539 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 531:	8d 5e 01             	lea    0x1(%esi),%ebx
 534:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 537:	7c c7                	jl     500 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 539:	8b 45 08             	mov    0x8(%ebp),%eax
 53c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 540:	83 c4 2c             	add    $0x2c,%esp
 543:	5b                   	pop    %ebx
 544:	5e                   	pop    %esi
 545:	5f                   	pop    %edi
 546:	5d                   	pop    %ebp
 547:	c3                   	ret    
 548:	90                   	nop
 549:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000550 <stat>:

int
stat(char *n, struct stat *st)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	56                   	push   %esi
 554:	53                   	push   %ebx
 555:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 558:	8b 45 08             	mov    0x8(%ebp),%eax
 55b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 562:	00 
 563:	89 04 24             	mov    %eax,(%esp)
 566:	e8 d7 00 00 00       	call   642 <open>
  if(fd < 0)
 56b:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 56d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
 56f:	78 27                	js     598 <stat+0x48>
    return -1;
  r = fstat(fd, st);
 571:	8b 45 0c             	mov    0xc(%ebp),%eax
 574:	89 1c 24             	mov    %ebx,(%esp)
 577:	89 44 24 04          	mov    %eax,0x4(%esp)
 57b:	e8 da 00 00 00       	call   65a <fstat>
  close(fd);
 580:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 583:	89 c6                	mov    %eax,%esi
  close(fd);
 585:	e8 a0 00 00 00       	call   62a <close>
  return r;
 58a:	89 f0                	mov    %esi,%eax
}
 58c:	83 c4 10             	add    $0x10,%esp
 58f:	5b                   	pop    %ebx
 590:	5e                   	pop    %esi
 591:	5d                   	pop    %ebp
 592:	c3                   	ret    
 593:	90                   	nop
 594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 598:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 59d:	eb ed                	jmp    58c <stat+0x3c>
 59f:	90                   	nop

000005a0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 5a6:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5a7:	0f be 11             	movsbl (%ecx),%edx
 5aa:	8d 42 d0             	lea    -0x30(%edx),%eax
 5ad:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
 5af:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 5b4:	77 17                	ja     5cd <atoi+0x2d>
 5b6:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 5b8:	83 c1 01             	add    $0x1,%ecx
 5bb:	8d 04 80             	lea    (%eax,%eax,4),%eax
 5be:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5c2:	0f be 11             	movsbl (%ecx),%edx
 5c5:	8d 5a d0             	lea    -0x30(%edx),%ebx
 5c8:	80 fb 09             	cmp    $0x9,%bl
 5cb:	76 eb                	jbe    5b8 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
 5cd:	5b                   	pop    %ebx
 5ce:	5d                   	pop    %ebp
 5cf:	c3                   	ret    

000005d0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 5d0:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5d1:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
 5d3:	89 e5                	mov    %esp,%ebp
 5d5:	56                   	push   %esi
 5d6:	8b 45 08             	mov    0x8(%ebp),%eax
 5d9:	53                   	push   %ebx
 5da:	8b 5d 10             	mov    0x10(%ebp),%ebx
 5dd:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5e0:	85 db                	test   %ebx,%ebx
 5e2:	7e 12                	jle    5f6 <memmove+0x26>
 5e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 5e8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 5ec:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 5ef:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5f2:	39 da                	cmp    %ebx,%edx
 5f4:	75 f2                	jne    5e8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 5f6:	5b                   	pop    %ebx
 5f7:	5e                   	pop    %esi
 5f8:	5d                   	pop    %ebp
 5f9:	c3                   	ret    

000005fa <fork>:
 5fa:	b8 01 00 00 00       	mov    $0x1,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <exit>:
 602:	b8 02 00 00 00       	mov    $0x2,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <wait>:
 60a:	b8 03 00 00 00       	mov    $0x3,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <pipe>:
 612:	b8 04 00 00 00       	mov    $0x4,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    

0000061a <read>:
 61a:	b8 05 00 00 00       	mov    $0x5,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    

00000622 <write>:
 622:	b8 10 00 00 00       	mov    $0x10,%eax
 627:	cd 40                	int    $0x40
 629:	c3                   	ret    

0000062a <close>:
 62a:	b8 15 00 00 00       	mov    $0x15,%eax
 62f:	cd 40                	int    $0x40
 631:	c3                   	ret    

00000632 <kill>:
 632:	b8 06 00 00 00       	mov    $0x6,%eax
 637:	cd 40                	int    $0x40
 639:	c3                   	ret    

0000063a <exec>:
 63a:	b8 07 00 00 00       	mov    $0x7,%eax
 63f:	cd 40                	int    $0x40
 641:	c3                   	ret    

00000642 <open>:
 642:	b8 0f 00 00 00       	mov    $0xf,%eax
 647:	cd 40                	int    $0x40
 649:	c3                   	ret    

0000064a <mknod>:
 64a:	b8 11 00 00 00       	mov    $0x11,%eax
 64f:	cd 40                	int    $0x40
 651:	c3                   	ret    

00000652 <unlink>:
 652:	b8 12 00 00 00       	mov    $0x12,%eax
 657:	cd 40                	int    $0x40
 659:	c3                   	ret    

0000065a <fstat>:
 65a:	b8 08 00 00 00       	mov    $0x8,%eax
 65f:	cd 40                	int    $0x40
 661:	c3                   	ret    

00000662 <link>:
 662:	b8 13 00 00 00       	mov    $0x13,%eax
 667:	cd 40                	int    $0x40
 669:	c3                   	ret    

0000066a <mkdir>:
 66a:	b8 14 00 00 00       	mov    $0x14,%eax
 66f:	cd 40                	int    $0x40
 671:	c3                   	ret    

00000672 <chdir>:
 672:	b8 09 00 00 00       	mov    $0x9,%eax
 677:	cd 40                	int    $0x40
 679:	c3                   	ret    

0000067a <dup>:
 67a:	b8 0a 00 00 00       	mov    $0xa,%eax
 67f:	cd 40                	int    $0x40
 681:	c3                   	ret    

00000682 <getpid>:
 682:	b8 0b 00 00 00       	mov    $0xb,%eax
 687:	cd 40                	int    $0x40
 689:	c3                   	ret    

0000068a <sbrk>:
 68a:	b8 0c 00 00 00       	mov    $0xc,%eax
 68f:	cd 40                	int    $0x40
 691:	c3                   	ret    

00000692 <sleep>:
 692:	b8 0d 00 00 00       	mov    $0xd,%eax
 697:	cd 40                	int    $0x40
 699:	c3                   	ret    

0000069a <uptime>:
 69a:	b8 0e 00 00 00       	mov    $0xe,%eax
 69f:	cd 40                	int    $0x40
 6a1:	c3                   	ret    

000006a2 <waitpid>:
 6a2:	b8 16 00 00 00       	mov    $0x16,%eax
 6a7:	cd 40                	int    $0x40
 6a9:	c3                   	ret    
 6aa:	66 90                	xchg   %ax,%ax
 6ac:	66 90                	xchg   %ax,%ax
 6ae:	66 90                	xchg   %ax,%ax

000006b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	57                   	push   %edi
 6b4:	56                   	push   %esi
 6b5:	89 c6                	mov    %eax,%esi
 6b7:	53                   	push   %ebx
 6b8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 6bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 6be:	85 db                	test   %ebx,%ebx
 6c0:	74 09                	je     6cb <printint+0x1b>
 6c2:	89 d0                	mov    %edx,%eax
 6c4:	c1 e8 1f             	shr    $0x1f,%eax
 6c7:	84 c0                	test   %al,%al
 6c9:	75 75                	jne    740 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 6cb:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 6cd:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 6d4:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 6d7:	31 ff                	xor    %edi,%edi
 6d9:	89 ce                	mov    %ecx,%esi
 6db:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 6de:	eb 02                	jmp    6e2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
 6e0:	89 cf                	mov    %ecx,%edi
 6e2:	31 d2                	xor    %edx,%edx
 6e4:	f7 f6                	div    %esi
 6e6:	8d 4f 01             	lea    0x1(%edi),%ecx
 6e9:	0f b6 92 26 0d 00 00 	movzbl 0xd26(%edx),%edx
  }while((x /= base) != 0);
 6f0:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 6f2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 6f5:	75 e9                	jne    6e0 <printint+0x30>
  if(neg)
 6f7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 6fa:	89 c8                	mov    %ecx,%eax
 6fc:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
 6ff:	85 d2                	test   %edx,%edx
 701:	74 08                	je     70b <printint+0x5b>
    buf[i++] = '-';
 703:	8d 4f 02             	lea    0x2(%edi),%ecx
 706:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
 70b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 70e:	66 90                	xchg   %ax,%ax
 710:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 715:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 718:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 71f:	00 
 720:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 724:	89 34 24             	mov    %esi,(%esp)
 727:	88 45 d7             	mov    %al,-0x29(%ebp)
 72a:	e8 f3 fe ff ff       	call   622 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 72f:	83 ff ff             	cmp    $0xffffffff,%edi
 732:	75 dc                	jne    710 <printint+0x60>
    putc(fd, buf[i]);
}
 734:	83 c4 4c             	add    $0x4c,%esp
 737:	5b                   	pop    %ebx
 738:	5e                   	pop    %esi
 739:	5f                   	pop    %edi
 73a:	5d                   	pop    %ebp
 73b:	c3                   	ret    
 73c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 740:	89 d0                	mov    %edx,%eax
 742:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 744:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 74b:	eb 87                	jmp    6d4 <printint+0x24>
 74d:	8d 76 00             	lea    0x0(%esi),%esi

00000750 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 754:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 756:	56                   	push   %esi
 757:	53                   	push   %ebx
 758:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 75b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 75e:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 761:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
 764:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
 767:	0f b6 13             	movzbl (%ebx),%edx
 76a:	83 c3 01             	add    $0x1,%ebx
 76d:	84 d2                	test   %dl,%dl
 76f:	75 39                	jne    7aa <printf+0x5a>
 771:	e9 c2 00 00 00       	jmp    838 <printf+0xe8>
 776:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 778:	83 fa 25             	cmp    $0x25,%edx
 77b:	0f 84 bf 00 00 00    	je     840 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 781:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 784:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 78b:	00 
 78c:	89 44 24 04          	mov    %eax,0x4(%esp)
 790:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
 793:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 796:	e8 87 fe ff ff       	call   622 <write>
 79b:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 79e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 7a2:	84 d2                	test   %dl,%dl
 7a4:	0f 84 8e 00 00 00    	je     838 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
 7aa:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 7ac:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
 7af:	74 c7                	je     778 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 7b1:	83 ff 25             	cmp    $0x25,%edi
 7b4:	75 e5                	jne    79b <printf+0x4b>
      if(c == 'd'){
 7b6:	83 fa 64             	cmp    $0x64,%edx
 7b9:	0f 84 31 01 00 00    	je     8f0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 7bf:	25 f7 00 00 00       	and    $0xf7,%eax
 7c4:	83 f8 70             	cmp    $0x70,%eax
 7c7:	0f 84 83 00 00 00    	je     850 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 7cd:	83 fa 73             	cmp    $0x73,%edx
 7d0:	0f 84 a2 00 00 00    	je     878 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 7d6:	83 fa 63             	cmp    $0x63,%edx
 7d9:	0f 84 35 01 00 00    	je     914 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 7df:	83 fa 25             	cmp    $0x25,%edx
 7e2:	0f 84 e0 00 00 00    	je     8c8 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7e8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 7eb:	83 c3 01             	add    $0x1,%ebx
 7ee:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 7f5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7f6:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7f8:	89 44 24 04          	mov    %eax,0x4(%esp)
 7fc:	89 34 24             	mov    %esi,(%esp)
 7ff:	89 55 d0             	mov    %edx,-0x30(%ebp)
 802:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 806:	e8 17 fe ff ff       	call   622 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 80b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 80e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 811:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 818:	00 
 819:	89 44 24 04          	mov    %eax,0x4(%esp)
 81d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
 820:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 823:	e8 fa fd ff ff       	call   622 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 828:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 82c:	84 d2                	test   %dl,%dl
 82e:	0f 85 76 ff ff ff    	jne    7aa <printf+0x5a>
 834:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 838:	83 c4 3c             	add    $0x3c,%esp
 83b:	5b                   	pop    %ebx
 83c:	5e                   	pop    %esi
 83d:	5f                   	pop    %edi
 83e:	5d                   	pop    %ebp
 83f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 840:	bf 25 00 00 00       	mov    $0x25,%edi
 845:	e9 51 ff ff ff       	jmp    79b <printf+0x4b>
 84a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 850:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 853:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 858:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 85a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 861:	8b 10                	mov    (%eax),%edx
 863:	89 f0                	mov    %esi,%eax
 865:	e8 46 fe ff ff       	call   6b0 <printint>
        ap++;
 86a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 86e:	e9 28 ff ff ff       	jmp    79b <printf+0x4b>
 873:	90                   	nop
 874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 878:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
 87b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
 87f:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
 881:	b8 1f 0d 00 00       	mov    $0xd1f,%eax
 886:	85 ff                	test   %edi,%edi
 888:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
 88b:	0f b6 07             	movzbl (%edi),%eax
 88e:	84 c0                	test   %al,%al
 890:	74 2a                	je     8bc <printf+0x16c>
 892:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 898:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 89b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 89e:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8a1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8a8:	00 
 8a9:	89 44 24 04          	mov    %eax,0x4(%esp)
 8ad:	89 34 24             	mov    %esi,(%esp)
 8b0:	e8 6d fd ff ff       	call   622 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 8b5:	0f b6 07             	movzbl (%edi),%eax
 8b8:	84 c0                	test   %al,%al
 8ba:	75 dc                	jne    898 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 8bc:	31 ff                	xor    %edi,%edi
 8be:	e9 d8 fe ff ff       	jmp    79b <printf+0x4b>
 8c3:	90                   	nop
 8c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8c8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 8cb:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8cd:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8d4:	00 
 8d5:	89 44 24 04          	mov    %eax,0x4(%esp)
 8d9:	89 34 24             	mov    %esi,(%esp)
 8dc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 8e0:	e8 3d fd ff ff       	call   622 <write>
 8e5:	e9 b1 fe ff ff       	jmp    79b <printf+0x4b>
 8ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 8f0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 8f8:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 8fb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 902:	8b 10                	mov    (%eax),%edx
 904:	89 f0                	mov    %esi,%eax
 906:	e8 a5 fd ff ff       	call   6b0 <printint>
        ap++;
 90b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 90f:	e9 87 fe ff ff       	jmp    79b <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 914:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 917:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 919:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 91b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 922:	00 
 923:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
 926:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 929:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 92c:	89 44 24 04          	mov    %eax,0x4(%esp)
 930:	e8 ed fc ff ff       	call   622 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 935:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 939:	e9 5d fe ff ff       	jmp    79b <printf+0x4b>
 93e:	66 90                	xchg   %ax,%ax

00000940 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 940:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 941:	a1 f4 0f 00 00       	mov    0xff4,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 946:	89 e5                	mov    %esp,%ebp
 948:	57                   	push   %edi
 949:	56                   	push   %esi
 94a:	53                   	push   %ebx
 94b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 94e:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 950:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 953:	39 d0                	cmp    %edx,%eax
 955:	72 11                	jb     968 <free+0x28>
 957:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 958:	39 c8                	cmp    %ecx,%eax
 95a:	72 04                	jb     960 <free+0x20>
 95c:	39 ca                	cmp    %ecx,%edx
 95e:	72 10                	jb     970 <free+0x30>
 960:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 962:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 964:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 966:	73 f0                	jae    958 <free+0x18>
 968:	39 ca                	cmp    %ecx,%edx
 96a:	72 04                	jb     970 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 96c:	39 c8                	cmp    %ecx,%eax
 96e:	72 f0                	jb     960 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 970:	8b 73 fc             	mov    -0x4(%ebx),%esi
 973:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 976:	39 cf                	cmp    %ecx,%edi
 978:	74 1e                	je     998 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 97a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
 97d:	8b 48 04             	mov    0x4(%eax),%ecx
 980:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 983:	39 f2                	cmp    %esi,%edx
 985:	74 28                	je     9af <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 987:	89 10                	mov    %edx,(%eax)
  freep = p;
 989:	a3 f4 0f 00 00       	mov    %eax,0xff4
}
 98e:	5b                   	pop    %ebx
 98f:	5e                   	pop    %esi
 990:	5f                   	pop    %edi
 991:	5d                   	pop    %ebp
 992:	c3                   	ret    
 993:	90                   	nop
 994:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 998:	03 71 04             	add    0x4(%ecx),%esi
 99b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 99e:	8b 08                	mov    (%eax),%ecx
 9a0:	8b 09                	mov    (%ecx),%ecx
 9a2:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9a5:	8b 48 04             	mov    0x4(%eax),%ecx
 9a8:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 9ab:	39 f2                	cmp    %esi,%edx
 9ad:	75 d8                	jne    987 <free+0x47>
    p->s.size += bp->s.size;
 9af:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 9b2:	a3 f4 0f 00 00       	mov    %eax,0xff4
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 9b7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 9ba:	8b 53 f8             	mov    -0x8(%ebx),%edx
 9bd:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9bf:	5b                   	pop    %ebx
 9c0:	5e                   	pop    %esi
 9c1:	5f                   	pop    %edi
 9c2:	5d                   	pop    %ebp
 9c3:	c3                   	ret    
 9c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 9ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000009d0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9d0:	55                   	push   %ebp
 9d1:	89 e5                	mov    %esp,%ebp
 9d3:	57                   	push   %edi
 9d4:	56                   	push   %esi
 9d5:	53                   	push   %ebx
 9d6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9d9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9dc:	8b 1d f4 0f 00 00    	mov    0xff4,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9e2:	8d 48 07             	lea    0x7(%eax),%ecx
 9e5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
 9e8:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9ea:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
 9ed:	0f 84 9b 00 00 00    	je     a8e <malloc+0xbe>
 9f3:	8b 13                	mov    (%ebx),%edx
 9f5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 9f8:	39 fe                	cmp    %edi,%esi
 9fa:	76 64                	jbe    a60 <malloc+0x90>
 9fc:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 a03:	bb 00 80 00 00       	mov    $0x8000,%ebx
 a08:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a0b:	eb 0e                	jmp    a1b <malloc+0x4b>
 a0d:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a10:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a12:	8b 78 04             	mov    0x4(%eax),%edi
 a15:	39 fe                	cmp    %edi,%esi
 a17:	76 4f                	jbe    a68 <malloc+0x98>
 a19:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a1b:	3b 15 f4 0f 00 00    	cmp    0xff4,%edx
 a21:	75 ed                	jne    a10 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
 a23:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 a26:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 a2c:	bf 00 10 00 00       	mov    $0x1000,%edi
 a31:	0f 43 fe             	cmovae %esi,%edi
 a34:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 a37:	89 04 24             	mov    %eax,(%esp)
 a3a:	e8 4b fc ff ff       	call   68a <sbrk>
  if(p == (char*)-1)
 a3f:	83 f8 ff             	cmp    $0xffffffff,%eax
 a42:	74 18                	je     a5c <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 a44:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
 a47:	83 c0 08             	add    $0x8,%eax
 a4a:	89 04 24             	mov    %eax,(%esp)
 a4d:	e8 ee fe ff ff       	call   940 <free>
  return freep;
 a52:	8b 15 f4 0f 00 00    	mov    0xff4,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 a58:	85 d2                	test   %edx,%edx
 a5a:	75 b4                	jne    a10 <malloc+0x40>
        return 0;
 a5c:	31 c0                	xor    %eax,%eax
 a5e:	eb 20                	jmp    a80 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 a60:	89 d0                	mov    %edx,%eax
 a62:	89 da                	mov    %ebx,%edx
 a64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 a68:	39 fe                	cmp    %edi,%esi
 a6a:	74 1c                	je     a88 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 a6c:	29 f7                	sub    %esi,%edi
 a6e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
 a71:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
 a74:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
 a77:	89 15 f4 0f 00 00    	mov    %edx,0xff4
      return (void*)(p + 1);
 a7d:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 a80:	83 c4 1c             	add    $0x1c,%esp
 a83:	5b                   	pop    %ebx
 a84:	5e                   	pop    %esi
 a85:	5f                   	pop    %edi
 a86:	5d                   	pop    %ebp
 a87:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 a88:	8b 08                	mov    (%eax),%ecx
 a8a:	89 0a                	mov    %ecx,(%edx)
 a8c:	eb e9                	jmp    a77 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 a8e:	c7 05 f4 0f 00 00 f8 	movl   $0xff8,0xff4
 a95:	0f 00 00 
    base.s.size = 0;
 a98:	ba f8 0f 00 00       	mov    $0xff8,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 a9d:	c7 05 f8 0f 00 00 f8 	movl   $0xff8,0xff8
 aa4:	0f 00 00 
    base.s.size = 0;
 aa7:	c7 05 fc 0f 00 00 00 	movl   $0x0,0xffc
 aae:	00 00 00 
 ab1:	e9 46 ff ff ff       	jmp    9fc <malloc+0x2c>
