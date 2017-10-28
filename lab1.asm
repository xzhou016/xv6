
_lab1:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "user.h"

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	8b 59 04             	mov    0x4(%ecx),%ebx
	
	int exitWait(void);
	int waitPid(void);
	//int PScheduler(void);

  printf(1, "\n This program tests the correctness of your lab#1\n");
  12:	83 ec 08             	sub    $0x8,%esp
  15:	68 70 0b 00 00       	push   $0xb70
  1a:	6a 01                	push   $0x1
  1c:	e8 7f 06 00 00       	call   6a0 <printf>
  
  if (atoi(argv[1]) == 1)
  21:	5a                   	pop    %edx
  22:	ff 73 04             	pushl  0x4(%ebx)
  25:	e8 b6 04 00 00       	call   4e0 <atoi>
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	83 f8 01             	cmp    $0x1,%eax
  30:	74 3a                	je     6c <main+0x6c>
	exitWait();
  else if (atoi(argv[1]) == 2)
  32:	83 ec 0c             	sub    $0xc,%esp
  35:	ff 73 04             	pushl  0x4(%ebx)
  38:	e8 a3 04 00 00       	call   4e0 <atoi>
  3d:	83 c4 10             	add    $0x10,%esp
  40:	83 f8 02             	cmp    $0x2,%eax
  43:	74 2e                	je     73 <main+0x73>
	waitPid();
  //else if (atoi(argv[1]) == 3)
	//PScheduler();
  else 
   printf(1, "\ntype \"lab1 1\" to test exit and wait, \"lab1 2\" to test waitpid and \"lab1 3\" to test the priority scheduler \n");
  45:	50                   	push   %eax
  46:	50                   	push   %eax
  47:	68 a4 0b 00 00       	push   $0xba4
  4c:	6a 01                	push   $0x1
  4e:	e8 4d 06 00 00       	call   6a0 <printf>
  53:	83 c4 10             	add    $0x10,%esp
  
    // End of test
	 exit(0);
  56:	83 ec 0c             	sub    $0xc,%esp
  59:	6a 00                	push   $0x0
  5b:	e8 f2 04 00 00       	call   552 <exit>
 }
  60:	8d 65 f8             	lea    -0x8(%ebp),%esp
  63:	31 c0                	xor    %eax,%eax
  65:	59                   	pop    %ecx
  66:	5b                   	pop    %ebx
  67:	5d                   	pop    %ebp
  68:	8d 61 fc             	lea    -0x4(%ecx),%esp
  6b:	c3                   	ret    
	exitWait();
  6c:	e8 0f 00 00 00       	call   80 <exitWait>
  71:	eb e3                	jmp    56 <main+0x56>
	waitPid();
  73:	e8 e8 00 00 00       	call   160 <waitPid>
  78:	eb dc                	jmp    56 <main+0x56>
  7a:	66 90                	xchg   %ax,%ax
  7c:	66 90                	xchg   %ax,%ax
  7e:	66 90                	xchg   %ax,%ax

00000080 <exitWait>:
  
  
int exitWait(void) {
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	53                   	push   %ebx
	  int pid, ret_pid, exit_status;
       int i;
  // use this part to test exit(int status) and wait(int* status)
 
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");
  84:	bb 01 00 00 00       	mov    $0x1,%ebx
int exitWait(void) {
  89:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "\n  Step 1: testing exit(int status) and wait(int* status):\n");
  8c:	68 c0 09 00 00       	push   $0x9c0
  91:	6a 01                	push   $0x1
  93:	e8 08 06 00 00       	call   6a0 <printf>
  98:	83 c4 10             	add    $0x10,%esp

  for (i = 0; i < 2; i++) {
    pid = fork();
  9b:	e8 aa 04 00 00       	call   54a <fork>
    if (pid == 0) { // only the child executed this code
  a0:	83 f8 00             	cmp    $0x0,%eax
  a3:	75 3b                	jne    e0 <exitWait+0x60>
      if (i == 0)
  a5:	83 fb 01             	cmp    $0x1,%ebx
  a8:	0f 84 82 00 00 00    	je     130 <exitWait+0xb0>
      printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
      exit(0);
  }
      else
      {
	 printf(1, "\nThis is child with PID# %d and I will exit with status %d\n" ,getpid(), -1);
  ae:	e8 1f 05 00 00       	call   5d2 <getpid>
  b3:	6a ff                	push   $0xffffffff
  b5:	50                   	push   %eax
  b6:	68 fc 09 00 00       	push   $0x9fc
  bb:	6a 01                	push   $0x1
  bd:	e8 de 05 00 00       	call   6a0 <printf>
      exit(-1);
  c2:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
  c9:	e8 84 04 00 00       	call   552 <exit>
  ce:	83 c4 10             	add    $0x10,%esp
  for (i = 0; i < 2; i++) {
  d1:	83 fb 02             	cmp    $0x2,%ebx
  d4:	75 30                	jne    106 <exitWait+0x86>
	  printf(2, "\nError using fork\n");
      exit(-1);
    }
  }
  return 0;
}
  d6:	31 c0                	xor    %eax,%eax
  d8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  db:	c9                   	leave  
  dc:	c3                   	ret    
  dd:	8d 76 00             	lea    0x0(%esi),%esi
    } else if (pid > 0) { // only the parent exeecutes this code
  e0:	7e 2e                	jle    110 <exitWait+0x90>
      ret_pid = wait(&exit_status);
  e2:	8d 45 f4             	lea    -0xc(%ebp),%eax
  e5:	83 ec 0c             	sub    $0xc,%esp
  e8:	50                   	push   %eax
  e9:	e8 6c 04 00 00       	call   55a <wait>
      printf(1, "\n This is the parent: child with PID# %d has exited with status %d\n", ret_pid, exit_status);
  ee:	ff 75 f4             	pushl  -0xc(%ebp)
  f1:	50                   	push   %eax
  f2:	68 38 0a 00 00       	push   $0xa38
  f7:	6a 01                	push   $0x1
  f9:	e8 a2 05 00 00       	call   6a0 <printf>
  fe:	83 c4 20             	add    $0x20,%esp
  for (i = 0; i < 2; i++) {
 101:	83 fb 02             	cmp    $0x2,%ebx
 104:	74 d0                	je     d6 <exitWait+0x56>
 106:	83 c3 01             	add    $0x1,%ebx
 109:	eb 90                	jmp    9b <exitWait+0x1b>
 10b:	90                   	nop
 10c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	  printf(2, "\nError using fork\n");
 110:	83 ec 08             	sub    $0x8,%esp
 113:	68 14 0c 00 00       	push   $0xc14
 118:	6a 02                	push   $0x2
 11a:	e8 81 05 00 00       	call   6a0 <printf>
      exit(-1);
 11f:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 126:	e8 27 04 00 00       	call   552 <exit>
 12b:	83 c4 10             	add    $0x10,%esp
 12e:	eb a1                	jmp    d1 <exitWait+0x51>
      printf(1, "\nThis is child with PID# %d and I will exit with status %d\n", getpid(), 0);
 130:	e8 9d 04 00 00       	call   5d2 <getpid>
 135:	6a 00                	push   $0x0
 137:	50                   	push   %eax
 138:	68 fc 09 00 00       	push   $0x9fc
 13d:	6a 01                	push   $0x1
 13f:	e8 5c 05 00 00       	call   6a0 <printf>
      exit(0);
 144:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 14b:	e8 02 04 00 00       	call   552 <exit>
 150:	83 c4 10             	add    $0x10,%esp
 153:	eb b1                	jmp    106 <exitWait+0x86>
 155:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000160 <waitPid>:

int waitPid(void){
 160:	55                   	push   %ebp
 161:	89 e5                	mov    %esp,%ebp
 163:	56                   	push   %esi
 164:	53                   	push   %ebx
  int pid_a[5]={0, 0, 0, 0, 0};
 // use this part to test wait(int pid, int* status, int options)

 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");

  for (i = 0; i <5; i++) {
 165:	31 db                	xor    %ebx,%ebx
int waitPid(void){
 167:	83 ec 28             	sub    $0x28,%esp
  int pid_a[5]={0, 0, 0, 0, 0};
 16a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 171:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");
 178:	68 7c 0a 00 00       	push   $0xa7c
 17d:	6a 01                	push   $0x1
  int pid_a[5]={0, 0, 0, 0, 0};
 17f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 186:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 18d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 printf(1, "\n  Step 2: testing waitpid(int pid, int* status, int options):\n");
 194:	e8 07 05 00 00       	call   6a0 <printf>
 199:	83 c4 10             	add    $0x10,%esp
    pid_a[i] = fork();
 19c:	e8 a9 03 00 00       	call   54a <fork>
	
    if (pid_a[i] == 0) { // only the child executed this code
 1a1:	85 c0                	test   %eax,%eax
    pid_a[i] = fork();
 1a3:	89 44 9d e4          	mov    %eax,-0x1c(%ebp,%ebx,4)
    if (pid_a[i] == 0) { // only the child executed this code
 1a7:	0f 84 33 01 00 00    	je     2e0 <waitPid+0x180>
  for (i = 0; i <5; i++) {
 1ad:	83 c3 01             	add    $0x1,%ebx
 1b0:	83 fb 05             	cmp    $0x5,%ebx
 1b3:	75 e7                	jne    19c <waitPid+0x3c>
     
      
      printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), 0);
      exit(0);}}
       
      sleep(5);
 1b5:	83 ec 0c             	sub    $0xc,%esp
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
      ret_pid = waitpid(pid_a[3], &exit_status, 0);
 1b8:	8d 5d e0             	lea    -0x20(%ebp),%ebx
      sleep(5);
 1bb:	6a 05                	push   $0x5
 1bd:	e8 20 04 00 00       	call   5e2 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[3]);
 1c2:	8b 75 f0             	mov    -0x10(%ebp),%esi
 1c5:	83 c4 0c             	add    $0xc,%esp
 1c8:	56                   	push   %esi
 1c9:	68 f8 0a 00 00       	push   $0xaf8
 1ce:	6a 01                	push   $0x1
 1d0:	e8 cb 04 00 00       	call   6a0 <printf>
      ret_pid = waitpid(pid_a[3], &exit_status, 0);
 1d5:	83 c4 0c             	add    $0xc,%esp
 1d8:	6a 00                	push   $0x0
 1da:	53                   	push   %ebx
 1db:	56                   	push   %esi
 1dc:	e8 11 04 00 00       	call   5f2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 1e1:	ff 75 e0             	pushl  -0x20(%ebp)
 1e4:	50                   	push   %eax
 1e5:	68 34 0b 00 00       	push   $0xb34
 1ea:	6a 01                	push   $0x1
 1ec:	e8 af 04 00 00       	call   6a0 <printf>
      sleep(5);
 1f1:	83 c4 14             	add    $0x14,%esp
 1f4:	6a 05                	push   $0x5
 1f6:	e8 e7 03 00 00       	call   5e2 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[1]);
 1fb:	8b 75 e8             	mov    -0x18(%ebp),%esi
 1fe:	83 c4 0c             	add    $0xc,%esp
 201:	56                   	push   %esi
 202:	68 f8 0a 00 00       	push   $0xaf8
 207:	6a 01                	push   $0x1
 209:	e8 92 04 00 00       	call   6a0 <printf>
      ret_pid = waitpid(pid_a[1], &exit_status, 0);
 20e:	83 c4 0c             	add    $0xc,%esp
 211:	6a 00                	push   $0x0
 213:	53                   	push   %ebx
 214:	56                   	push   %esi
 215:	e8 d8 03 00 00       	call   5f2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 21a:	ff 75 e0             	pushl  -0x20(%ebp)
 21d:	50                   	push   %eax
 21e:	68 34 0b 00 00       	push   $0xb34
 223:	6a 01                	push   $0x1
 225:	e8 76 04 00 00       	call   6a0 <printf>
      sleep(5);
 22a:	83 c4 14             	add    $0x14,%esp
 22d:	6a 05                	push   $0x5
 22f:	e8 ae 03 00 00       	call   5e2 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[2]);
 234:	8b 75 ec             	mov    -0x14(%ebp),%esi
 237:	83 c4 0c             	add    $0xc,%esp
 23a:	56                   	push   %esi
 23b:	68 f8 0a 00 00       	push   $0xaf8
 240:	6a 01                	push   $0x1
 242:	e8 59 04 00 00       	call   6a0 <printf>
      ret_pid = waitpid(pid_a[2], &exit_status, 0);
 247:	83 c4 0c             	add    $0xc,%esp
 24a:	6a 00                	push   $0x0
 24c:	53                   	push   %ebx
 24d:	56                   	push   %esi
 24e:	e8 9f 03 00 00       	call   5f2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 253:	ff 75 e0             	pushl  -0x20(%ebp)
 256:	50                   	push   %eax
 257:	68 34 0b 00 00       	push   $0xb34
 25c:	6a 01                	push   $0x1
 25e:	e8 3d 04 00 00       	call   6a0 <printf>
      sleep(5);
 263:	83 c4 14             	add    $0x14,%esp
 266:	6a 05                	push   $0x5
 268:	e8 75 03 00 00       	call   5e2 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[0]);
 26d:	8b 75 e4             	mov    -0x1c(%ebp),%esi
 270:	83 c4 0c             	add    $0xc,%esp
 273:	56                   	push   %esi
 274:	68 f8 0a 00 00       	push   $0xaf8
 279:	6a 01                	push   $0x1
 27b:	e8 20 04 00 00       	call   6a0 <printf>
      ret_pid = waitpid(pid_a[0], &exit_status, 0);
 280:	83 c4 0c             	add    $0xc,%esp
 283:	6a 00                	push   $0x0
 285:	53                   	push   %ebx
 286:	56                   	push   %esi
 287:	e8 66 03 00 00       	call   5f2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 28c:	ff 75 e0             	pushl  -0x20(%ebp)
 28f:	50                   	push   %eax
 290:	68 34 0b 00 00       	push   $0xb34
 295:	6a 01                	push   $0x1
 297:	e8 04 04 00 00       	call   6a0 <printf>
      sleep(5);
 29c:	83 c4 14             	add    $0x14,%esp
 29f:	6a 05                	push   $0x5
 2a1:	e8 3c 03 00 00       	call   5e2 <sleep>
      printf(1, "\n This is the parent: Now waiting for child with PID# %d\n",pid_a[4]);
 2a6:	8b 75 f4             	mov    -0xc(%ebp),%esi
 2a9:	83 c4 0c             	add    $0xc,%esp
 2ac:	56                   	push   %esi
 2ad:	68 f8 0a 00 00       	push   $0xaf8
 2b2:	6a 01                	push   $0x1
 2b4:	e8 e7 03 00 00       	call   6a0 <printf>
      ret_pid = waitpid(pid_a[4], &exit_status, 0);
 2b9:	83 c4 0c             	add    $0xc,%esp
 2bc:	6a 00                	push   $0x0
 2be:	53                   	push   %ebx
 2bf:	56                   	push   %esi
 2c0:	e8 2d 03 00 00       	call   5f2 <waitpid>
      printf(1, "\n This is the partent: Child# %d has exited with status %d\n",ret_pid, exit_status);
 2c5:	ff 75 e0             	pushl  -0x20(%ebp)
 2c8:	50                   	push   %eax
 2c9:	68 34 0b 00 00       	push   $0xb34
 2ce:	6a 01                	push   $0x1
 2d0:	e8 cb 03 00 00       	call   6a0 <printf>
      
      return 0;
  }
 2d5:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2d8:	31 c0                	xor    %eax,%eax
 2da:	5b                   	pop    %ebx
 2db:	5e                   	pop    %esi
 2dc:	5d                   	pop    %ebp
 2dd:	c3                   	ret    
 2de:	66 90                	xchg   %ax,%ax
      printf(1, "\n The is child with PID# %d and I will exit with status %d\n", getpid(), 0);
 2e0:	e8 ed 02 00 00       	call   5d2 <getpid>
 2e5:	6a 00                	push   $0x0
 2e7:	50                   	push   %eax
 2e8:	68 bc 0a 00 00       	push   $0xabc
 2ed:	6a 01                	push   $0x1
 2ef:	e8 ac 03 00 00       	call   6a0 <printf>
      exit(0);}}
 2f4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2fb:	e8 52 02 00 00       	call   552 <exit>
 300:	83 c4 10             	add    $0x10,%esp
 303:	e9 a5 fe ff ff       	jmp    1ad <waitPid+0x4d>
 308:	66 90                	xchg   %ax,%ax
 30a:	66 90                	xchg   %ax,%ax
 30c:	66 90                	xchg   %ax,%ax
 30e:	66 90                	xchg   %ax,%ax

00000310 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	53                   	push   %ebx
 314:	8b 45 08             	mov    0x8(%ebp),%eax
 317:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 31a:	89 c2                	mov    %eax,%edx
 31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 320:	83 c1 01             	add    $0x1,%ecx
 323:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 327:	83 c2 01             	add    $0x1,%edx
 32a:	84 db                	test   %bl,%bl
 32c:	88 5a ff             	mov    %bl,-0x1(%edx)
 32f:	75 ef                	jne    320 <strcpy+0x10>
    ;
  return os;
}
 331:	5b                   	pop    %ebx
 332:	5d                   	pop    %ebp
 333:	c3                   	ret    
 334:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 33a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000340 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	56                   	push   %esi
 344:	53                   	push   %ebx
 345:	8b 55 08             	mov    0x8(%ebp),%edx
 348:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 34b:	0f b6 02             	movzbl (%edx),%eax
 34e:	0f b6 19             	movzbl (%ecx),%ebx
 351:	84 c0                	test   %al,%al
 353:	75 1e                	jne    373 <strcmp+0x33>
 355:	eb 29                	jmp    380 <strcmp+0x40>
 357:	89 f6                	mov    %esi,%esi
 359:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 360:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 363:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 366:	8d 71 01             	lea    0x1(%ecx),%esi
  while(*p && *p == *q)
 369:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 36d:	84 c0                	test   %al,%al
 36f:	74 0f                	je     380 <strcmp+0x40>
 371:	89 f1                	mov    %esi,%ecx
 373:	38 d8                	cmp    %bl,%al
 375:	74 e9                	je     360 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 377:	29 d8                	sub    %ebx,%eax
}
 379:	5b                   	pop    %ebx
 37a:	5e                   	pop    %esi
 37b:	5d                   	pop    %ebp
 37c:	c3                   	ret    
 37d:	8d 76 00             	lea    0x0(%esi),%esi
  while(*p && *p == *q)
 380:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 382:	29 d8                	sub    %ebx,%eax
}
 384:	5b                   	pop    %ebx
 385:	5e                   	pop    %esi
 386:	5d                   	pop    %ebp
 387:	c3                   	ret    
 388:	90                   	nop
 389:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000390 <strlen>:

uint
strlen(char *s)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 396:	80 39 00             	cmpb   $0x0,(%ecx)
 399:	74 12                	je     3ad <strlen+0x1d>
 39b:	31 d2                	xor    %edx,%edx
 39d:	8d 76 00             	lea    0x0(%esi),%esi
 3a0:	83 c2 01             	add    $0x1,%edx
 3a3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 3a7:	89 d0                	mov    %edx,%eax
 3a9:	75 f5                	jne    3a0 <strlen+0x10>
    ;
  return n;
}
 3ab:	5d                   	pop    %ebp
 3ac:	c3                   	ret    
  for(n = 0; s[n]; n++)
 3ad:	31 c0                	xor    %eax,%eax
}
 3af:	5d                   	pop    %ebp
 3b0:	c3                   	ret    
 3b1:	eb 0d                	jmp    3c0 <memset>
 3b3:	90                   	nop
 3b4:	90                   	nop
 3b5:	90                   	nop
 3b6:	90                   	nop
 3b7:	90                   	nop
 3b8:	90                   	nop
 3b9:	90                   	nop
 3ba:	90                   	nop
 3bb:	90                   	nop
 3bc:	90                   	nop
 3bd:	90                   	nop
 3be:	90                   	nop
 3bf:	90                   	nop

000003c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	57                   	push   %edi
 3c4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 3cd:	89 d7                	mov    %edx,%edi
 3cf:	fc                   	cld    
 3d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3d2:	89 d0                	mov    %edx,%eax
 3d4:	5f                   	pop    %edi
 3d5:	5d                   	pop    %ebp
 3d6:	c3                   	ret    
 3d7:	89 f6                	mov    %esi,%esi
 3d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003e0 <strchr>:

char*
strchr(const char *s, char c)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	53                   	push   %ebx
 3e4:	8b 45 08             	mov    0x8(%ebp),%eax
 3e7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 3ea:	0f b6 10             	movzbl (%eax),%edx
 3ed:	84 d2                	test   %dl,%dl
 3ef:	74 1d                	je     40e <strchr+0x2e>
    if(*s == c)
 3f1:	38 d3                	cmp    %dl,%bl
 3f3:	89 d9                	mov    %ebx,%ecx
 3f5:	75 0d                	jne    404 <strchr+0x24>
 3f7:	eb 17                	jmp    410 <strchr+0x30>
 3f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 400:	38 ca                	cmp    %cl,%dl
 402:	74 0c                	je     410 <strchr+0x30>
  for(; *s; s++)
 404:	83 c0 01             	add    $0x1,%eax
 407:	0f b6 10             	movzbl (%eax),%edx
 40a:	84 d2                	test   %dl,%dl
 40c:	75 f2                	jne    400 <strchr+0x20>
      return (char*)s;
  return 0;
 40e:	31 c0                	xor    %eax,%eax
}
 410:	5b                   	pop    %ebx
 411:	5d                   	pop    %ebp
 412:	c3                   	ret    
 413:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 419:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000420 <gets>:

char*
gets(char *buf, int max)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	56                   	push   %esi
 425:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 426:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 428:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 42b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 42e:	eb 29                	jmp    459 <gets+0x39>
    cc = read(0, &c, 1);
 430:	83 ec 04             	sub    $0x4,%esp
 433:	6a 01                	push   $0x1
 435:	57                   	push   %edi
 436:	6a 00                	push   $0x0
 438:	e8 2d 01 00 00       	call   56a <read>
    if(cc < 1)
 43d:	83 c4 10             	add    $0x10,%esp
 440:	85 c0                	test   %eax,%eax
 442:	7e 1d                	jle    461 <gets+0x41>
      break;
    buf[i++] = c;
 444:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 448:	8b 55 08             	mov    0x8(%ebp),%edx
 44b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 44d:	3c 0a                	cmp    $0xa,%al
    buf[i++] = c;
 44f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 453:	74 1b                	je     470 <gets+0x50>
 455:	3c 0d                	cmp    $0xd,%al
 457:	74 17                	je     470 <gets+0x50>
  for(i=0; i+1 < max; ){
 459:	8d 5e 01             	lea    0x1(%esi),%ebx
 45c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 45f:	7c cf                	jl     430 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 461:	8b 45 08             	mov    0x8(%ebp),%eax
 464:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 468:	8d 65 f4             	lea    -0xc(%ebp),%esp
 46b:	5b                   	pop    %ebx
 46c:	5e                   	pop    %esi
 46d:	5f                   	pop    %edi
 46e:	5d                   	pop    %ebp
 46f:	c3                   	ret    
  buf[i] = '\0';
 470:	8b 45 08             	mov    0x8(%ebp),%eax
  for(i=0; i+1 < max; ){
 473:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
 475:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 479:	8d 65 f4             	lea    -0xc(%ebp),%esp
 47c:	5b                   	pop    %ebx
 47d:	5e                   	pop    %esi
 47e:	5f                   	pop    %edi
 47f:	5d                   	pop    %ebp
 480:	c3                   	ret    
 481:	eb 0d                	jmp    490 <stat>
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

00000490 <stat>:

int
stat(char *n, struct stat *st)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	56                   	push   %esi
 494:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 495:	83 ec 08             	sub    $0x8,%esp
 498:	6a 00                	push   $0x0
 49a:	ff 75 08             	pushl  0x8(%ebp)
 49d:	e8 f0 00 00 00       	call   592 <open>
  if(fd < 0)
 4a2:	83 c4 10             	add    $0x10,%esp
 4a5:	85 c0                	test   %eax,%eax
 4a7:	78 27                	js     4d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4a9:	83 ec 08             	sub    $0x8,%esp
 4ac:	ff 75 0c             	pushl  0xc(%ebp)
 4af:	89 c3                	mov    %eax,%ebx
 4b1:	50                   	push   %eax
 4b2:	e8 f3 00 00 00       	call   5aa <fstat>
  close(fd);
 4b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4ba:	89 c6                	mov    %eax,%esi
  close(fd);
 4bc:	e8 b9 00 00 00       	call   57a <close>
  return r;
 4c1:	83 c4 10             	add    $0x10,%esp
}
 4c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4c7:	89 f0                	mov    %esi,%eax
 4c9:	5b                   	pop    %ebx
 4ca:	5e                   	pop    %esi
 4cb:	5d                   	pop    %ebp
 4cc:	c3                   	ret    
 4cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4d5:	eb ed                	jmp    4c4 <stat+0x34>
 4d7:	89 f6                	mov    %esi,%esi
 4d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004e0 <atoi>:

int
atoi(const char *s)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	53                   	push   %ebx
 4e4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4e7:	0f be 11             	movsbl (%ecx),%edx
 4ea:	8d 42 d0             	lea    -0x30(%edx),%eax
 4ed:	3c 09                	cmp    $0x9,%al
 4ef:	b8 00 00 00 00       	mov    $0x0,%eax
 4f4:	77 1f                	ja     515 <atoi+0x35>
 4f6:	8d 76 00             	lea    0x0(%esi),%esi
 4f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 500:	8d 04 80             	lea    (%eax,%eax,4),%eax
 503:	83 c1 01             	add    $0x1,%ecx
 506:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 50a:	0f be 11             	movsbl (%ecx),%edx
 50d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 510:	80 fb 09             	cmp    $0x9,%bl
 513:	76 eb                	jbe    500 <atoi+0x20>
  return n;
}
 515:	5b                   	pop    %ebx
 516:	5d                   	pop    %ebp
 517:	c3                   	ret    
 518:	90                   	nop
 519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000520 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	56                   	push   %esi
 524:	53                   	push   %ebx
 525:	8b 5d 10             	mov    0x10(%ebp),%ebx
 528:	8b 45 08             	mov    0x8(%ebp),%eax
 52b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 52e:	85 db                	test   %ebx,%ebx
 530:	7e 14                	jle    546 <memmove+0x26>
 532:	31 d2                	xor    %edx,%edx
 534:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 538:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 53c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 53f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 542:	39 da                	cmp    %ebx,%edx
 544:	75 f2                	jne    538 <memmove+0x18>
  return vdst;
}
 546:	5b                   	pop    %ebx
 547:	5e                   	pop    %esi
 548:	5d                   	pop    %ebp
 549:	c3                   	ret    

0000054a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 54a:	b8 01 00 00 00       	mov    $0x1,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    

00000552 <exit>:
SYSCALL(exit)
 552:	b8 02 00 00 00       	mov    $0x2,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    

0000055a <wait>:
SYSCALL(wait)
 55a:	b8 03 00 00 00       	mov    $0x3,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    

00000562 <pipe>:
SYSCALL(pipe)
 562:	b8 04 00 00 00       	mov    $0x4,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    

0000056a <read>:
SYSCALL(read)
 56a:	b8 05 00 00 00       	mov    $0x5,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <write>:
SYSCALL(write)
 572:	b8 10 00 00 00       	mov    $0x10,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <close>:
SYSCALL(close)
 57a:	b8 15 00 00 00       	mov    $0x15,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <kill>:
SYSCALL(kill)
 582:	b8 06 00 00 00       	mov    $0x6,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <exec>:
SYSCALL(exec)
 58a:	b8 07 00 00 00       	mov    $0x7,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <open>:
SYSCALL(open)
 592:	b8 0f 00 00 00       	mov    $0xf,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <mknod>:
SYSCALL(mknod)
 59a:	b8 11 00 00 00       	mov    $0x11,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <unlink>:
SYSCALL(unlink)
 5a2:	b8 12 00 00 00       	mov    $0x12,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <fstat>:
SYSCALL(fstat)
 5aa:	b8 08 00 00 00       	mov    $0x8,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <link>:
SYSCALL(link)
 5b2:	b8 13 00 00 00       	mov    $0x13,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <mkdir>:
SYSCALL(mkdir)
 5ba:	b8 14 00 00 00       	mov    $0x14,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <chdir>:
SYSCALL(chdir)
 5c2:	b8 09 00 00 00       	mov    $0x9,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <dup>:
SYSCALL(dup)
 5ca:	b8 0a 00 00 00       	mov    $0xa,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <getpid>:
SYSCALL(getpid)
 5d2:	b8 0b 00 00 00       	mov    $0xb,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <sbrk>:
SYSCALL(sbrk)
 5da:	b8 0c 00 00 00       	mov    $0xc,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <sleep>:
SYSCALL(sleep)
 5e2:	b8 0d 00 00 00       	mov    $0xd,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <uptime>:
SYSCALL(uptime)
 5ea:	b8 0e 00 00 00       	mov    $0xe,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <waitpid>:
SYSCALL(waitpid)
 5f2:	b8 16 00 00 00       	mov    $0x16,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    
 5fa:	66 90                	xchg   %ax,%ax
 5fc:	66 90                	xchg   %ax,%ax
 5fe:	66 90                	xchg   %ax,%ax

00000600 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	56                   	push   %esi
 605:	53                   	push   %ebx
 606:	89 c6                	mov    %eax,%esi
 608:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 60b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 60e:	85 db                	test   %ebx,%ebx
 610:	74 7e                	je     690 <printint+0x90>
 612:	89 d0                	mov    %edx,%eax
 614:	c1 e8 1f             	shr    $0x1f,%eax
 617:	84 c0                	test   %al,%al
 619:	74 75                	je     690 <printint+0x90>
    neg = 1;
    x = -xx;
 61b:	89 d0                	mov    %edx,%eax
    neg = 1;
 61d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 624:	f7 d8                	neg    %eax
 626:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 629:	31 ff                	xor    %edi,%edi
 62b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 62e:	89 ce                	mov    %ecx,%esi
 630:	eb 08                	jmp    63a <printint+0x3a>
 632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 638:	89 cf                	mov    %ecx,%edi
 63a:	31 d2                	xor    %edx,%edx
 63c:	8d 4f 01             	lea    0x1(%edi),%ecx
 63f:	f7 f6                	div    %esi
 641:	0f b6 92 30 0c 00 00 	movzbl 0xc30(%edx),%edx
  }while((x /= base) != 0);
 648:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 64a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 64d:	75 e9                	jne    638 <printint+0x38>
  if(neg)
 64f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 652:	8b 75 c0             	mov    -0x40(%ebp),%esi
 655:	85 c0                	test   %eax,%eax
 657:	74 08                	je     661 <printint+0x61>
    buf[i++] = '-';
 659:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 65e:	8d 4f 02             	lea    0x2(%edi),%ecx

  while(--i >= 0)
 661:	8d 79 ff             	lea    -0x1(%ecx),%edi
 664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 668:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
  write(fd, &c, 1);
 66d:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
 670:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
 673:	6a 01                	push   $0x1
 675:	53                   	push   %ebx
 676:	56                   	push   %esi
 677:	88 45 d7             	mov    %al,-0x29(%ebp)
 67a:	e8 f3 fe ff ff       	call   572 <write>
  while(--i >= 0)
 67f:	83 c4 10             	add    $0x10,%esp
 682:	83 ff ff             	cmp    $0xffffffff,%edi
 685:	75 e1                	jne    668 <printint+0x68>
    putc(fd, buf[i]);
}
 687:	8d 65 f4             	lea    -0xc(%ebp),%esp
 68a:	5b                   	pop    %ebx
 68b:	5e                   	pop    %esi
 68c:	5f                   	pop    %edi
 68d:	5d                   	pop    %ebp
 68e:	c3                   	ret    
 68f:	90                   	nop
    x = xx;
 690:	89 d0                	mov    %edx,%eax
  neg = 0;
 692:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 699:	eb 8b                	jmp    626 <printint+0x26>
 69b:	90                   	nop
 69c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	57                   	push   %edi
 6a4:	56                   	push   %esi
 6a5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6a6:	8d 45 10             	lea    0x10(%ebp),%eax
{
 6a9:	83 ec 2c             	sub    $0x2c,%esp
  for(i = 0; fmt[i]; i++){
 6ac:	8b 75 0c             	mov    0xc(%ebp),%esi
{
 6af:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
 6b2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6b5:	0f b6 1e             	movzbl (%esi),%ebx
 6b8:	83 c6 01             	add    $0x1,%esi
 6bb:	84 db                	test   %bl,%bl
 6bd:	0f 84 b0 00 00 00    	je     773 <printf+0xd3>
 6c3:	31 d2                	xor    %edx,%edx
 6c5:	eb 39                	jmp    700 <printf+0x60>
 6c7:	89 f6                	mov    %esi,%esi
 6c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 6d0:	83 f8 25             	cmp    $0x25,%eax
 6d3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 6d6:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 6db:	74 18                	je     6f5 <printf+0x55>
  write(fd, &c, 1);
 6dd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 6e0:	83 ec 04             	sub    $0x4,%esp
 6e3:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 6e6:	6a 01                	push   $0x1
 6e8:	50                   	push   %eax
 6e9:	57                   	push   %edi
 6ea:	e8 83 fe ff ff       	call   572 <write>
 6ef:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 6f2:	83 c4 10             	add    $0x10,%esp
 6f5:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 6f8:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 6fc:	84 db                	test   %bl,%bl
 6fe:	74 73                	je     773 <printf+0xd3>
    if(state == 0){
 700:	85 d2                	test   %edx,%edx
    c = fmt[i] & 0xff;
 702:	0f be cb             	movsbl %bl,%ecx
 705:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 708:	74 c6                	je     6d0 <printf+0x30>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 70a:	83 fa 25             	cmp    $0x25,%edx
 70d:	75 e6                	jne    6f5 <printf+0x55>
      if(c == 'd'){
 70f:	83 f8 64             	cmp    $0x64,%eax
 712:	0f 84 f8 00 00 00    	je     810 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 718:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 71e:	83 f9 70             	cmp    $0x70,%ecx
 721:	74 5d                	je     780 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 723:	83 f8 73             	cmp    $0x73,%eax
 726:	0f 84 84 00 00 00    	je     7b0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 72c:	83 f8 63             	cmp    $0x63,%eax
 72f:	0f 84 ea 00 00 00    	je     81f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 735:	83 f8 25             	cmp    $0x25,%eax
 738:	0f 84 c2 00 00 00    	je     800 <printf+0x160>
  write(fd, &c, 1);
 73e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 741:	83 ec 04             	sub    $0x4,%esp
 744:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 748:	6a 01                	push   $0x1
 74a:	50                   	push   %eax
 74b:	57                   	push   %edi
 74c:	e8 21 fe ff ff       	call   572 <write>
 751:	83 c4 0c             	add    $0xc,%esp
 754:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 757:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 75a:	6a 01                	push   $0x1
 75c:	50                   	push   %eax
 75d:	57                   	push   %edi
 75e:	83 c6 01             	add    $0x1,%esi
 761:	e8 0c fe ff ff       	call   572 <write>
  for(i = 0; fmt[i]; i++){
 766:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 76a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 76d:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
 76f:	84 db                	test   %bl,%bl
 771:	75 8d                	jne    700 <printf+0x60>
    }
  }
}
 773:	8d 65 f4             	lea    -0xc(%ebp),%esp
 776:	5b                   	pop    %ebx
 777:	5e                   	pop    %esi
 778:	5f                   	pop    %edi
 779:	5d                   	pop    %ebp
 77a:	c3                   	ret    
 77b:	90                   	nop
 77c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 16, 0);
 780:	83 ec 0c             	sub    $0xc,%esp
 783:	b9 10 00 00 00       	mov    $0x10,%ecx
 788:	6a 00                	push   $0x0
 78a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 78d:	89 f8                	mov    %edi,%eax
 78f:	8b 13                	mov    (%ebx),%edx
 791:	e8 6a fe ff ff       	call   600 <printint>
        ap++;
 796:	89 d8                	mov    %ebx,%eax
 798:	83 c4 10             	add    $0x10,%esp
      state = 0;
 79b:	31 d2                	xor    %edx,%edx
        ap++;
 79d:	83 c0 04             	add    $0x4,%eax
 7a0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7a3:	e9 4d ff ff ff       	jmp    6f5 <printf+0x55>
 7a8:	90                   	nop
 7a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7b3:	8b 18                	mov    (%eax),%ebx
        ap++;
 7b5:	83 c0 04             	add    $0x4,%eax
 7b8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7bb:	85 db                	test   %ebx,%ebx
 7bd:	74 7c                	je     83b <printf+0x19b>
        while(*s != 0){
 7bf:	0f b6 03             	movzbl (%ebx),%eax
 7c2:	84 c0                	test   %al,%al
 7c4:	74 29                	je     7ef <printf+0x14f>
 7c6:	8d 76 00             	lea    0x0(%esi),%esi
 7c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 7d0:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 7d3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 7d6:	83 ec 04             	sub    $0x4,%esp
 7d9:	6a 01                	push   $0x1
          s++;
 7db:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7de:	50                   	push   %eax
 7df:	57                   	push   %edi
 7e0:	e8 8d fd ff ff       	call   572 <write>
        while(*s != 0){
 7e5:	0f b6 03             	movzbl (%ebx),%eax
 7e8:	83 c4 10             	add    $0x10,%esp
 7eb:	84 c0                	test   %al,%al
 7ed:	75 e1                	jne    7d0 <printf+0x130>
      state = 0;
 7ef:	31 d2                	xor    %edx,%edx
 7f1:	e9 ff fe ff ff       	jmp    6f5 <printf+0x55>
 7f6:	8d 76 00             	lea    0x0(%esi),%esi
 7f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  write(fd, &c, 1);
 800:	83 ec 04             	sub    $0x4,%esp
 803:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 806:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 809:	6a 01                	push   $0x1
 80b:	e9 4c ff ff ff       	jmp    75c <printf+0xbc>
        printint(fd, *ap, 10, 1);
 810:	83 ec 0c             	sub    $0xc,%esp
 813:	b9 0a 00 00 00       	mov    $0xa,%ecx
 818:	6a 01                	push   $0x1
 81a:	e9 6b ff ff ff       	jmp    78a <printf+0xea>
        putc(fd, *ap);
 81f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 822:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 825:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
 827:	6a 01                	push   $0x1
        putc(fd, *ap);
 829:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 82c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 82f:	50                   	push   %eax
 830:	57                   	push   %edi
 831:	e8 3c fd ff ff       	call   572 <write>
 836:	e9 5b ff ff ff       	jmp    796 <printf+0xf6>
        while(*s != 0){
 83b:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 840:	bb 27 0c 00 00       	mov    $0xc27,%ebx
 845:	eb 89                	jmp    7d0 <printf+0x130>
 847:	66 90                	xchg   %ax,%ax
 849:	66 90                	xchg   %ax,%ax
 84b:	66 90                	xchg   %ax,%ax
 84d:	66 90                	xchg   %ax,%ax
 84f:	90                   	nop

00000850 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 850:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 851:	a1 30 0f 00 00       	mov    0xf30,%eax
{
 856:	89 e5                	mov    %esp,%ebp
 858:	57                   	push   %edi
 859:	56                   	push   %esi
 85a:	53                   	push   %ebx
 85b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 85e:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
 860:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 863:	39 c8                	cmp    %ecx,%eax
 865:	73 19                	jae    880 <free+0x30>
 867:	89 f6                	mov    %esi,%esi
 869:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 870:	39 d1                	cmp    %edx,%ecx
 872:	72 1c                	jb     890 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 874:	39 d0                	cmp    %edx,%eax
 876:	73 18                	jae    890 <free+0x40>
{
 878:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 87a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 87c:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 87e:	72 f0                	jb     870 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 880:	39 d0                	cmp    %edx,%eax
 882:	72 f4                	jb     878 <free+0x28>
 884:	39 d1                	cmp    %edx,%ecx
 886:	73 f0                	jae    878 <free+0x28>
 888:	90                   	nop
 889:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 890:	8b 73 fc             	mov    -0x4(%ebx),%esi
 893:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 896:	39 fa                	cmp    %edi,%edx
 898:	74 19                	je     8b3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 89a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 89d:	8b 50 04             	mov    0x4(%eax),%edx
 8a0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8a3:	39 f1                	cmp    %esi,%ecx
 8a5:	74 23                	je     8ca <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 8a7:	89 08                	mov    %ecx,(%eax)
  freep = p;
 8a9:	a3 30 0f 00 00       	mov    %eax,0xf30
}
 8ae:	5b                   	pop    %ebx
 8af:	5e                   	pop    %esi
 8b0:	5f                   	pop    %edi
 8b1:	5d                   	pop    %ebp
 8b2:	c3                   	ret    
    bp->s.size += p->s.ptr->s.size;
 8b3:	03 72 04             	add    0x4(%edx),%esi
 8b6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8b9:	8b 10                	mov    (%eax),%edx
 8bb:	8b 12                	mov    (%edx),%edx
 8bd:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8c0:	8b 50 04             	mov    0x4(%eax),%edx
 8c3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8c6:	39 f1                	cmp    %esi,%ecx
 8c8:	75 dd                	jne    8a7 <free+0x57>
    p->s.size += bp->s.size;
 8ca:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 8cd:	a3 30 0f 00 00       	mov    %eax,0xf30
    p->s.size += bp->s.size;
 8d2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 8d5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8d8:	89 10                	mov    %edx,(%eax)
}
 8da:	5b                   	pop    %ebx
 8db:	5e                   	pop    %esi
 8dc:	5f                   	pop    %edi
 8dd:	5d                   	pop    %ebp
 8de:	c3                   	ret    
 8df:	90                   	nop

000008e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8e0:	55                   	push   %ebp
 8e1:	89 e5                	mov    %esp,%ebp
 8e3:	57                   	push   %edi
 8e4:	56                   	push   %esi
 8e5:	53                   	push   %ebx
 8e6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8ec:	8b 15 30 0f 00 00    	mov    0xf30,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8f2:	8d 78 07             	lea    0x7(%eax),%edi
 8f5:	c1 ef 03             	shr    $0x3,%edi
 8f8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 8fb:	85 d2                	test   %edx,%edx
 8fd:	0f 84 93 00 00 00    	je     996 <malloc+0xb6>
 903:	8b 02                	mov    (%edx),%eax
 905:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 908:	39 cf                	cmp    %ecx,%edi
 90a:	76 64                	jbe    970 <malloc+0x90>
 90c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 912:	bb 00 10 00 00       	mov    $0x1000,%ebx
 917:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 91a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 921:	eb 0e                	jmp    931 <malloc+0x51>
 923:	90                   	nop
 924:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 928:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 92a:	8b 48 04             	mov    0x4(%eax),%ecx
 92d:	39 cf                	cmp    %ecx,%edi
 92f:	76 3f                	jbe    970 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 931:	39 05 30 0f 00 00    	cmp    %eax,0xf30
 937:	89 c2                	mov    %eax,%edx
 939:	75 ed                	jne    928 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 93b:	83 ec 0c             	sub    $0xc,%esp
 93e:	56                   	push   %esi
 93f:	e8 96 fc ff ff       	call   5da <sbrk>
  if(p == (char*)-1)
 944:	83 c4 10             	add    $0x10,%esp
 947:	83 f8 ff             	cmp    $0xffffffff,%eax
 94a:	74 1c                	je     968 <malloc+0x88>
  hp->s.size = nu;
 94c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 94f:	83 ec 0c             	sub    $0xc,%esp
 952:	83 c0 08             	add    $0x8,%eax
 955:	50                   	push   %eax
 956:	e8 f5 fe ff ff       	call   850 <free>
  return freep;
 95b:	8b 15 30 0f 00 00    	mov    0xf30,%edx
      if((p = morecore(nunits)) == 0)
 961:	83 c4 10             	add    $0x10,%esp
 964:	85 d2                	test   %edx,%edx
 966:	75 c0                	jne    928 <malloc+0x48>
        return 0;
 968:	31 c0                	xor    %eax,%eax
 96a:	eb 1c                	jmp    988 <malloc+0xa8>
 96c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 970:	39 cf                	cmp    %ecx,%edi
 972:	74 1c                	je     990 <malloc+0xb0>
        p->s.size -= nunits;
 974:	29 f9                	sub    %edi,%ecx
 976:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 979:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 97c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 97f:	89 15 30 0f 00 00    	mov    %edx,0xf30
      return (void*)(p + 1);
 985:	83 c0 08             	add    $0x8,%eax
  }
}
 988:	8d 65 f4             	lea    -0xc(%ebp),%esp
 98b:	5b                   	pop    %ebx
 98c:	5e                   	pop    %esi
 98d:	5f                   	pop    %edi
 98e:	5d                   	pop    %ebp
 98f:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
 990:	8b 08                	mov    (%eax),%ecx
 992:	89 0a                	mov    %ecx,(%edx)
 994:	eb e9                	jmp    97f <malloc+0x9f>
    base.s.ptr = freep = prevp = &base;
 996:	c7 05 30 0f 00 00 34 	movl   $0xf34,0xf30
 99d:	0f 00 00 
 9a0:	c7 05 34 0f 00 00 34 	movl   $0xf34,0xf34
 9a7:	0f 00 00 
    base.s.size = 0;
 9aa:	b8 34 0f 00 00       	mov    $0xf34,%eax
 9af:	c7 05 38 0f 00 00 00 	movl   $0x0,0xf38
 9b6:	00 00 00 
 9b9:	e9 4e ff ff ff       	jmp    90c <malloc+0x2c>
