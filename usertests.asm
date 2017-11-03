
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 e4 f0             	and    $0xfffffff0,%esp
       6:	83 ec 10             	sub    $0x10,%esp
  printf(1, "usertests starting\n");
       9:	c7 44 24 04 06 54 00 	movl   $0x5406,0x4(%esp)
      10:	00 
      11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      18:	e8 93 40 00 00       	call   40b0 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      24:	00 
      25:	c7 04 24 1a 54 00 00 	movl   $0x541a,(%esp)
      2c:	e8 71 3f 00 00       	call   3fa2 <open>
      31:	85 c0                	test   %eax,%eax
      33:	78 20                	js     55 <main+0x55>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      35:	c7 44 24 04 84 5b 00 	movl   $0x5b84,0x4(%esp)
      3c:	00 
      3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      44:	e8 67 40 00 00       	call   40b0 <printf>
    exit(0);
      49:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      50:	e8 0d 3f 00 00       	call   3f62 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      55:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
      5c:	00 
      5d:	c7 04 24 1a 54 00 00 	movl   $0x541a,(%esp)
      64:	e8 39 3f 00 00       	call   3fa2 <open>
      69:	89 04 24             	mov    %eax,(%esp)
      6c:	e8 19 3f 00 00       	call   3f8a <close>

  argptest();
      71:	e8 1a 3c 00 00       	call   3c90 <argptest>
  createdelete();
      76:	e8 55 12 00 00       	call   12d0 <createdelete>
      7b:	90                   	nop
      7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  linkunlink();
      80:	e8 ab 1c 00 00       	call   1d30 <linkunlink>
  concreate();
      85:	e8 56 19 00 00       	call   19e0 <concreate>
  fourfiles();
      8a:	e8 f1 0f 00 00       	call   1080 <fourfiles>
      8f:	90                   	nop
  sharedfd();
      90:	e8 fb 0d 00 00       	call   e90 <sharedfd>

  bigargtest();
      95:	e8 36 38 00 00       	call   38d0 <bigargtest>
  bigwrite();
      9a:	e8 91 27 00 00       	call   2830 <bigwrite>
      9f:	90                   	nop
  bigargtest();
      a0:	e8 2b 38 00 00       	call   38d0 <bigargtest>
  bsstest();
      a5:	e8 a6 37 00 00       	call   3850 <bsstest>
  sbrktest();
      aa:	e8 b1 32 00 00       	call   3360 <sbrktest>
      af:	90                   	nop
  validatetest();
      b0:	e8 db 36 00 00       	call   3790 <validatetest>

  opentest();
      b5:	e8 06 03 00 00       	call   3c0 <opentest>
  writetest();
      ba:	e8 a1 03 00 00       	call   460 <writetest>
      bf:	90                   	nop
  writetest1();
      c0:	e8 6b 05 00 00       	call   630 <writetest1>
  createtest();
      c5:	e8 26 07 00 00       	call   7f0 <createtest>

  openiputtest();
      ca:	e8 11 02 00 00       	call   2e0 <openiputtest>
      cf:	90                   	nop
  exitiputtest();
      d0:	e8 2b 01 00 00       	call   200 <exitiputtest>
  iputtest();
      d5:	e8 66 00 00 00       	call   140 <iputtest>

  mem();
      da:	e8 d1 0c 00 00       	call   db0 <mem>
      df:	90                   	nop
  pipe1();
      e0:	e8 db 08 00 00       	call   9c0 <pipe1>
  preempt();
      e5:	e8 b6 0a 00 00       	call   ba0 <preempt>
  exitwait();
      ea:	e8 21 0c 00 00       	call   d10 <exitwait>
      ef:	90                   	nop

  rmdot();
      f0:	e8 fb 2b 00 00       	call   2cf0 <rmdot>
  fourteen();
      f5:	e8 76 2a 00 00       	call   2b70 <fourteen>
  bigfile();
      fa:	e8 41 28 00 00       	call   2940 <bigfile>
      ff:	90                   	nop
  subdir();
     100:	e8 ab 1e 00 00       	call   1fb0 <subdir>
  linktest();
     105:	e8 36 16 00 00       	call   1740 <linktest>
  unlinkread();
     10a:	e8 31 14 00 00       	call   1540 <unlinkread>
     10f:	90                   	nop
  dirfile();
     110:	e8 ab 2d 00 00       	call   2ec0 <dirfile>
  iref();
     115:	e8 26 30 00 00       	call   3140 <iref>
  forktest();
     11a:	e8 51 31 00 00       	call   3270 <forktest>
     11f:	90                   	nop
  bigdir(); // slow
     120:	e8 2b 1d 00 00       	call   1e50 <bigdir>

  uio();
     125:	e8 c6 3a 00 00       	call   3bf0 <uio>

  exectest();
     12a:	e8 31 08 00 00       	call   960 <exectest>

  exit(0);
     12f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     136:	e8 27 3e 00 00       	call   3f62 <exit>
     13b:	66 90                	xchg   %ax,%ax
     13d:	66 90                	xchg   %ax,%ax
     13f:	90                   	nop

00000140 <iputtest>:
//int child_status;

// does chdir() call iput(p->cwd) in a transaction?
void
iputtest(void)
{
     140:	55                   	push   %ebp
     141:	89 e5                	mov    %esp,%ebp
     143:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "iput test\n");
     146:	a1 a0 64 00 00       	mov    0x64a0,%eax
     14b:	c7 44 24 04 ac 44 00 	movl   $0x44ac,0x4(%esp)
     152:	00 
     153:	89 04 24             	mov    %eax,(%esp)
     156:	e8 55 3f 00 00       	call   40b0 <printf>

  if(mkdir("iputdir") < 0){
     15b:	c7 04 24 3f 44 00 00 	movl   $0x443f,(%esp)
     162:	e8 63 3e 00 00       	call   3fca <mkdir>
     167:	85 c0                	test   %eax,%eax
     169:	78 47                	js     1b2 <iputtest+0x72>
    printf(stdout, "mkdir failed\n");
    exit(0);
  }
  if(chdir("iputdir") < 0){
     16b:	c7 04 24 3f 44 00 00 	movl   $0x443f,(%esp)
     172:	e8 5b 3e 00 00       	call   3fd2 <chdir>
     177:	85 c0                	test   %eax,%eax
     179:	78 6c                	js     1e7 <iputtest+0xa7>
    printf(stdout, "chdir iputdir failed\n");
    exit(0);
  }
  if(unlink("../iputdir") < 0){
     17b:	c7 04 24 3c 44 00 00 	movl   $0x443c,(%esp)
     182:	e8 2b 3e 00 00       	call   3fb2 <unlink>
     187:	85 c0                	test   %eax,%eax
     189:	78 52                	js     1dd <iputtest+0x9d>
    printf(stdout, "unlink ../iputdir failed\n");
    exit(0);
  }
  if(chdir("/") < 0){
     18b:	c7 04 24 61 44 00 00 	movl   $0x4461,(%esp)
     192:	e8 3b 3e 00 00       	call   3fd2 <chdir>
     197:	85 c0                	test   %eax,%eax
     199:	78 38                	js     1d3 <iputtest+0x93>
    printf(stdout, "chdir / failed\n");
    exit(0);
  }
  printf(stdout, "iput test ok\n");
     19b:	a1 a0 64 00 00       	mov    0x64a0,%eax
     1a0:	c7 44 24 04 e4 44 00 	movl   $0x44e4,0x4(%esp)
     1a7:	00 
     1a8:	89 04 24             	mov    %eax,(%esp)
     1ab:	e8 00 3f 00 00       	call   40b0 <printf>
}
     1b0:	c9                   	leave  
     1b1:	c3                   	ret    
iputtest(void)
{
  printf(stdout, "iput test\n");

  if(mkdir("iputdir") < 0){
    printf(stdout, "mkdir failed\n");
     1b2:	c7 44 24 04 18 44 00 	movl   $0x4418,0x4(%esp)
     1b9:	00 
    exit(0);
  }
  if(chdir("iputdir") < 0){
    printf(stdout, "chdir iputdir failed\n");
     1ba:	a1 a0 64 00 00       	mov    0x64a0,%eax
     1bf:	89 04 24             	mov    %eax,(%esp)
     1c2:	e8 e9 3e 00 00       	call   40b0 <printf>
    exit(0);
     1c7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1ce:	e8 8f 3d 00 00       	call   3f62 <exit>
  if(unlink("../iputdir") < 0){
    printf(stdout, "unlink ../iputdir failed\n");
    exit(0);
  }
  if(chdir("/") < 0){
    printf(stdout, "chdir / failed\n");
     1d3:	c7 44 24 04 63 44 00 	movl   $0x4463,0x4(%esp)
     1da:	00 
     1db:	eb dd                	jmp    1ba <iputtest+0x7a>
  if(chdir("iputdir") < 0){
    printf(stdout, "chdir iputdir failed\n");
    exit(0);
  }
  if(unlink("../iputdir") < 0){
    printf(stdout, "unlink ../iputdir failed\n");
     1dd:	c7 44 24 04 47 44 00 	movl   $0x4447,0x4(%esp)
     1e4:	00 
     1e5:	eb d3                	jmp    1ba <iputtest+0x7a>
  if(mkdir("iputdir") < 0){
    printf(stdout, "mkdir failed\n");
    exit(0);
  }
  if(chdir("iputdir") < 0){
    printf(stdout, "chdir iputdir failed\n");
     1e7:	c7 44 24 04 26 44 00 	movl   $0x4426,0x4(%esp)
     1ee:	00 
     1ef:	eb c9                	jmp    1ba <iputtest+0x7a>
     1f1:	eb 0d                	jmp    200 <exitiputtest>
     1f3:	90                   	nop
     1f4:	90                   	nop
     1f5:	90                   	nop
     1f6:	90                   	nop
     1f7:	90                   	nop
     1f8:	90                   	nop
     1f9:	90                   	nop
     1fa:	90                   	nop
     1fb:	90                   	nop
     1fc:	90                   	nop
     1fd:	90                   	nop
     1fe:	90                   	nop
     1ff:	90                   	nop

00000200 <exitiputtest>:
}

// does exit(0) call iput(p->cwd) in a transaction?
void
exitiputtest(void)
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 28             	sub    $0x28,%esp
  int pid;
  int child_status;

  printf(stdout, "exitiput test\n");
     206:	a1 a0 64 00 00       	mov    0x64a0,%eax
     20b:	c7 44 24 04 73 44 00 	movl   $0x4473,0x4(%esp)
     212:	00 
     213:	89 04 24             	mov    %eax,(%esp)
     216:	e8 95 3e 00 00       	call   40b0 <printf>

  pid = fork();
     21b:	e8 3a 3d 00 00       	call   3f5a <fork>
  if(pid < 0){
     220:	85 c0                	test   %eax,%eax
     222:	0f 88 91 00 00 00    	js     2b9 <exitiputtest+0xb9>
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
     228:	75 46                	jne    270 <exitiputtest+0x70>
    if(mkdir("iputdir") < 0){
     22a:	c7 04 24 3f 44 00 00 	movl   $0x443f,(%esp)
     231:	e8 94 3d 00 00       	call   3fca <mkdir>
     236:	85 c0                	test   %eax,%eax
     238:	0f 88 8f 00 00 00    	js     2cd <exitiputtest+0xcd>
      printf(stdout, "mkdir failed\n");
      exit(0);
    }
    if(chdir("iputdir") < 0){
     23e:	c7 04 24 3f 44 00 00 	movl   $0x443f,(%esp)
     245:	e8 88 3d 00 00       	call   3fd2 <chdir>
     24a:	85 c0                	test   %eax,%eax
     24c:	78 75                	js     2c3 <exitiputtest+0xc3>
      printf(stdout, "child chdir failed\n");
      exit(0);
    }
    if(unlink("../iputdir") < 0){
     24e:	c7 04 24 3c 44 00 00 	movl   $0x443c,(%esp)
     255:	e8 58 3d 00 00       	call   3fb2 <unlink>
     25a:	85 c0                	test   %eax,%eax
     25c:	78 3a                	js     298 <exitiputtest+0x98>
    exit(0);
  }
  if(pid == 0){
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
      exit(0);
     25e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     265:	e8 f8 3c 00 00       	call   3f62 <exit>
     26a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      printf(stdout, "unlink ../iputdir failed\n");
      exit(0);
    }
    exit(0);
  }
  wait(&child_status);
     270:	8d 45 f4             	lea    -0xc(%ebp),%eax
     273:	89 04 24             	mov    %eax,(%esp)
     276:	e8 ef 3c 00 00       	call   3f6a <wait>
  printf(stdout, "exitiput test ok\n");
     27b:	a1 a0 64 00 00       	mov    0x64a0,%eax
     280:	c7 44 24 04 96 44 00 	movl   $0x4496,0x4(%esp)
     287:	00 
     288:	89 04 24             	mov    %eax,(%esp)
     28b:	e8 20 3e 00 00       	call   40b0 <printf>
}
     290:	c9                   	leave  
     291:	c3                   	ret    
     292:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(chdir("iputdir") < 0){
      printf(stdout, "child chdir failed\n");
      exit(0);
    }
    if(unlink("../iputdir") < 0){
      printf(stdout, "unlink ../iputdir failed\n");
     298:	c7 44 24 04 47 44 00 	movl   $0x4447,0x4(%esp)
     29f:	00 
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
     2a0:	a1 a0 64 00 00       	mov    0x64a0,%eax
     2a5:	89 04 24             	mov    %eax,(%esp)
     2a8:	e8 03 3e 00 00       	call   40b0 <printf>
      exit(0);
     2ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     2b4:	e8 a9 3c 00 00       	call   3f62 <exit>

  printf(stdout, "exitiput test\n");

  pid = fork();
  if(pid < 0){
    printf(stdout, "fork failed\n");
     2b9:	c7 44 24 04 59 53 00 	movl   $0x5359,0x4(%esp)
     2c0:	00 
     2c1:	eb dd                	jmp    2a0 <exitiputtest+0xa0>
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
      exit(0);
    }
    if(chdir("iputdir") < 0){
      printf(stdout, "child chdir failed\n");
     2c3:	c7 44 24 04 82 44 00 	movl   $0x4482,0x4(%esp)
     2ca:	00 
     2cb:	eb d3                	jmp    2a0 <exitiputtest+0xa0>
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
    if(mkdir("iputdir") < 0){
      printf(stdout, "mkdir failed\n");
     2cd:	c7 44 24 04 18 44 00 	movl   $0x4418,0x4(%esp)
     2d4:	00 
     2d5:	eb c9                	jmp    2a0 <exitiputtest+0xa0>
     2d7:	89 f6                	mov    %esi,%esi
     2d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002e0 <openiputtest>:
//      for(i = 0; i < 10000; i++)
//        yield();
//    }
void
openiputtest(void)
{
     2e0:	55                   	push   %ebp
     2e1:	89 e5                	mov    %esp,%ebp
     2e3:	83 ec 28             	sub    $0x28,%esp
  int pid;
  int child_status;

  printf(stdout, "openiput test\n");
     2e6:	a1 a0 64 00 00       	mov    0x64a0,%eax
     2eb:	c7 44 24 04 a8 44 00 	movl   $0x44a8,0x4(%esp)
     2f2:	00 
     2f3:	89 04 24             	mov    %eax,(%esp)
     2f6:	e8 b5 3d 00 00       	call   40b0 <printf>
  if(mkdir("oidir") < 0){
     2fb:	c7 04 24 b7 44 00 00 	movl   $0x44b7,(%esp)
     302:	e8 c3 3c 00 00       	call   3fca <mkdir>
     307:	85 c0                	test   %eax,%eax
     309:	0f 88 91 00 00 00    	js     3a0 <openiputtest+0xc0>
    printf(stdout, "mkdir oidir failed\n");
    exit(0);
  }
  pid = fork();
     30f:	e8 46 3c 00 00       	call   3f5a <fork>
  if(pid < 0){
     314:	85 c0                	test   %eax,%eax
     316:	78 7e                	js     396 <openiputtest+0xb6>
    printf(stdout, "fork failed\n");
    exit(0);
  }
  if(pid == 0){
     318:	75 3e                	jne    358 <openiputtest+0x78>
    int fd = open("oidir", O_RDWR);
     31a:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     321:	00 
     322:	c7 04 24 b7 44 00 00 	movl   $0x44b7,(%esp)
     329:	e8 74 3c 00 00       	call   3fa2 <open>
    if(fd >= 0){
     32e:	85 c0                	test   %eax,%eax
     330:	78 15                	js     347 <openiputtest+0x67>
      printf(stdout, "open directory for write succeeded\n");
     332:	c7 44 24 04 3c 54 00 	movl   $0x543c,0x4(%esp)
     339:	00 
    printf(stdout, "mkdir oidir failed\n");
    exit(0);
  }
  pid = fork();
  if(pid < 0){
    printf(stdout, "fork failed\n");
     33a:	a1 a0 64 00 00       	mov    0x64a0,%eax
     33f:	89 04 24             	mov    %eax,(%esp)
     342:	e8 69 3d 00 00       	call   40b0 <printf>
    exit(0);
     347:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     34e:	e8 0f 3c 00 00       	call   3f62 <exit>
     353:	90                   	nop
     354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "open directory for write succeeded\n");
      exit(0);
    }
    exit(0);
  }
  sleep(1);
     358:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     35f:	e8 8e 3c 00 00       	call   3ff2 <sleep>
  if(unlink("oidir") != 0){
     364:	c7 04 24 b7 44 00 00 	movl   $0x44b7,(%esp)
     36b:	e8 42 3c 00 00       	call   3fb2 <unlink>
     370:	85 c0                	test   %eax,%eax
     372:	75 36                	jne    3aa <openiputtest+0xca>
    printf(stdout, "unlink failed\n");
    exit(0);
  }
  wait(&child_status);
     374:	8d 45 f4             	lea    -0xc(%ebp),%eax
     377:	89 04 24             	mov    %eax,(%esp)
     37a:	e8 eb 3b 00 00       	call   3f6a <wait>
  printf(stdout, "openiput test ok\n");
     37f:	a1 a0 64 00 00       	mov    0x64a0,%eax
     384:	c7 44 24 04 e0 44 00 	movl   $0x44e0,0x4(%esp)
     38b:	00 
     38c:	89 04 24             	mov    %eax,(%esp)
     38f:	e8 1c 3d 00 00       	call   40b0 <printf>
}
     394:	c9                   	leave  
     395:	c3                   	ret    
    printf(stdout, "mkdir oidir failed\n");
    exit(0);
  }
  pid = fork();
  if(pid < 0){
    printf(stdout, "fork failed\n");
     396:	c7 44 24 04 59 53 00 	movl   $0x5359,0x4(%esp)
     39d:	00 
     39e:	eb 9a                	jmp    33a <openiputtest+0x5a>
  int pid;
  int child_status;

  printf(stdout, "openiput test\n");
  if(mkdir("oidir") < 0){
    printf(stdout, "mkdir oidir failed\n");
     3a0:	c7 44 24 04 bd 44 00 	movl   $0x44bd,0x4(%esp)
     3a7:	00 
     3a8:	eb 90                	jmp    33a <openiputtest+0x5a>
    }
    exit(0);
  }
  sleep(1);
  if(unlink("oidir") != 0){
    printf(stdout, "unlink failed\n");
     3aa:	c7 44 24 04 d1 44 00 	movl   $0x44d1,0x4(%esp)
     3b1:	00 
     3b2:	eb 86                	jmp    33a <openiputtest+0x5a>
     3b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     3ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000003c0 <opentest>:

// simple file system tests

void
opentest(void)
{
     3c0:	55                   	push   %ebp
     3c1:	89 e5                	mov    %esp,%ebp
     3c3:	83 ec 18             	sub    $0x18,%esp
  int fd;

  printf(stdout, "open test\n");
     3c6:	a1 a0 64 00 00       	mov    0x64a0,%eax
     3cb:	c7 44 24 04 f2 44 00 	movl   $0x44f2,0x4(%esp)
     3d2:	00 
     3d3:	89 04 24             	mov    %eax,(%esp)
     3d6:	e8 d5 3c 00 00       	call   40b0 <printf>
  fd = open("echo", 0);
     3db:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     3e2:	00 
     3e3:	c7 04 24 fd 44 00 00 	movl   $0x44fd,(%esp)
     3ea:	e8 b3 3b 00 00       	call   3fa2 <open>
  if(fd < 0){
     3ef:	85 c0                	test   %eax,%eax
     3f1:	78 37                	js     42a <opentest+0x6a>
    printf(stdout, "open echo failed!\n");
    exit(0);
  }
  close(fd);
     3f3:	89 04 24             	mov    %eax,(%esp)
     3f6:	e8 8f 3b 00 00       	call   3f8a <close>
  fd = open("doesnotexist", 0);
     3fb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     402:	00 
     403:	c7 04 24 15 45 00 00 	movl   $0x4515,(%esp)
     40a:	e8 93 3b 00 00       	call   3fa2 <open>
  if(fd >= 0){
     40f:	85 c0                	test   %eax,%eax
     411:	79 38                	jns    44b <opentest+0x8b>
    printf(stdout, "open doesnotexist succeeded!\n");
    exit(0);
  }
  printf(stdout, "open test ok\n");
     413:	a1 a0 64 00 00       	mov    0x64a0,%eax
     418:	c7 44 24 04 40 45 00 	movl   $0x4540,0x4(%esp)
     41f:	00 
     420:	89 04 24             	mov    %eax,(%esp)
     423:	e8 88 3c 00 00       	call   40b0 <printf>
}
     428:	c9                   	leave  
     429:	c3                   	ret    
  int fd;

  printf(stdout, "open test\n");
  fd = open("echo", 0);
  if(fd < 0){
    printf(stdout, "open echo failed!\n");
     42a:	c7 44 24 04 02 45 00 	movl   $0x4502,0x4(%esp)
     431:	00 
    exit(0);
  }
  close(fd);
  fd = open("doesnotexist", 0);
  if(fd >= 0){
    printf(stdout, "open doesnotexist succeeded!\n");
     432:	a1 a0 64 00 00       	mov    0x64a0,%eax
     437:	89 04 24             	mov    %eax,(%esp)
     43a:	e8 71 3c 00 00       	call   40b0 <printf>
    exit(0);
     43f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     446:	e8 17 3b 00 00       	call   3f62 <exit>
    exit(0);
  }
  close(fd);
  fd = open("doesnotexist", 0);
  if(fd >= 0){
    printf(stdout, "open doesnotexist succeeded!\n");
     44b:	c7 44 24 04 22 45 00 	movl   $0x4522,0x4(%esp)
     452:	00 
     453:	eb dd                	jmp    432 <opentest+0x72>
     455:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000460 <writetest>:
  printf(stdout, "open test ok\n");
}

void
writetest(void)
{
     460:	55                   	push   %ebp
     461:	89 e5                	mov    %esp,%ebp
     463:	56                   	push   %esi
     464:	53                   	push   %ebx
     465:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int i;

  printf(stdout, "small file test\n");
     468:	a1 a0 64 00 00       	mov    0x64a0,%eax
     46d:	c7 44 24 04 4e 45 00 	movl   $0x454e,0x4(%esp)
     474:	00 
     475:	89 04 24             	mov    %eax,(%esp)
     478:	e8 33 3c 00 00       	call   40b0 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     47d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     484:	00 
     485:	c7 04 24 5f 45 00 00 	movl   $0x455f,(%esp)
     48c:	e8 11 3b 00 00       	call   3fa2 <open>
  if(fd >= 0){
     491:	85 c0                	test   %eax,%eax
{
  int fd;
  int i;

  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
     493:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     495:	0f 88 8b 01 00 00    	js     626 <writetest+0x1c6>
    printf(stdout, "creat small succeeded; ok\n");
     49b:	a1 a0 64 00 00       	mov    0x64a0,%eax
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit(0);
  }
  for(i = 0; i < 100; i++){
     4a0:	31 db                	xor    %ebx,%ebx
  int i;

  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
  if(fd >= 0){
    printf(stdout, "creat small succeeded; ok\n");
     4a2:	c7 44 24 04 65 45 00 	movl   $0x4565,0x4(%esp)
     4a9:	00 
     4aa:	89 04 24             	mov    %eax,(%esp)
     4ad:	e8 fe 3b 00 00       	call   40b0 <printf>
     4b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit(0);
  }
  for(i = 0; i < 100; i++){
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4b8:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     4bf:	00 
     4c0:	c7 44 24 04 9c 45 00 	movl   $0x459c,0x4(%esp)
     4c7:	00 
     4c8:	89 34 24             	mov    %esi,(%esp)
     4cb:	e8 b2 3a 00 00       	call   3f82 <write>
     4d0:	83 f8 0a             	cmp    $0xa,%eax
     4d3:	0f 85 e5 00 00 00    	jne    5be <writetest+0x15e>
      printf(stdout, "error: write aa %d new file failed\n", i);
      exit(0);
    }
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     4d9:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     4e0:	00 
     4e1:	c7 44 24 04 a7 45 00 	movl   $0x45a7,0x4(%esp)
     4e8:	00 
     4e9:	89 34 24             	mov    %esi,(%esp)
     4ec:	e8 91 3a 00 00       	call   3f82 <write>
     4f1:	83 f8 0a             	cmp    $0xa,%eax
     4f4:	0f 85 e9 00 00 00    	jne    5e3 <writetest+0x183>
    printf(stdout, "creat small succeeded; ok\n");
  } else {
    printf(stdout, "error: creat small failed!\n");
    exit(0);
  }
  for(i = 0; i < 100; i++){
     4fa:	83 c3 01             	add    $0x1,%ebx
     4fd:	83 fb 64             	cmp    $0x64,%ebx
     500:	75 b6                	jne    4b8 <writetest+0x58>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
      printf(stdout, "error: write bb %d new file failed\n", i);
      exit(0);
    }
  }
  printf(stdout, "writes ok\n");
     502:	a1 a0 64 00 00       	mov    0x64a0,%eax
     507:	c7 44 24 04 b2 45 00 	movl   $0x45b2,0x4(%esp)
     50e:	00 
     50f:	89 04 24             	mov    %eax,(%esp)
     512:	e8 99 3b 00 00       	call   40b0 <printf>
  close(fd);
     517:	89 34 24             	mov    %esi,(%esp)
     51a:	e8 6b 3a 00 00       	call   3f8a <close>
  fd = open("small", O_RDONLY);
     51f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     526:	00 
     527:	c7 04 24 5f 45 00 00 	movl   $0x455f,(%esp)
     52e:	e8 6f 3a 00 00       	call   3fa2 <open>
  if(fd >= 0){
     533:	85 c0                	test   %eax,%eax
      exit(0);
    }
  }
  printf(stdout, "writes ok\n");
  close(fd);
  fd = open("small", O_RDONLY);
     535:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     537:	0f 88 b4 00 00 00    	js     5f1 <writetest+0x191>
    printf(stdout, "open small succeeded ok\n");
     53d:	a1 a0 64 00 00       	mov    0x64a0,%eax
     542:	c7 44 24 04 bd 45 00 	movl   $0x45bd,0x4(%esp)
     549:	00 
     54a:	89 04 24             	mov    %eax,(%esp)
     54d:	e8 5e 3b 00 00       	call   40b0 <printf>
  } else {
    printf(stdout, "error: open small failed!\n");
    exit(0);
  }
  i = read(fd, buf, 2000);
     552:	c7 44 24 08 d0 07 00 	movl   $0x7d0,0x8(%esp)
     559:	00 
     55a:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
     561:	00 
     562:	89 1c 24             	mov    %ebx,(%esp)
     565:	e8 10 3a 00 00       	call   3f7a <read>
  if(i == 2000){
     56a:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     56f:	0f 85 9d 00 00 00    	jne    612 <writetest+0x1b2>
    printf(stdout, "read succeeded ok\n");
     575:	a1 a0 64 00 00       	mov    0x64a0,%eax
     57a:	c7 44 24 04 f1 45 00 	movl   $0x45f1,0x4(%esp)
     581:	00 
     582:	89 04 24             	mov    %eax,(%esp)
     585:	e8 26 3b 00 00       	call   40b0 <printf>
  } else {
    printf(stdout, "read failed\n");
    exit(0);
  }
  close(fd);
     58a:	89 1c 24             	mov    %ebx,(%esp)
     58d:	e8 f8 39 00 00       	call   3f8a <close>

  if(unlink("small") < 0){
     592:	c7 04 24 5f 45 00 00 	movl   $0x455f,(%esp)
     599:	e8 14 3a 00 00       	call   3fb2 <unlink>
     59e:	85 c0                	test   %eax,%eax
     5a0:	78 7a                	js     61c <writetest+0x1bc>
    printf(stdout, "unlink small failed\n");
    exit(0);
  }
  printf(stdout, "small file test ok\n");
     5a2:	a1 a0 64 00 00       	mov    0x64a0,%eax
     5a7:	c7 44 24 04 19 46 00 	movl   $0x4619,0x4(%esp)
     5ae:	00 
     5af:	89 04 24             	mov    %eax,(%esp)
     5b2:	e8 f9 3a 00 00       	call   40b0 <printf>
}
     5b7:	83 c4 10             	add    $0x10,%esp
     5ba:	5b                   	pop    %ebx
     5bb:	5e                   	pop    %esi
     5bc:	5d                   	pop    %ebp
     5bd:	c3                   	ret    
    printf(stdout, "error: creat small failed!\n");
    exit(0);
  }
  for(i = 0; i < 100; i++){
    if(write(fd, "aaaaaaaaaa", 10) != 10){
      printf(stdout, "error: write aa %d new file failed\n", i);
     5be:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     5c2:	c7 44 24 04 60 54 00 	movl   $0x5460,0x4(%esp)
     5c9:	00 
      exit(0);
    }
    if(write(fd, "bbbbbbbbbb", 10) != 10){
      printf(stdout, "error: write bb %d new file failed\n", i);
     5ca:	a1 a0 64 00 00       	mov    0x64a0,%eax
     5cf:	89 04 24             	mov    %eax,(%esp)
     5d2:	e8 d9 3a 00 00       	call   40b0 <printf>
      exit(0);
     5d7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     5de:	e8 7f 39 00 00       	call   3f62 <exit>
    if(write(fd, "aaaaaaaaaa", 10) != 10){
      printf(stdout, "error: write aa %d new file failed\n", i);
      exit(0);
    }
    if(write(fd, "bbbbbbbbbb", 10) != 10){
      printf(stdout, "error: write bb %d new file failed\n", i);
     5e3:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     5e7:	c7 44 24 04 84 54 00 	movl   $0x5484,0x4(%esp)
     5ee:	00 
     5ef:	eb d9                	jmp    5ca <writetest+0x16a>
  close(fd);
  fd = open("small", O_RDONLY);
  if(fd >= 0){
    printf(stdout, "open small succeeded ok\n");
  } else {
    printf(stdout, "error: open small failed!\n");
     5f1:	c7 44 24 04 d6 45 00 	movl   $0x45d6,0x4(%esp)
     5f8:	00 
     5f9:	a1 a0 64 00 00       	mov    0x64a0,%eax
     5fe:	89 04 24             	mov    %eax,(%esp)
     601:	e8 aa 3a 00 00       	call   40b0 <printf>
    exit(0);
     606:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     60d:	e8 50 39 00 00       	call   3f62 <exit>
  }
  i = read(fd, buf, 2000);
  if(i == 2000){
    printf(stdout, "read succeeded ok\n");
  } else {
    printf(stdout, "read failed\n");
     612:	c7 44 24 04 1d 49 00 	movl   $0x491d,0x4(%esp)
     619:	00 
     61a:	eb dd                	jmp    5f9 <writetest+0x199>
    exit(0);
  }
  close(fd);

  if(unlink("small") < 0){
    printf(stdout, "unlink small failed\n");
     61c:	c7 44 24 04 04 46 00 	movl   $0x4604,0x4(%esp)
     623:	00 
     624:	eb d3                	jmp    5f9 <writetest+0x199>
  printf(stdout, "small file test\n");
  fd = open("small", O_CREATE|O_RDWR);
  if(fd >= 0){
    printf(stdout, "creat small succeeded; ok\n");
  } else {
    printf(stdout, "error: creat small failed!\n");
     626:	c7 44 24 04 80 45 00 	movl   $0x4580,0x4(%esp)
     62d:	00 
     62e:	eb c9                	jmp    5f9 <writetest+0x199>

00000630 <writetest1>:
  printf(stdout, "small file test ok\n");
}

void
writetest1(void)
{
     630:	55                   	push   %ebp
     631:	89 e5                	mov    %esp,%ebp
     633:	56                   	push   %esi
     634:	53                   	push   %ebx
     635:	83 ec 10             	sub    $0x10,%esp
  int i, fd, n;

  printf(stdout, "big files test\n");
     638:	a1 a0 64 00 00       	mov    0x64a0,%eax
     63d:	c7 44 24 04 2d 46 00 	movl   $0x462d,0x4(%esp)
     644:	00 
     645:	89 04 24             	mov    %eax,(%esp)
     648:	e8 63 3a 00 00       	call   40b0 <printf>

  fd = open("big", O_CREATE|O_RDWR);
     64d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     654:	00 
     655:	c7 04 24 a7 46 00 00 	movl   $0x46a7,(%esp)
     65c:	e8 41 39 00 00       	call   3fa2 <open>
  if(fd < 0){
     661:	85 c0                	test   %eax,%eax
{
  int i, fd, n;

  printf(stdout, "big files test\n");

  fd = open("big", O_CREATE|O_RDWR);
     663:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     665:	0f 88 6f 01 00 00    	js     7da <writetest1+0x1aa>
     66b:	31 db                	xor    %ebx,%ebx
     66d:	8d 76 00             	lea    0x0(%esi),%esi
    exit(0);
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
    if(write(fd, buf, 512) != 512){
     670:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     677:	00 
     678:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
     67f:	00 
     680:	89 34 24             	mov    %esi,(%esp)
    printf(stdout, "error: creat big failed!\n");
    exit(0);
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
     683:	89 1d 80 8c 00 00    	mov    %ebx,0x8c80
    if(write(fd, buf, 512) != 512){
     689:	e8 f4 38 00 00       	call   3f82 <write>
     68e:	3d 00 02 00 00       	cmp    $0x200,%eax
     693:	0f 85 b2 00 00 00    	jne    74b <writetest1+0x11b>
  if(fd < 0){
    printf(stdout, "error: creat big failed!\n");
    exit(0);
  }

  for(i = 0; i < MAXFILE; i++){
     699:	83 c3 01             	add    $0x1,%ebx
     69c:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6a2:	75 cc                	jne    670 <writetest1+0x40>
      printf(stdout, "error: write big file failed\n", i);
      exit(0);
    }
  }

  close(fd);
     6a4:	89 34 24             	mov    %esi,(%esp)
     6a7:	e8 de 38 00 00       	call   3f8a <close>

  fd = open("big", O_RDONLY);
     6ac:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     6b3:	00 
     6b4:	c7 04 24 a7 46 00 00 	movl   $0x46a7,(%esp)
     6bb:	e8 e2 38 00 00       	call   3fa2 <open>
  if(fd < 0){
     6c0:	85 c0                	test   %eax,%eax
    }
  }

  close(fd);

  fd = open("big", O_RDONLY);
     6c2:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     6c4:	0f 88 ef 00 00 00    	js     7b9 <writetest1+0x189>
     6ca:	31 db                	xor    %ebx,%ebx
     6cc:	eb 1d                	jmp    6eb <writetest1+0xbb>
     6ce:	66 90                	xchg   %ax,%ax
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
        exit(0);
      }
      break;
    } else if(i != 512){
     6d0:	3d 00 02 00 00       	cmp    $0x200,%eax
     6d5:	0f 85 be 00 00 00    	jne    799 <writetest1+0x169>
      printf(stdout, "read failed %d\n", i);
      exit(0);
    }
    if(((int*)buf)[0] != n){
     6db:	a1 80 8c 00 00       	mov    0x8c80,%eax
     6e0:	39 d8                	cmp    %ebx,%eax
     6e2:	0f 85 88 00 00 00    	jne    770 <writetest1+0x140>
      printf(stdout, "read content of block %d is %d\n",
             n, ((int*)buf)[0]);
      exit(0);
    }
    n++;
     6e8:	83 c3 01             	add    $0x1,%ebx
    exit(0);
  }

  n = 0;
  for(;;){
    i = read(fd, buf, 512);
     6eb:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     6f2:	00 
     6f3:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
     6fa:	00 
     6fb:	89 34 24             	mov    %esi,(%esp)
     6fe:	e8 77 38 00 00       	call   3f7a <read>
    if(i == 0){
     703:	85 c0                	test   %eax,%eax
     705:	75 c9                	jne    6d0 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     707:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     70d:	0f 84 94 00 00 00    	je     7a7 <writetest1+0x177>
             n, ((int*)buf)[0]);
      exit(0);
    }
    n++;
  }
  close(fd);
     713:	89 34 24             	mov    %esi,(%esp)
     716:	e8 6f 38 00 00       	call   3f8a <close>
  if(unlink("big") < 0){
     71b:	c7 04 24 a7 46 00 00 	movl   $0x46a7,(%esp)
     722:	e8 8b 38 00 00       	call   3fb2 <unlink>
     727:	85 c0                	test   %eax,%eax
     729:	0f 88 b5 00 00 00    	js     7e4 <writetest1+0x1b4>
    printf(stdout, "unlink big failed\n");
    exit(0);
  }
  printf(stdout, "big files ok\n");
     72f:	a1 a0 64 00 00       	mov    0x64a0,%eax
     734:	c7 44 24 04 ce 46 00 	movl   $0x46ce,0x4(%esp)
     73b:	00 
     73c:	89 04 24             	mov    %eax,(%esp)
     73f:	e8 6c 39 00 00       	call   40b0 <printf>
}
     744:	83 c4 10             	add    $0x10,%esp
     747:	5b                   	pop    %ebx
     748:	5e                   	pop    %esi
     749:	5d                   	pop    %ebp
     74a:	c3                   	ret    
  }

  for(i = 0; i < MAXFILE; i++){
    ((int*)buf)[0] = i;
    if(write(fd, buf, 512) != 512){
      printf(stdout, "error: write big file failed\n", i);
     74b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     74f:	c7 44 24 04 57 46 00 	movl   $0x4657,0x4(%esp)
     756:	00 
  n = 0;
  for(;;){
    i = read(fd, buf, 512);
    if(i == 0){
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
     757:	a1 a0 64 00 00       	mov    0x64a0,%eax
     75c:	89 04 24             	mov    %eax,(%esp)
     75f:	e8 4c 39 00 00       	call   40b0 <printf>
        exit(0);
     764:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     76b:	e8 f2 37 00 00       	call   3f62 <exit>
    } else if(i != 512){
      printf(stdout, "read failed %d\n", i);
      exit(0);
    }
    if(((int*)buf)[0] != n){
      printf(stdout, "read content of block %d is %d\n",
     770:	89 44 24 0c          	mov    %eax,0xc(%esp)
     774:	a1 a0 64 00 00       	mov    0x64a0,%eax
     779:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     77d:	c7 44 24 04 a8 54 00 	movl   $0x54a8,0x4(%esp)
     784:	00 
     785:	89 04 24             	mov    %eax,(%esp)
     788:	e8 23 39 00 00       	call   40b0 <printf>
             n, ((int*)buf)[0]);
      exit(0);
     78d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     794:	e8 c9 37 00 00       	call   3f62 <exit>
        printf(stdout, "read only %d blocks from big", n);
        exit(0);
      }
      break;
    } else if(i != 512){
      printf(stdout, "read failed %d\n", i);
     799:	89 44 24 08          	mov    %eax,0x8(%esp)
     79d:	c7 44 24 04 ab 46 00 	movl   $0x46ab,0x4(%esp)
     7a4:	00 
     7a5:	eb b0                	jmp    757 <writetest1+0x127>
  n = 0;
  for(;;){
    i = read(fd, buf, 512);
    if(i == 0){
      if(n == MAXFILE - 1){
        printf(stdout, "read only %d blocks from big", n);
     7a7:	c7 44 24 08 8b 00 00 	movl   $0x8b,0x8(%esp)
     7ae:	00 
     7af:	c7 44 24 04 8e 46 00 	movl   $0x468e,0x4(%esp)
     7b6:	00 
     7b7:	eb 9e                	jmp    757 <writetest1+0x127>

  close(fd);

  fd = open("big", O_RDONLY);
  if(fd < 0){
    printf(stdout, "error: open big failed!\n");
     7b9:	c7 44 24 04 75 46 00 	movl   $0x4675,0x4(%esp)
     7c0:	00 
     7c1:	a1 a0 64 00 00       	mov    0x64a0,%eax
     7c6:	89 04 24             	mov    %eax,(%esp)
     7c9:	e8 e2 38 00 00       	call   40b0 <printf>
    exit(0);
     7ce:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7d5:	e8 88 37 00 00       	call   3f62 <exit>

  printf(stdout, "big files test\n");

  fd = open("big", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(stdout, "error: creat big failed!\n");
     7da:	c7 44 24 04 3d 46 00 	movl   $0x463d,0x4(%esp)
     7e1:	00 
     7e2:	eb dd                	jmp    7c1 <writetest1+0x191>
    }
    n++;
  }
  close(fd);
  if(unlink("big") < 0){
    printf(stdout, "unlink big failed\n");
     7e4:	c7 44 24 04 bb 46 00 	movl   $0x46bb,0x4(%esp)
     7eb:	00 
     7ec:	eb d3                	jmp    7c1 <writetest1+0x191>
     7ee:	66 90                	xchg   %ax,%ax

000007f0 <createtest>:
  printf(stdout, "big files ok\n");
}

void
createtest(void)
{
     7f0:	55                   	push   %ebp
     7f1:	89 e5                	mov    %esp,%ebp
     7f3:	53                   	push   %ebx
  int i, fd;

  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
     7f4:	bb 30 00 00 00       	mov    $0x30,%ebx
  printf(stdout, "big files ok\n");
}

void
createtest(void)
{
     7f9:	83 ec 14             	sub    $0x14,%esp
  int i, fd;

  printf(stdout, "many creates, followed by unlink test\n");
     7fc:	a1 a0 64 00 00       	mov    0x64a0,%eax
     801:	c7 44 24 04 c8 54 00 	movl   $0x54c8,0x4(%esp)
     808:	00 
     809:	89 04 24             	mov    %eax,(%esp)
     80c:	e8 9f 38 00 00       	call   40b0 <printf>

  name[0] = 'a';
     811:	c6 05 80 ac 00 00 61 	movb   $0x61,0xac80
  name[2] = '\0';
     818:	c6 05 82 ac 00 00 00 	movb   $0x0,0xac82
     81f:	90                   	nop
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
    fd = open(name, O_CREATE|O_RDWR);
     820:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     827:	00 
     828:	c7 04 24 80 ac 00 00 	movl   $0xac80,(%esp)
  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
     82f:	88 1d 81 ac 00 00    	mov    %bl,0xac81
     835:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     838:	e8 65 37 00 00       	call   3fa2 <open>
    close(fd);
     83d:	89 04 24             	mov    %eax,(%esp)
     840:	e8 45 37 00 00       	call   3f8a <close>

  printf(stdout, "many creates, followed by unlink test\n");

  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
     845:	80 fb 64             	cmp    $0x64,%bl
     848:	75 d6                	jne    820 <createtest+0x30>
    name[1] = '0' + i;
    fd = open(name, O_CREATE|O_RDWR);
    close(fd);
  }
  name[0] = 'a';
     84a:	c6 05 80 ac 00 00 61 	movb   $0x61,0xac80
  name[2] = '\0';
     851:	bb 30 00 00 00       	mov    $0x30,%ebx
     856:	c6 05 82 ac 00 00 00 	movb   $0x0,0xac82
     85d:	8d 76 00             	lea    0x0(%esi),%esi
  for(i = 0; i < 52; i++){
    name[1] = '0' + i;
     860:	88 1d 81 ac 00 00    	mov    %bl,0xac81
     866:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     869:	c7 04 24 80 ac 00 00 	movl   $0xac80,(%esp)
     870:	e8 3d 37 00 00       	call   3fb2 <unlink>
    fd = open(name, O_CREATE|O_RDWR);
    close(fd);
  }
  name[0] = 'a';
  name[2] = '\0';
  for(i = 0; i < 52; i++){
     875:	80 fb 64             	cmp    $0x64,%bl
     878:	75 e6                	jne    860 <createtest+0x70>
    name[1] = '0' + i;
    unlink(name);
  }
  printf(stdout, "many creates, followed by unlink; ok\n");
     87a:	a1 a0 64 00 00       	mov    0x64a0,%eax
     87f:	c7 44 24 04 f0 54 00 	movl   $0x54f0,0x4(%esp)
     886:	00 
     887:	89 04 24             	mov    %eax,(%esp)
     88a:	e8 21 38 00 00       	call   40b0 <printf>
}
     88f:	83 c4 14             	add    $0x14,%esp
     892:	5b                   	pop    %ebx
     893:	5d                   	pop    %ebp
     894:	c3                   	ret    
     895:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     899:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000008a0 <dirtest>:

void dirtest(void)
{
     8a0:	55                   	push   %ebp
     8a1:	89 e5                	mov    %esp,%ebp
     8a3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "mkdir test\n");
     8a6:	a1 a0 64 00 00       	mov    0x64a0,%eax
     8ab:	c7 44 24 04 dc 46 00 	movl   $0x46dc,0x4(%esp)
     8b2:	00 
     8b3:	89 04 24             	mov    %eax,(%esp)
     8b6:	e8 f5 37 00 00       	call   40b0 <printf>

  if(mkdir("dir0") < 0){
     8bb:	c7 04 24 e8 46 00 00 	movl   $0x46e8,(%esp)
     8c2:	e8 03 37 00 00       	call   3fca <mkdir>
     8c7:	85 c0                	test   %eax,%eax
     8c9:	78 47                	js     912 <dirtest+0x72>
    printf(stdout, "mkdir failed\n");
    exit(0);
  }

  if(chdir("dir0") < 0){
     8cb:	c7 04 24 e8 46 00 00 	movl   $0x46e8,(%esp)
     8d2:	e8 fb 36 00 00       	call   3fd2 <chdir>
     8d7:	85 c0                	test   %eax,%eax
     8d9:	78 6c                	js     947 <dirtest+0xa7>
    printf(stdout, "chdir dir0 failed\n");
    exit(0);
  }

  if(chdir("..") < 0){
     8db:	c7 04 24 8d 4c 00 00 	movl   $0x4c8d,(%esp)
     8e2:	e8 eb 36 00 00       	call   3fd2 <chdir>
     8e7:	85 c0                	test   %eax,%eax
     8e9:	78 52                	js     93d <dirtest+0x9d>
    printf(stdout, "chdir .. failed\n");
    exit(0);
  }

  if(unlink("dir0") < 0){
     8eb:	c7 04 24 e8 46 00 00 	movl   $0x46e8,(%esp)
     8f2:	e8 bb 36 00 00       	call   3fb2 <unlink>
     8f7:	85 c0                	test   %eax,%eax
     8f9:	78 38                	js     933 <dirtest+0x93>
    printf(stdout, "unlink dir0 failed\n");
    exit(0);
  }
  printf(stdout, "mkdir test ok\n");
     8fb:	a1 a0 64 00 00       	mov    0x64a0,%eax
     900:	c7 44 24 04 25 47 00 	movl   $0x4725,0x4(%esp)
     907:	00 
     908:	89 04 24             	mov    %eax,(%esp)
     90b:	e8 a0 37 00 00       	call   40b0 <printf>
}
     910:	c9                   	leave  
     911:	c3                   	ret    
void dirtest(void)
{
  printf(stdout, "mkdir test\n");

  if(mkdir("dir0") < 0){
    printf(stdout, "mkdir failed\n");
     912:	c7 44 24 04 18 44 00 	movl   $0x4418,0x4(%esp)
     919:	00 
    exit(0);
  }

  if(chdir("dir0") < 0){
    printf(stdout, "chdir dir0 failed\n");
     91a:	a1 a0 64 00 00       	mov    0x64a0,%eax
     91f:	89 04 24             	mov    %eax,(%esp)
     922:	e8 89 37 00 00       	call   40b0 <printf>
    exit(0);
     927:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     92e:	e8 2f 36 00 00       	call   3f62 <exit>
    printf(stdout, "chdir .. failed\n");
    exit(0);
  }

  if(unlink("dir0") < 0){
    printf(stdout, "unlink dir0 failed\n");
     933:	c7 44 24 04 11 47 00 	movl   $0x4711,0x4(%esp)
     93a:	00 
     93b:	eb dd                	jmp    91a <dirtest+0x7a>
    printf(stdout, "chdir dir0 failed\n");
    exit(0);
  }

  if(chdir("..") < 0){
    printf(stdout, "chdir .. failed\n");
     93d:	c7 44 24 04 00 47 00 	movl   $0x4700,0x4(%esp)
     944:	00 
     945:	eb d3                	jmp    91a <dirtest+0x7a>
    printf(stdout, "mkdir failed\n");
    exit(0);
  }

  if(chdir("dir0") < 0){
    printf(stdout, "chdir dir0 failed\n");
     947:	c7 44 24 04 ed 46 00 	movl   $0x46ed,0x4(%esp)
     94e:	00 
     94f:	eb c9                	jmp    91a <dirtest+0x7a>
     951:	eb 0d                	jmp    960 <exectest>
     953:	90                   	nop
     954:	90                   	nop
     955:	90                   	nop
     956:	90                   	nop
     957:	90                   	nop
     958:	90                   	nop
     959:	90                   	nop
     95a:	90                   	nop
     95b:	90                   	nop
     95c:	90                   	nop
     95d:	90                   	nop
     95e:	90                   	nop
     95f:	90                   	nop

00000960 <exectest>:
  printf(stdout, "mkdir test ok\n");
}

void
exectest(void)
{
     960:	55                   	push   %ebp
     961:	89 e5                	mov    %esp,%ebp
     963:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exec test\n");
     966:	a1 a0 64 00 00       	mov    0x64a0,%eax
     96b:	c7 44 24 04 34 47 00 	movl   $0x4734,0x4(%esp)
     972:	00 
     973:	89 04 24             	mov    %eax,(%esp)
     976:	e8 35 37 00 00       	call   40b0 <printf>
  if(exec("echo", echoargv) < 0){
     97b:	c7 44 24 04 a4 64 00 	movl   $0x64a4,0x4(%esp)
     982:	00 
     983:	c7 04 24 fd 44 00 00 	movl   $0x44fd,(%esp)
     98a:	e8 0b 36 00 00       	call   3f9a <exec>
     98f:	85 c0                	test   %eax,%eax
     991:	78 02                	js     995 <exectest+0x35>
    printf(stdout, "exec echo failed\n");
    exit(0);
  }
}
     993:	c9                   	leave  
     994:	c3                   	ret    
void
exectest(void)
{
  printf(stdout, "exec test\n");
  if(exec("echo", echoargv) < 0){
    printf(stdout, "exec echo failed\n");
     995:	a1 a0 64 00 00       	mov    0x64a0,%eax
     99a:	c7 44 24 04 3f 47 00 	movl   $0x473f,0x4(%esp)
     9a1:	00 
     9a2:	89 04 24             	mov    %eax,(%esp)
     9a5:	e8 06 37 00 00       	call   40b0 <printf>
    exit(0);
     9aa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9b1:	e8 ac 35 00 00       	call   3f62 <exit>
     9b6:	8d 76 00             	lea    0x0(%esi),%esi
     9b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000009c0 <pipe1>:

// simple fork and pipe read/write

void
pipe1(void)
{
     9c0:	55                   	push   %ebp
     9c1:	89 e5                	mov    %esp,%ebp
     9c3:	57                   	push   %edi
     9c4:	56                   	push   %esi
     9c5:	53                   	push   %ebx
     9c6:	83 ec 2c             	sub    $0x2c,%esp
  int fds[2], pid;
  int seq, i, n, cc, total;
  int child_status;

  if(pipe(fds) != 0){
     9c9:	8d 45 e0             	lea    -0x20(%ebp),%eax
     9cc:	89 04 24             	mov    %eax,(%esp)
     9cf:	e8 9e 35 00 00       	call   3f72 <pipe>
     9d4:	85 c0                	test   %eax,%eax
     9d6:	0f 85 5b 01 00 00    	jne    b37 <pipe1+0x177>
    printf(1, "pipe() failed\n");
    exit(0);
  }
  pid = fork();
     9dc:	e8 79 35 00 00       	call   3f5a <fork>
  seq = 0;
  if(pid == 0){
     9e1:	83 f8 00             	cmp    $0x0,%eax
     9e4:	0f 84 93 00 00 00    	je     a7d <pipe1+0xbd>
        printf(1, "pipe1 oops 1\n");
        exit(0);
      }
    }
    exit(0);
  } else if(pid > 0){
     9ea:	0f 8e 67 01 00 00    	jle    b57 <pipe1+0x197>
    close(fds[1]);
     9f0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    total = 0;
    cc = 1;
     9f3:	bf 01 00 00 00       	mov    $0x1,%edi
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  pid = fork();
  seq = 0;
     9f8:	31 db                	xor    %ebx,%ebx
        exit(0);
      }
    }
    exit(0);
  } else if(pid > 0){
    close(fds[1]);
     9fa:	89 04 24             	mov    %eax,(%esp)
     9fd:	e8 88 35 00 00       	call   3f8a <close>
    total = 0;
     a02:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
     a09:	8b 45 e0             	mov    -0x20(%ebp),%eax
     a0c:	89 7c 24 08          	mov    %edi,0x8(%esp)
     a10:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
     a17:	00 
     a18:	89 04 24             	mov    %eax,(%esp)
     a1b:	e8 5a 35 00 00       	call   3f7a <read>
     a20:	85 c0                	test   %eax,%eax
     a22:	0f 8e ba 00 00 00    	jle    ae2 <pipe1+0x122>
     a28:	89 d9                	mov    %ebx,%ecx
     a2a:	8d 34 03             	lea    (%ebx,%eax,1),%esi
     a2d:	f7 d9                	neg    %ecx
     a2f:	eb 09                	jmp    a3a <pipe1+0x7a>
     a31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a38:	89 d3                	mov    %edx,%ebx
     a3a:	38 9c 0b 80 8c 00 00 	cmp    %bl,0x8c80(%ebx,%ecx,1)
     a41:	8d 53 01             	lea    0x1(%ebx),%edx
     a44:	75 1b                	jne    a61 <pipe1+0xa1>
  } else if(pid > 0){
    close(fds[1]);
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
     a46:	39 f2                	cmp    %esi,%edx
     a48:	75 ee                	jne    a38 <pipe1+0x78>
          printf(1, "pipe1 oops 2\n");
          return;
        }
      }
      total += n;
      cc = cc * 2;
     a4a:	01 ff                	add    %edi,%edi
    close(fds[1]);
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a4c:	89 f3                	mov    %esi,%ebx
          printf(1, "pipe1 oops 2\n");
          return;
        }
      }
      total += n;
     a4e:	01 45 d4             	add    %eax,-0x2c(%ebp)
      cc = cc * 2;
      if(cc > sizeof(buf))
        cc = sizeof(buf);
     a51:	81 ff 01 20 00 00    	cmp    $0x2001,%edi
     a57:	b8 00 20 00 00       	mov    $0x2000,%eax
     a5c:	0f 43 f8             	cmovae %eax,%edi
     a5f:	eb a8                	jmp    a09 <pipe1+0x49>
    total = 0;
    cc = 1;
    while((n = read(fds[0], buf, cc)) > 0){
      for(i = 0; i < n; i++){
        if((buf[i] & 0xff) != (seq++ & 0xff)){
          printf(1, "pipe1 oops 2\n");
     a61:	c7 44 24 04 6e 47 00 	movl   $0x476e,0x4(%esp)
     a68:	00 
     a69:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     a70:	e8 3b 36 00 00       	call   40b0 <printf>
  } else {
    printf(1, "fork() failed\n");
    exit(0);
  }
  printf(1, "pipe1 ok\n");
}
     a75:	83 c4 2c             	add    $0x2c,%esp
     a78:	5b                   	pop    %ebx
     a79:	5e                   	pop    %esi
     a7a:	5f                   	pop    %edi
     a7b:	5d                   	pop    %ebp
     a7c:	c3                   	ret    
    exit(0);
  }
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
     a7d:	8b 45 e0             	mov    -0x20(%ebp),%eax
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  pid = fork();
  seq = 0;
     a80:	31 f6                	xor    %esi,%esi
  if(pid == 0){
    close(fds[0]);
     a82:	89 04 24             	mov    %eax,(%esp)
     a85:	e8 00 35 00 00       	call   3f8a <close>
     a8a:	89 f0                	mov    %esi,%eax

// simple fork and pipe read/write

void
pipe1(void)
{
     a8c:	89 f3                	mov    %esi,%ebx
     a8e:	8d 96 09 04 00 00    	lea    0x409(%esi),%edx
     a94:	f7 d8                	neg    %eax
     a96:	66 90                	xchg   %ax,%ax
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
     a98:	88 9c 18 80 8c 00 00 	mov    %bl,0x8c80(%eax,%ebx,1)
     a9f:	83 c3 01             	add    $0x1,%ebx
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
     aa2:	39 d3                	cmp    %edx,%ebx
     aa4:	75 f2                	jne    a98 <pipe1+0xd8>
        buf[i] = seq++;
      if(write(fds[1], buf, 1033) != 1033){
     aa6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     aa9:	89 de                	mov    %ebx,%esi
     aab:	c7 44 24 08 09 04 00 	movl   $0x409,0x8(%esp)
     ab2:	00 
     ab3:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
     aba:	00 
     abb:	89 04 24             	mov    %eax,(%esp)
     abe:	e8 bf 34 00 00       	call   3f82 <write>
     ac3:	3d 09 04 00 00       	cmp    $0x409,%eax
     ac8:	0f 85 a9 00 00 00    	jne    b77 <pipe1+0x1b7>
  }
  pid = fork();
  seq = 0;
  if(pid == 0){
    close(fds[0]);
    for(n = 0; n < 5; n++){
     ace:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     ad4:	75 b4                	jne    a8a <pipe1+0xca>
      if(cc > sizeof(buf))
        cc = sizeof(buf);
    }
    if(total != 5 * 1033){
      printf(1, "pipe1 oops 3 total %d\n", total);
      exit(0);
     ad6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     add:	e8 80 34 00 00       	call   3f62 <exit>
      total += n;
      cc = cc * 2;
      if(cc > sizeof(buf))
        cc = sizeof(buf);
    }
    if(total != 5 * 1033){
     ae2:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     ae9:	75 2f                	jne    b1a <pipe1+0x15a>
      printf(1, "pipe1 oops 3 total %d\n", total);
      exit(0);
    }
    close(fds[0]);
     aeb:	8b 45 e0             	mov    -0x20(%ebp),%eax
     aee:	89 04 24             	mov    %eax,(%esp)
     af1:	e8 94 34 00 00       	call   3f8a <close>
    wait(&child_status);
     af6:	8d 45 dc             	lea    -0x24(%ebp),%eax
     af9:	89 04 24             	mov    %eax,(%esp)
     afc:	e8 69 34 00 00       	call   3f6a <wait>
  } else {
    printf(1, "fork() failed\n");
    exit(0);
  }
  printf(1, "pipe1 ok\n");
     b01:	c7 44 24 04 93 47 00 	movl   $0x4793,0x4(%esp)
     b08:	00 
     b09:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b10:	e8 9b 35 00 00       	call   40b0 <printf>
     b15:	e9 5b ff ff ff       	jmp    a75 <pipe1+0xb5>
      cc = cc * 2;
      if(cc > sizeof(buf))
        cc = sizeof(buf);
    }
    if(total != 5 * 1033){
      printf(1, "pipe1 oops 3 total %d\n", total);
     b1a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     b1d:	c7 44 24 04 7c 47 00 	movl   $0x477c,0x4(%esp)
     b24:	00 
     b25:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b2c:	89 44 24 08          	mov    %eax,0x8(%esp)
     b30:	e8 7b 35 00 00       	call   40b0 <printf>
     b35:	eb 9f                	jmp    ad6 <pipe1+0x116>
  int fds[2], pid;
  int seq, i, n, cc, total;
  int child_status;

  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
     b37:	c7 44 24 04 51 47 00 	movl   $0x4751,0x4(%esp)
     b3e:	00 
     b3f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b46:	e8 65 35 00 00       	call   40b0 <printf>
    exit(0);
     b4b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b52:	e8 0b 34 00 00       	call   3f62 <exit>
      exit(0);
    }
    close(fds[0]);
    wait(&child_status);
  } else {
    printf(1, "fork() failed\n");
     b57:	c7 44 24 04 9d 47 00 	movl   $0x479d,0x4(%esp)
     b5e:	00 
     b5f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b66:	e8 45 35 00 00       	call   40b0 <printf>
    exit(0);
     b6b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b72:	e8 eb 33 00 00       	call   3f62 <exit>
    close(fds[0]);
    for(n = 0; n < 5; n++){
      for(i = 0; i < 1033; i++)
        buf[i] = seq++;
      if(write(fds[1], buf, 1033) != 1033){
        printf(1, "pipe1 oops 1\n");
     b77:	c7 44 24 04 60 47 00 	movl   $0x4760,0x4(%esp)
     b7e:	00 
     b7f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b86:	e8 25 35 00 00       	call   40b0 <printf>
        exit(0);
     b8b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b92:	e8 cb 33 00 00       	call   3f62 <exit>
     b97:	89 f6                	mov    %esi,%esi
     b99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ba0 <preempt>:
}

// meant to be run w/ at most two CPUs
void
preempt(void)
{
     ba0:	55                   	push   %ebp
     ba1:	89 e5                	mov    %esp,%ebp
     ba3:	57                   	push   %edi
     ba4:	56                   	push   %esi
     ba5:	53                   	push   %ebx
     ba6:	83 ec 2c             	sub    $0x2c,%esp
  int pid1, pid2, pid3;
  int pfds[2];
  int child_status;

  printf(1, "preempt: ");
     ba9:	c7 44 24 04 ac 47 00 	movl   $0x47ac,0x4(%esp)
     bb0:	00 
     bb1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bb8:	e8 f3 34 00 00       	call   40b0 <printf>
  pid1 = fork();
     bbd:	e8 98 33 00 00       	call   3f5a <fork>
  if(pid1 == 0)
     bc2:	85 c0                	test   %eax,%eax
  int pid1, pid2, pid3;
  int pfds[2];
  int child_status;

  printf(1, "preempt: ");
  pid1 = fork();
     bc4:	89 c7                	mov    %eax,%edi
  if(pid1 == 0)
     bc6:	75 02                	jne    bca <preempt+0x2a>
     bc8:	eb fe                	jmp    bc8 <preempt+0x28>
     bca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    for(;;)
      ;

  pid2 = fork();
     bd0:	e8 85 33 00 00       	call   3f5a <fork>
  if(pid2 == 0)
     bd5:	85 c0                	test   %eax,%eax
  pid1 = fork();
  if(pid1 == 0)
    for(;;)
      ;

  pid2 = fork();
     bd7:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     bd9:	75 02                	jne    bdd <preempt+0x3d>
     bdb:	eb fe                	jmp    bdb <preempt+0x3b>
    for(;;)
      ;

  pipe(pfds);
     bdd:	8d 45 e0             	lea    -0x20(%ebp),%eax
     be0:	89 04 24             	mov    %eax,(%esp)
     be3:	e8 8a 33 00 00       	call   3f72 <pipe>
  pid3 = fork();
     be8:	e8 6d 33 00 00       	call   3f5a <fork>
  if(pid3 == 0){
     bed:	85 c0                	test   %eax,%eax
  if(pid2 == 0)
    for(;;)
      ;

  pipe(pfds);
  pid3 = fork();
     bef:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     bf1:	75 4c                	jne    c3f <preempt+0x9f>
    close(pfds[0]);
     bf3:	8b 45 e0             	mov    -0x20(%ebp),%eax
     bf6:	89 04 24             	mov    %eax,(%esp)
     bf9:	e8 8c 33 00 00       	call   3f8a <close>
    if(write(pfds[1], "x", 1) != 1)
     bfe:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c01:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     c08:	00 
     c09:	c7 44 24 04 71 4d 00 	movl   $0x4d71,0x4(%esp)
     c10:	00 
     c11:	89 04 24             	mov    %eax,(%esp)
     c14:	e8 69 33 00 00       	call   3f82 <write>
     c19:	83 f8 01             	cmp    $0x1,%eax
     c1c:	74 14                	je     c32 <preempt+0x92>
      printf(1, "preempt write error");
     c1e:	c7 44 24 04 b6 47 00 	movl   $0x47b6,0x4(%esp)
     c25:	00 
     c26:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c2d:	e8 7e 34 00 00       	call   40b0 <printf>
    close(pfds[1]);
     c32:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c35:	89 04 24             	mov    %eax,(%esp)
     c38:	e8 4d 33 00 00       	call   3f8a <close>
     c3d:	eb fe                	jmp    c3d <preempt+0x9d>
    for(;;)
      ;
  }

  close(pfds[1]);
     c3f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c42:	89 04 24             	mov    %eax,(%esp)
     c45:	e8 40 33 00 00       	call   3f8a <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     c4a:	8b 45 e0             	mov    -0x20(%ebp),%eax
     c4d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
     c54:	00 
     c55:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
     c5c:	00 
     c5d:	89 04 24             	mov    %eax,(%esp)
     c60:	e8 15 33 00 00       	call   3f7a <read>
     c65:	83 f8 01             	cmp    $0x1,%eax
     c68:	74 1c                	je     c86 <preempt+0xe6>
    printf(1, "preempt read error");
     c6a:	c7 44 24 04 ca 47 00 	movl   $0x47ca,0x4(%esp)
     c71:	00 
     c72:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c79:	e8 32 34 00 00       	call   40b0 <printf>
  printf(1, "wait... ");
  wait(&child_status);
  wait(&child_status);
  wait(&child_status);
  printf(1, "preempt ok\n");
}
     c7e:	83 c4 2c             	add    $0x2c,%esp
     c81:	5b                   	pop    %ebx
     c82:	5e                   	pop    %esi
     c83:	5f                   	pop    %edi
     c84:	5d                   	pop    %ebp
     c85:	c3                   	ret    
  close(pfds[1]);
  if(read(pfds[0], buf, sizeof(buf)) != 1){
    printf(1, "preempt read error");
    return;
  }
  close(pfds[0]);
     c86:	8b 45 e0             	mov    -0x20(%ebp),%eax
     c89:	89 04 24             	mov    %eax,(%esp)
     c8c:	e8 f9 32 00 00       	call   3f8a <close>
  printf(1, "kill... ");
     c91:	c7 44 24 04 dd 47 00 	movl   $0x47dd,0x4(%esp)
     c98:	00 
     c99:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ca0:	e8 0b 34 00 00       	call   40b0 <printf>
  kill(pid1);
     ca5:	89 3c 24             	mov    %edi,(%esp)
     ca8:	e8 e5 32 00 00       	call   3f92 <kill>
  kill(pid2);
     cad:	89 34 24             	mov    %esi,(%esp)
     cb0:	e8 dd 32 00 00       	call   3f92 <kill>
  kill(pid3);
     cb5:	89 1c 24             	mov    %ebx,(%esp)
  printf(1, "wait... ");
  wait(&child_status);
     cb8:	8d 5d dc             	lea    -0x24(%ebp),%ebx
  }
  close(pfds[0]);
  printf(1, "kill... ");
  kill(pid1);
  kill(pid2);
  kill(pid3);
     cbb:	e8 d2 32 00 00       	call   3f92 <kill>
  printf(1, "wait... ");
     cc0:	c7 44 24 04 e6 47 00 	movl   $0x47e6,0x4(%esp)
     cc7:	00 
     cc8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ccf:	e8 dc 33 00 00       	call   40b0 <printf>
  wait(&child_status);
     cd4:	89 1c 24             	mov    %ebx,(%esp)
     cd7:	e8 8e 32 00 00       	call   3f6a <wait>
  wait(&child_status);
     cdc:	89 1c 24             	mov    %ebx,(%esp)
     cdf:	e8 86 32 00 00       	call   3f6a <wait>
  wait(&child_status);
     ce4:	89 1c 24             	mov    %ebx,(%esp)
     ce7:	e8 7e 32 00 00       	call   3f6a <wait>
  printf(1, "preempt ok\n");
     cec:	c7 44 24 04 ef 47 00 	movl   $0x47ef,0x4(%esp)
     cf3:	00 
     cf4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     cfb:	e8 b0 33 00 00       	call   40b0 <printf>
     d00:	e9 79 ff ff ff       	jmp    c7e <preempt+0xde>
     d05:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d10 <exitwait>:
}

// try to find any races between exit and wait
void
exitwait(void)
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	57                   	push   %edi
     d14:	56                   	push   %esi
     d15:	be 64 00 00 00       	mov    $0x64,%esi
     d1a:	53                   	push   %ebx
     d1b:	83 ec 2c             	sub    $0x2c,%esp
    if(pid < 0){
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
      if(wait(&child_status) != pid){
     d1e:	8d 7d e4             	lea    -0x1c(%ebp),%edi
     d21:	eb 18                	jmp    d3b <exitwait+0x2b>
     d23:	90                   	nop
     d24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
     d28:	74 7a                	je     da4 <exitwait+0x94>
      if(wait(&child_status) != pid){
     d2a:	89 3c 24             	mov    %edi,(%esp)
     d2d:	e8 38 32 00 00       	call   3f6a <wait>
     d32:	39 d8                	cmp    %ebx,%eax
     d34:	75 32                	jne    d68 <exitwait+0x58>
exitwait(void)
{
  int i, pid;
  int child_status;

  for(i = 0; i < 100; i++){
     d36:	83 ee 01             	sub    $0x1,%esi
     d39:	74 4d                	je     d88 <exitwait+0x78>
     d3b:	90                   	nop
     d3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    pid = fork();
     d40:	e8 15 32 00 00       	call   3f5a <fork>
    if(pid < 0){
     d45:	85 c0                	test   %eax,%eax
{
  int i, pid;
  int child_status;

  for(i = 0; i < 100; i++){
    pid = fork();
     d47:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     d49:	79 dd                	jns    d28 <exitwait+0x18>
      printf(1, "fork failed\n");
     d4b:	c7 44 24 04 59 53 00 	movl   $0x5359,0x4(%esp)
     d52:	00 
     d53:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d5a:	e8 51 33 00 00       	call   40b0 <printf>
    } else {
      exit(0);
    }
  }
  printf(1, "exitwait ok\n");
}
     d5f:	83 c4 2c             	add    $0x2c,%esp
     d62:	5b                   	pop    %ebx
     d63:	5e                   	pop    %esi
     d64:	5f                   	pop    %edi
     d65:	5d                   	pop    %ebp
     d66:	c3                   	ret    
     d67:	90                   	nop
      printf(1, "fork failed\n");
      return;
    }
    if(pid){
      if(wait(&child_status) != pid){
        printf(1, "wait wrong pid\n");
     d68:	c7 44 24 04 fb 47 00 	movl   $0x47fb,0x4(%esp)
     d6f:	00 
     d70:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d77:	e8 34 33 00 00       	call   40b0 <printf>
    } else {
      exit(0);
    }
  }
  printf(1, "exitwait ok\n");
}
     d7c:	83 c4 2c             	add    $0x2c,%esp
     d7f:	5b                   	pop    %ebx
     d80:	5e                   	pop    %esi
     d81:	5f                   	pop    %edi
     d82:	5d                   	pop    %ebp
     d83:	c3                   	ret    
     d84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      }
    } else {
      exit(0);
    }
  }
  printf(1, "exitwait ok\n");
     d88:	c7 44 24 04 0b 48 00 	movl   $0x480b,0x4(%esp)
     d8f:	00 
     d90:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d97:	e8 14 33 00 00       	call   40b0 <printf>
}
     d9c:	83 c4 2c             	add    $0x2c,%esp
     d9f:	5b                   	pop    %ebx
     da0:	5e                   	pop    %esi
     da1:	5f                   	pop    %edi
     da2:	5d                   	pop    %ebp
     da3:	c3                   	ret    
      if(wait(&child_status) != pid){
        printf(1, "wait wrong pid\n");
        return;
      }
    } else {
      exit(0);
     da4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     dab:	e8 b2 31 00 00       	call   3f62 <exit>

00000db0 <mem>:
  printf(1, "exitwait ok\n");
}

void
mem(void)
{
     db0:	55                   	push   %ebp
     db1:	89 e5                	mov    %esp,%ebp
     db3:	57                   	push   %edi
     db4:	56                   	push   %esi
     db5:	53                   	push   %ebx
     db6:	83 ec 2c             	sub    $0x2c,%esp
  void *m1, *m2;
  int pid, ppid;
  int child_status;

  printf(1, "mem test\n");
     db9:	c7 44 24 04 18 48 00 	movl   $0x4818,0x4(%esp)
     dc0:	00 
     dc1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     dc8:	e8 e3 32 00 00       	call   40b0 <printf>
  ppid = getpid();
     dcd:	e8 10 32 00 00       	call   3fe2 <getpid>
     dd2:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     dd4:	e8 81 31 00 00       	call   3f5a <fork>
     dd9:	85 c0                	test   %eax,%eax
     ddb:	75 73                	jne    e50 <mem+0xa0>
     ddd:	31 db                	xor    %ebx,%ebx
     ddf:	90                   	nop
     de0:	eb 0a                	jmp    dec <mem+0x3c>
     de2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
     de8:	89 18                	mov    %ebx,(%eax)
     dea:	89 c3                	mov    %eax,%ebx

  printf(1, "mem test\n");
  ppid = getpid();
  if((pid = fork()) == 0){
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
     dec:	c7 04 24 11 27 00 00 	movl   $0x2711,(%esp)
     df3:	e8 38 35 00 00       	call   4330 <malloc>
     df8:	85 c0                	test   %eax,%eax
     dfa:	75 ec                	jne    de8 <mem+0x38>
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
     dfc:	85 db                	test   %ebx,%ebx
     dfe:	75 0a                	jne    e0a <mem+0x5a>
     e00:	eb 16                	jmp    e18 <mem+0x68>
     e02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      m2 = *(char**)m1;
      free(m1);
      m1 = m2;
     e08:	89 fb                	mov    %edi,%ebx
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
      m2 = *(char**)m1;
     e0a:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     e0c:	89 1c 24             	mov    %ebx,(%esp)
     e0f:	e8 8c 34 00 00       	call   42a0 <free>
    m1 = 0;
    while((m2 = malloc(10001)) != 0){
      *(char**)m2 = m1;
      m1 = m2;
    }
    while(m1){
     e14:	85 ff                	test   %edi,%edi
     e16:	75 f0                	jne    e08 <mem+0x58>
      m2 = *(char**)m1;
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
     e18:	c7 04 24 00 50 00 00 	movl   $0x5000,(%esp)
     e1f:	e8 0c 35 00 00       	call   4330 <malloc>
    if(m1 == 0){
     e24:	85 c0                	test   %eax,%eax
     e26:	74 40                	je     e68 <mem+0xb8>
      printf(1, "couldn't allocate mem?!!\n");
      kill(ppid);
      exit(0);
    }
    free(m1);
     e28:	89 04 24             	mov    %eax,(%esp)
     e2b:	e8 70 34 00 00       	call   42a0 <free>
    printf(1, "mem ok\n");
     e30:	c7 44 24 04 3c 48 00 	movl   $0x483c,0x4(%esp)
     e37:	00 
     e38:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e3f:	e8 6c 32 00 00       	call   40b0 <printf>
    exit(0);
     e44:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e4b:	e8 12 31 00 00       	call   3f62 <exit>
  } else {
    wait(&child_status);
     e50:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     e53:	89 04 24             	mov    %eax,(%esp)
     e56:	e8 0f 31 00 00       	call   3f6a <wait>
  }
}
     e5b:	83 c4 2c             	add    $0x2c,%esp
     e5e:	5b                   	pop    %ebx
     e5f:	5e                   	pop    %esi
     e60:	5f                   	pop    %edi
     e61:	5d                   	pop    %ebp
     e62:	c3                   	ret    
     e63:	90                   	nop
     e64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      free(m1);
      m1 = m2;
    }
    m1 = malloc(1024*20);
    if(m1 == 0){
      printf(1, "couldn't allocate mem?!!\n");
     e68:	c7 44 24 04 22 48 00 	movl   $0x4822,0x4(%esp)
     e6f:	00 
     e70:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e77:	e8 34 32 00 00       	call   40b0 <printf>
      kill(ppid);
     e7c:	89 34 24             	mov    %esi,(%esp)
     e7f:	e8 0e 31 00 00       	call   3f92 <kill>
      exit(0);
     e84:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e8b:	e8 d2 30 00 00       	call   3f62 <exit>

00000e90 <sharedfd>:

// two processes write to the same file descriptor
// is the offset shared? does inode locking work?
void
sharedfd(void)
{
     e90:	55                   	push   %ebp
     e91:	89 e5                	mov    %esp,%ebp
     e93:	57                   	push   %edi
     e94:	56                   	push   %esi
     e95:	53                   	push   %ebx
     e96:	83 ec 3c             	sub    $0x3c,%esp
  int fd, pid, i, n, nc, np;
  char buf[10];
  int child_status;

  printf(1, "sharedfd test\n");
     e99:	c7 44 24 04 44 48 00 	movl   $0x4844,0x4(%esp)
     ea0:	00 
     ea1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ea8:	e8 03 32 00 00       	call   40b0 <printf>

  unlink("sharedfd");
     ead:	c7 04 24 53 48 00 00 	movl   $0x4853,(%esp)
     eb4:	e8 f9 30 00 00       	call   3fb2 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     eb9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     ec0:	00 
     ec1:	c7 04 24 53 48 00 00 	movl   $0x4853,(%esp)
     ec8:	e8 d5 30 00 00       	call   3fa2 <open>
  if(fd < 0){
     ecd:	85 c0                	test   %eax,%eax
  int child_status;

  printf(1, "sharedfd test\n");

  unlink("sharedfd");
  fd = open("sharedfd", O_CREATE|O_RDWR);
     ecf:	89 c7                	mov    %eax,%edi
  if(fd < 0){
     ed1:	0f 88 48 01 00 00    	js     101f <sharedfd+0x18f>
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
     ed7:	e8 7e 30 00 00       	call   3f5a <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     edc:	8d 75 de             	lea    -0x22(%ebp),%esi
     edf:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     ee4:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     eeb:	00 
     eec:	89 34 24             	mov    %esi,(%esp)
     eef:	83 f8 01             	cmp    $0x1,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    return;
  }
  pid = fork();
     ef2:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     ef5:	19 c0                	sbb    %eax,%eax
     ef7:	83 e0 f3             	and    $0xfffffff3,%eax
     efa:	83 c0 70             	add    $0x70,%eax
     efd:	89 44 24 04          	mov    %eax,0x4(%esp)
     f01:	e8 ea 2e 00 00       	call   3df0 <memset>
     f06:	eb 05                	jmp    f0d <sharedfd+0x7d>
  for(i = 0; i < 1000; i++){
     f08:	83 eb 01             	sub    $0x1,%ebx
     f0b:	74 2d                	je     f3a <sharedfd+0xaa>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     f0d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f14:	00 
     f15:	89 74 24 04          	mov    %esi,0x4(%esp)
     f19:	89 3c 24             	mov    %edi,(%esp)
     f1c:	e8 61 30 00 00       	call   3f82 <write>
     f21:	83 f8 0a             	cmp    $0xa,%eax
     f24:	74 e2                	je     f08 <sharedfd+0x78>
      printf(1, "fstests: write sharedfd failed\n");
     f26:	c7 44 24 04 44 55 00 	movl   $0x5544,0x4(%esp)
     f2d:	00 
     f2e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f35:	e8 76 31 00 00       	call   40b0 <printf>
      break;
    }
  }
  if(pid == 0)
     f3a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     f3d:	85 c0                	test   %eax,%eax
     f3f:	0f 84 2e 01 00 00    	je     1073 <sharedfd+0x1e3>
    exit(0);
  else
    wait(&child_status);
     f45:	8d 45 d8             	lea    -0x28(%ebp),%eax
     f48:	89 04 24             	mov    %eax,(%esp)
     f4b:	e8 1a 30 00 00       	call   3f6a <wait>
  close(fd);
     f50:	89 3c 24             	mov    %edi,(%esp)
     f53:	e8 32 30 00 00       	call   3f8a <close>
  fd = open("sharedfd", 0);
     f58:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     f5f:	00 
     f60:	c7 04 24 53 48 00 00 	movl   $0x4853,(%esp)
     f67:	e8 36 30 00 00       	call   3fa2 <open>
  if(fd < 0){
     f6c:	85 c0                	test   %eax,%eax
  if(pid == 0)
    exit(0);
  else
    wait(&child_status);
  close(fd);
  fd = open("sharedfd", 0);
     f6e:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     f71:	0f 88 c4 00 00 00    	js     103b <sharedfd+0x1ab>
     f77:	31 d2                	xor    %edx,%edx
     f79:	31 db                	xor    %ebx,%ebx
     f7b:	8d 7d e8             	lea    -0x18(%ebp),%edi
     f7e:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     f81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
     f88:	8b 45 d0             	mov    -0x30(%ebp),%eax
     f8b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f92:	00 
     f93:	89 74 24 04          	mov    %esi,0x4(%esp)
     f97:	89 04 24             	mov    %eax,(%esp)
     f9a:	e8 db 2f 00 00       	call   3f7a <read>
     f9f:	85 c0                	test   %eax,%eax
     fa1:	7e 36                	jle    fd9 <sharedfd+0x149>
     fa3:	89 f0                	mov    %esi,%eax
     fa5:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     fa8:	eb 18                	jmp    fc2 <sharedfd+0x132>
     faa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    for(i = 0; i < sizeof(buf); i++){
      if(buf[i] == 'c')
        nc++;
      if(buf[i] == 'p')
        np++;
     fb0:	80 f9 70             	cmp    $0x70,%cl
     fb3:	0f 94 c1             	sete   %cl
     fb6:	83 c0 01             	add    $0x1,%eax
     fb9:	0f b6 c9             	movzbl %cl,%ecx
     fbc:	01 cb                	add    %ecx,%ebx
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i = 0; i < sizeof(buf); i++){
     fbe:	39 f8                	cmp    %edi,%eax
     fc0:	74 12                	je     fd4 <sharedfd+0x144>
      if(buf[i] == 'c')
     fc2:	0f b6 08             	movzbl (%eax),%ecx
     fc5:	80 f9 63             	cmp    $0x63,%cl
     fc8:	75 e6                	jne    fb0 <sharedfd+0x120>
     fca:	83 c0 01             	add    $0x1,%eax
        nc++;
     fcd:	83 c2 01             	add    $0x1,%edx
    printf(1, "fstests: cannot open sharedfd for reading\n");
    return;
  }
  nc = np = 0;
  while((n = read(fd, buf, sizeof(buf))) > 0){
    for(i = 0; i < sizeof(buf); i++){
     fd0:	39 f8                	cmp    %edi,%eax
     fd2:	75 ee                	jne    fc2 <sharedfd+0x132>
     fd4:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     fd7:	eb af                	jmp    f88 <sharedfd+0xf8>
        nc++;
      if(buf[i] == 'p')
        np++;
    }
  }
  close(fd);
     fd9:	8b 45 d0             	mov    -0x30(%ebp),%eax
     fdc:	89 04 24             	mov    %eax,(%esp)
     fdf:	e8 a6 2f 00 00       	call   3f8a <close>
  unlink("sharedfd");
     fe4:	c7 04 24 53 48 00 00 	movl   $0x4853,(%esp)
     feb:	e8 c2 2f 00 00       	call   3fb2 <unlink>
  if(nc == 10000 && np == 10000){
     ff0:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     ff6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     ff9:	75 5c                	jne    1057 <sharedfd+0x1c7>
     ffb:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1001:	75 54                	jne    1057 <sharedfd+0x1c7>
    printf(1, "sharedfd ok\n");
    1003:	c7 44 24 04 5c 48 00 	movl   $0x485c,0x4(%esp)
    100a:	00 
    100b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1012:	e8 99 30 00 00       	call   40b0 <printf>
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit(0);
  }
}
    1017:	83 c4 3c             	add    $0x3c,%esp
    101a:	5b                   	pop    %ebx
    101b:	5e                   	pop    %esi
    101c:	5f                   	pop    %edi
    101d:	5d                   	pop    %ebp
    101e:	c3                   	ret    
  printf(1, "sharedfd test\n");

  unlink("sharedfd");
  fd = open("sharedfd", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for writing");
    101f:	c7 44 24 04 18 55 00 	movl   $0x5518,0x4(%esp)
    1026:	00 
    1027:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    102e:	e8 7d 30 00 00       	call   40b0 <printf>
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit(0);
  }
}
    1033:	83 c4 3c             	add    $0x3c,%esp
    1036:	5b                   	pop    %ebx
    1037:	5e                   	pop    %esi
    1038:	5f                   	pop    %edi
    1039:	5d                   	pop    %ebp
    103a:	c3                   	ret    
  else
    wait(&child_status);
  close(fd);
  fd = open("sharedfd", 0);
  if(fd < 0){
    printf(1, "fstests: cannot open sharedfd for reading\n");
    103b:	c7 44 24 04 64 55 00 	movl   $0x5564,0x4(%esp)
    1042:	00 
    1043:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    104a:	e8 61 30 00 00       	call   40b0 <printf>
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    exit(0);
  }
}
    104f:	83 c4 3c             	add    $0x3c,%esp
    1052:	5b                   	pop    %ebx
    1053:	5e                   	pop    %esi
    1054:	5f                   	pop    %edi
    1055:	5d                   	pop    %ebp
    1056:	c3                   	ret    
  close(fd);
  unlink("sharedfd");
  if(nc == 10000 && np == 10000){
    printf(1, "sharedfd ok\n");
  } else {
    printf(1, "sharedfd oops %d %d\n", nc, np);
    1057:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    105b:	89 54 24 08          	mov    %edx,0x8(%esp)
    105f:	c7 44 24 04 69 48 00 	movl   $0x4869,0x4(%esp)
    1066:	00 
    1067:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    106e:	e8 3d 30 00 00       	call   40b0 <printf>
    exit(0);
    1073:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    107a:	e8 e3 2e 00 00       	call   3f62 <exit>
    107f:	90                   	nop

00001080 <fourfiles>:

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    1080:	55                   	push   %ebp
    1081:	89 e5                	mov    %esp,%ebp
    1083:	57                   	push   %edi
    1084:	56                   	push   %esi
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;
  int child_status;

  printf(1, "fourfiles test\n");
    1085:	be 7e 48 00 00       	mov    $0x487e,%esi

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    108a:	53                   	push   %ebx
  char *fname;
  int child_status;

  printf(1, "fourfiles test\n");

  for(pi = 0; pi < 4; pi++){
    108b:	31 db                	xor    %ebx,%ebx

// four processes write different files at the same
// time, to test block allocation.
void
fourfiles(void)
{
    108d:	83 ec 3c             	sub    $0x3c,%esp
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
  char *fname;
  int child_status;

  printf(1, "fourfiles test\n");
    1090:	c7 44 24 04 84 48 00 	movl   $0x4884,0x4(%esp)
    1097:	00 
    1098:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
// time, to test block allocation.
void
fourfiles(void)
{
  int fd, pid, i, j, n, total, pi;
  char *names[] = { "f0", "f1", "f2", "f3" };
    109f:	c7 45 d8 7e 48 00 00 	movl   $0x487e,-0x28(%ebp)
    10a6:	c7 45 dc c7 49 00 00 	movl   $0x49c7,-0x24(%ebp)
    10ad:	c7 45 e0 cb 49 00 00 	movl   $0x49cb,-0x20(%ebp)
    10b4:	c7 45 e4 81 48 00 00 	movl   $0x4881,-0x1c(%ebp)
  char *fname;
  int child_status;

  printf(1, "fourfiles test\n");
    10bb:	e8 f0 2f 00 00       	call   40b0 <printf>

  for(pi = 0; pi < 4; pi++){
    fname = names[pi];
    unlink(fname);
    10c0:	89 34 24             	mov    %esi,(%esp)
    10c3:	e8 ea 2e 00 00       	call   3fb2 <unlink>

    pid = fork();
    10c8:	e8 8d 2e 00 00       	call   3f5a <fork>
    if(pid < 0){
    10cd:	85 c0                	test   %eax,%eax
    10cf:	0f 88 8b 01 00 00    	js     1260 <fourfiles+0x1e0>
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
    10d5:	0f 84 fb 00 00 00    	je     11d6 <fourfiles+0x156>
  char *fname;
  int child_status;

  printf(1, "fourfiles test\n");

  for(pi = 0; pi < 4; pi++){
    10db:	83 c3 01             	add    $0x1,%ebx
    10de:	83 fb 04             	cmp    $0x4,%ebx
    10e1:	74 06                	je     10e9 <fourfiles+0x69>
    10e3:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    10e7:	eb d7                	jmp    10c0 <fourfiles+0x40>
      exit(0);
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(&child_status);
    10e9:	8d 5d d4             	lea    -0x2c(%ebp),%ebx
    10ec:	bf 30 00 00 00       	mov    $0x30,%edi
    10f1:	89 1c 24             	mov    %ebx,(%esp)
    10f4:	e8 71 2e 00 00       	call   3f6a <wait>
    10f9:	89 1c 24             	mov    %ebx,(%esp)
    10fc:	e8 69 2e 00 00       	call   3f6a <wait>
    1101:	89 1c 24             	mov    %ebx,(%esp)
    1104:	e8 61 2e 00 00       	call   3f6a <wait>
    1109:	89 1c 24             	mov    %ebx,(%esp)
    110c:	e8 59 2e 00 00       	call   3f6a <wait>
    1111:	c7 45 c4 7e 48 00 00 	movl   $0x487e,-0x3c(%ebp)
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    1118:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    total = 0;
    111b:	31 db                	xor    %ebx,%ebx
    wait(&child_status);
  }

  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    111d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1124:	00 
    1125:	89 04 24             	mov    %eax,(%esp)
    1128:	e8 75 2e 00 00       	call   3fa2 <open>
    112d:	89 c6                	mov    %eax,%esi
    112f:	90                   	nop
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1130:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1137:	00 
    1138:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
    113f:	00 
    1140:	89 34 24             	mov    %esi,(%esp)
    1143:	e8 32 2e 00 00       	call   3f7a <read>
    1148:	85 c0                	test   %eax,%eax
    114a:	7e 1a                	jle    1166 <fourfiles+0xe6>
    114c:	31 d2                	xor    %edx,%edx
    114e:	66 90                	xchg   %ax,%ax
      for(j = 0; j < n; j++){
        if(buf[j] != '0'+i){
    1150:	0f be 8a 80 8c 00 00 	movsbl 0x8c80(%edx),%ecx
    1157:	39 f9                	cmp    %edi,%ecx
    1159:	75 5b                	jne    11b6 <fourfiles+0x136>
  for(i = 0; i < 2; i++){
    fname = names[i];
    fd = open(fname, 0);
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
      for(j = 0; j < n; j++){
    115b:	83 c2 01             	add    $0x1,%edx
    115e:	39 c2                	cmp    %eax,%edx
    1160:	75 ee                	jne    1150 <fourfiles+0xd0>
        if(buf[j] != '0'+i){
          printf(1, "wrong char\n");
          exit(0);
        }
      }
      total += n;
    1162:	01 d3                	add    %edx,%ebx
    1164:	eb ca                	jmp    1130 <fourfiles+0xb0>
    }
    close(fd);
    1166:	89 34 24             	mov    %esi,(%esp)
    1169:	e8 1c 2e 00 00       	call   3f8a <close>
    if(total != 12*500){
    116e:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1174:	0f 85 06 01 00 00    	jne    1280 <fourfiles+0x200>
      printf(1, "wrong length %d\n", total);
      exit(0);
    }
    unlink(fname);
    117a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    117d:	89 04 24             	mov    %eax,(%esp)
    1180:	e8 2d 2e 00 00       	call   3fb2 <unlink>

  for(pi = 0; pi < 4; pi++){
    wait(&child_status);
  }

  for(i = 0; i < 2; i++){
    1185:	83 ff 31             	cmp    $0x31,%edi
    1188:	75 1c                	jne    11a6 <fourfiles+0x126>
      exit(0);
    }
    unlink(fname);
  }

  printf(1, "fourfiles ok\n");
    118a:	c7 44 24 04 c2 48 00 	movl   $0x48c2,0x4(%esp)
    1191:	00 
    1192:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1199:	e8 12 2f 00 00       	call   40b0 <printf>
}
    119e:	83 c4 3c             	add    $0x3c,%esp
    11a1:	5b                   	pop    %ebx
    11a2:	5e                   	pop    %esi
    11a3:	5f                   	pop    %edi
    11a4:	5d                   	pop    %ebp
    11a5:	c3                   	ret    
    11a6:	8b 45 dc             	mov    -0x24(%ebp),%eax
    11a9:	bf 31 00 00 00       	mov    $0x31,%edi
    11ae:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    11b1:	e9 62 ff ff ff       	jmp    1118 <fourfiles+0x98>
    fd = open(fname, 0);
    total = 0;
    while((n = read(fd, buf, sizeof(buf))) > 0){
      for(j = 0; j < n; j++){
        if(buf[j] != '0'+i){
          printf(1, "wrong char\n");
    11b6:	c7 44 24 04 a5 48 00 	movl   $0x48a5,0x4(%esp)
    11bd:	00 
    11be:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    11c5:	e8 e6 2e 00 00       	call   40b0 <printf>
          exit(0);
    11ca:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    11d1:	e8 8c 2d 00 00       	call   3f62 <exit>
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
    11d6:	89 34 24             	mov    %esi,(%esp)
    11d9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    11e0:	00 
    11e1:	e8 bc 2d 00 00       	call   3fa2 <open>
      if(fd < 0){
    11e6:	85 c0                	test   %eax,%eax
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
    11e8:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    11ea:	0f 88 b4 00 00 00    	js     12a4 <fourfiles+0x224>
        printf(1, "create failed\n");
        exit(0);
      }

      memset(buf, '0'+pi, 512);
    11f0:	83 c3 30             	add    $0x30,%ebx
    11f3:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    11f7:	bb 0c 00 00 00       	mov    $0xc,%ebx
    11fc:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    1203:	00 
    1204:	c7 04 24 80 8c 00 00 	movl   $0x8c80,(%esp)
    120b:	e8 e0 2b 00 00       	call   3df0 <memset>
    1210:	eb 0b                	jmp    121d <fourfiles+0x19d>
    1212:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      for(i = 0; i < 12; i++){
    1218:	83 eb 01             	sub    $0x1,%ebx
    121b:	74 ad                	je     11ca <fourfiles+0x14a>
        if((n = write(fd, buf, 500)) != 500){
    121d:	c7 44 24 08 f4 01 00 	movl   $0x1f4,0x8(%esp)
    1224:	00 
    1225:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
    122c:	00 
    122d:	89 34 24             	mov    %esi,(%esp)
    1230:	e8 4d 2d 00 00       	call   3f82 <write>
    1235:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    123a:	74 dc                	je     1218 <fourfiles+0x198>
          printf(1, "write failed %d\n", n);
    123c:	89 44 24 08          	mov    %eax,0x8(%esp)
    1240:	c7 44 24 04 94 48 00 	movl   $0x4894,0x4(%esp)
    1247:	00 
    1248:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    124f:	e8 5c 2e 00 00       	call   40b0 <printf>
          exit(0);
    1254:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    125b:	e8 02 2d 00 00       	call   3f62 <exit>
    fname = names[pi];
    unlink(fname);

    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1260:	c7 44 24 04 59 53 00 	movl   $0x5359,0x4(%esp)
    1267:	00 
    1268:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    126f:	e8 3c 2e 00 00       	call   40b0 <printf>
      exit(0);
    1274:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    127b:	e8 e2 2c 00 00       	call   3f62 <exit>
      }
      total += n;
    }
    close(fd);
    if(total != 12*500){
      printf(1, "wrong length %d\n", total);
    1280:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1284:	c7 44 24 04 b1 48 00 	movl   $0x48b1,0x4(%esp)
    128b:	00 
    128c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1293:	e8 18 2e 00 00       	call   40b0 <printf>
      exit(0);
    1298:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    129f:	e8 be 2c 00 00       	call   3f62 <exit>
    }

    if(pid == 0){
      fd = open(fname, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "create failed\n");
    12a4:	c7 44 24 04 1f 4b 00 	movl   $0x4b1f,0x4(%esp)
    12ab:	00 
    12ac:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12b3:	e8 f8 2d 00 00       	call   40b0 <printf>
        exit(0);
    12b8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    12bf:	e8 9e 2c 00 00       	call   3f62 <exit>
    12c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    12ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000012d0 <createdelete>:
}

// four processes create and delete different files in same directory
void
createdelete(void)
{
    12d0:	55                   	push   %ebp
    12d1:	89 e5                	mov    %esp,%ebp
    12d3:	57                   	push   %edi
    12d4:	56                   	push   %esi
    12d5:	53                   	push   %ebx
  char name[32];
  int child_status;

  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    12d6:	31 db                	xor    %ebx,%ebx
}

// four processes create and delete different files in same directory
void
createdelete(void)
{
    12d8:	83 ec 5c             	sub    $0x5c,%esp
  enum { N = 20 };
  int pid, i, fd, pi;
  char name[32];
  int child_status;

  printf(1, "createdelete test\n");
    12db:	c7 44 24 04 d0 48 00 	movl   $0x48d0,0x4(%esp)
    12e2:	00 
    12e3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12ea:	e8 c1 2d 00 00       	call   40b0 <printf>

  for(pi = 0; pi < 4; pi++){
    pid = fork();
    12ef:	e8 66 2c 00 00       	call   3f5a <fork>
    if(pid < 0){
    12f4:	85 c0                	test   %eax,%eax
    12f6:	0f 88 f8 01 00 00    	js     14f4 <createdelete+0x224>
    12fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
    1300:	0f 84 24 01 00 00    	je     142a <createdelete+0x15a>
  char name[32];
  int child_status;

  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    1306:	83 c3 01             	add    $0x1,%ebx
    1309:	83 fb 04             	cmp    $0x4,%ebx
    130c:	75 e1                	jne    12ef <createdelete+0x1f>
      exit(0);
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(&child_status);
    130e:	8d 5d c4             	lea    -0x3c(%ebp),%ebx
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    1311:	31 f6                	xor    %esi,%esi
      exit(0);
    }
  }

  for(pi = 0; pi < 4; pi++){
    wait(&child_status);
    1313:	89 1c 24             	mov    %ebx,(%esp)
    1316:	8d 7d c8             	lea    -0x38(%ebp),%edi
    1319:	e8 4c 2c 00 00       	call   3f6a <wait>
    131e:	89 1c 24             	mov    %ebx,(%esp)
    1321:	e8 44 2c 00 00       	call   3f6a <wait>
    1326:	89 1c 24             	mov    %ebx,(%esp)
    1329:	e8 3c 2c 00 00       	call   3f6a <wait>
    132e:	89 1c 24             	mov    %ebx,(%esp)
    1331:	e8 34 2c 00 00       	call   3f6a <wait>
  }

  name[0] = name[1] = name[2] = 0;
    1336:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    133a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1340:	83 fe 09             	cmp    $0x9,%esi
      exit(0);
    }

    if(pid == 0){
      name[0] = 'p' + pi;
      name[2] = '\0';
    1343:	bb 70 00 00 00       	mov    $0x70,%ebx
    1348:	8d 46 30             	lea    0x30(%esi),%eax
    134b:	0f 9f 45 b7          	setg   -0x49(%ebp)
    134f:	85 f6                	test   %esi,%esi
    1351:	88 45 b6             	mov    %al,-0x4a(%ebp)
    1354:	0f 94 c0             	sete   %al
    1357:	08 45 b7             	or     %al,-0x49(%ebp)
    135a:	8d 46 ff             	lea    -0x1(%esi),%eax
    135d:	89 45 b0             	mov    %eax,-0x50(%ebp)

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
    1360:	0f b6 45 b6          	movzbl -0x4a(%ebp),%eax
      fd = open(name, 0);
    1364:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    136b:	00 
    136c:	89 3c 24             	mov    %edi,(%esp)
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
    136f:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    1372:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    1375:	e8 28 2c 00 00       	call   3fa2 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    137a:	80 7d b7 00          	cmpb   $0x0,-0x49(%ebp)
    137e:	0f 84 84 00 00 00    	je     1408 <createdelete+0x138>
    1384:	85 c0                	test   %eax,%eax
    1386:	0f 88 24 01 00 00    	js     14b0 <createdelete+0x1e0>
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit(0);
      } else if((i >= 1 && i < N/2) && fd >= 0){
    138c:	83 7d b0 08          	cmpl   $0x8,-0x50(%ebp)
    1390:	0f 86 7e 01 00 00    	jbe    1514 <createdelete+0x244>
        printf(1, "oops createdelete %s did exist\n", name);
        exit(0);
      }
      if(fd >= 0)
        close(fd);
    1396:	89 04 24             	mov    %eax,(%esp)
    1399:	83 c3 01             	add    $0x1,%ebx
    139c:	e8 e9 2b 00 00       	call   3f8a <close>
    wait(&child_status);
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    13a1:	80 fb 74             	cmp    $0x74,%bl
    13a4:	75 ba                	jne    1360 <createdelete+0x90>
  for(pi = 0; pi < 4; pi++){
    wait(&child_status);
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    13a6:	83 c6 01             	add    $0x1,%esi
    13a9:	83 fe 14             	cmp    $0x14,%esi
    13ac:	75 92                	jne    1340 <createdelete+0x70>
    13ae:	be 70 00 00 00       	mov    $0x70,%esi
    13b3:	90                   	nop
    13b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13b8:	8d 46 c0             	lea    -0x40(%esi),%eax
    13bb:	bb 04 00 00 00       	mov    $0x4,%ebx
    13c0:	88 45 b7             	mov    %al,-0x49(%ebp)
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
    13c3:	89 f0                	mov    %esi,%eax
    13c5:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    13c8:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
      unlink(name);
    13cc:	89 3c 24             	mov    %edi,(%esp)
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + i;
      name[1] = '0' + i;
    13cf:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    13d2:	e8 db 2b 00 00       	call   3fb2 <unlink>
        close(fd);
    }
  }

  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    13d7:	83 eb 01             	sub    $0x1,%ebx
    13da:	75 e7                	jne    13c3 <createdelete+0xf3>
    13dc:	83 c6 01             	add    $0x1,%esi
      if(fd >= 0)
        close(fd);
    }
  }

  for(i = 0; i < N; i++){
    13df:	89 f0                	mov    %esi,%eax
    13e1:	3c 84                	cmp    $0x84,%al
    13e3:	75 d3                	jne    13b8 <createdelete+0xe8>
      name[1] = '0' + i;
      unlink(name);
    }
  }

  printf(1, "createdelete ok\n");
    13e5:	c7 44 24 04 e3 48 00 	movl   $0x48e3,0x4(%esp)
    13ec:	00 
    13ed:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    13f4:	e8 b7 2c 00 00       	call   40b0 <printf>
}
    13f9:	83 c4 5c             	add    $0x5c,%esp
    13fc:	5b                   	pop    %ebx
    13fd:	5e                   	pop    %esi
    13fe:	5f                   	pop    %edi
    13ff:	5d                   	pop    %ebp
    1400:	c3                   	ret    
    1401:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit(0);
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1408:	85 c0                	test   %eax,%eax
    140a:	0f 89 04 01 00 00    	jns    1514 <createdelete+0x244>
    1410:	83 c3 01             	add    $0x1,%ebx
    wait(&child_status);
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    for(pi = 0; pi < 4; pi++){
    1413:	80 fb 74             	cmp    $0x74,%bl
    1416:	0f 85 44 ff ff ff    	jne    1360 <createdelete+0x90>
  for(pi = 0; pi < 4; pi++){
    wait(&child_status);
  }

  name[0] = name[1] = name[2] = 0;
  for(i = 0; i < N; i++){
    141c:	83 c6 01             	add    $0x1,%esi
    141f:	83 fe 14             	cmp    $0x14,%esi
    1422:	0f 85 18 ff ff ff    	jne    1340 <createdelete+0x70>
    1428:	eb 84                	jmp    13ae <createdelete+0xde>
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      name[0] = 'p' + pi;
    142a:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    142d:	be 01 00 00 00       	mov    $0x1,%esi
      printf(1, "fork failed\n");
      exit(0);
    }

    if(pid == 0){
      name[0] = 'p' + pi;
    1432:	88 5d c8             	mov    %bl,-0x38(%ebp)
    1435:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[2] = '\0';
    1438:	31 db                	xor    %ebx,%ebx
    143a:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    143e:	eb 0f                	jmp    144f <createdelete+0x17f>
      for(i = 0; i < N; i++){
    1440:	83 fe 14             	cmp    $0x14,%esi
    1443:	0f 84 7f 00 00 00    	je     14c8 <createdelete+0x1f8>
    1449:	83 c3 01             	add    $0x1,%ebx
    144c:	83 c6 01             	add    $0x1,%esi
    144f:	8d 43 30             	lea    0x30(%ebx),%eax
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
    1452:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1459:	00 
    145a:	89 3c 24             	mov    %edi,(%esp)
    145d:	88 45 c9             	mov    %al,-0x37(%ebp)
    1460:	e8 3d 2b 00 00       	call   3fa2 <open>
        if(fd < 0){
    1465:	85 c0                	test   %eax,%eax
    1467:	78 6b                	js     14d4 <createdelete+0x204>
          printf(1, "create failed\n");
          exit(0);
        }
        close(fd);
    1469:	89 04 24             	mov    %eax,(%esp)
    146c:	e8 19 2b 00 00       	call   3f8a <close>
        if(i > 0 && (i % 2 ) == 0){
    1471:	85 db                	test   %ebx,%ebx
    1473:	74 d4                	je     1449 <createdelete+0x179>
    1475:	f6 c3 01             	test   $0x1,%bl
    1478:	75 c6                	jne    1440 <createdelete+0x170>
          name[1] = '0' + (i / 2);
    147a:	89 d8                	mov    %ebx,%eax
    147c:	d1 f8                	sar    %eax
    147e:	83 c0 30             	add    $0x30,%eax
          if(unlink(name) < 0){
    1481:	89 3c 24             	mov    %edi,(%esp)
          printf(1, "create failed\n");
          exit(0);
        }
        close(fd);
        if(i > 0 && (i % 2 ) == 0){
          name[1] = '0' + (i / 2);
    1484:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    1487:	e8 26 2b 00 00       	call   3fb2 <unlink>
    148c:	85 c0                	test   %eax,%eax
    148e:	79 b0                	jns    1440 <createdelete+0x170>
            printf(1, "unlink failed\n");
    1490:	c7 44 24 04 d1 44 00 	movl   $0x44d1,0x4(%esp)
    1497:	00 
    1498:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    149f:	e8 0c 2c 00 00       	call   40b0 <printf>
            exit(0);
    14a4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14ab:	e8 b2 2a 00 00       	call   3f62 <exit>
    for(pi = 0; pi < 4; pi++){
      name[0] = 'p' + pi;
      name[1] = '0' + i;
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
    14b0:	89 7c 24 08          	mov    %edi,0x8(%esp)
    14b4:	c7 44 24 04 90 55 00 	movl   $0x5590,0x4(%esp)
    14bb:	00 
    14bc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    14c3:	e8 e8 2b 00 00       	call   40b0 <printf>
        exit(0);
    14c8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14cf:	e8 8e 2a 00 00       	call   3f62 <exit>
      name[2] = '\0';
      for(i = 0; i < N; i++){
        name[1] = '0' + i;
        fd = open(name, O_CREATE | O_RDWR);
        if(fd < 0){
          printf(1, "create failed\n");
    14d4:	c7 44 24 04 1f 4b 00 	movl   $0x4b1f,0x4(%esp)
    14db:	00 
    14dc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    14e3:	e8 c8 2b 00 00       	call   40b0 <printf>
          exit(0);
    14e8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14ef:	e8 6e 2a 00 00       	call   3f62 <exit>
  printf(1, "createdelete test\n");

  for(pi = 0; pi < 4; pi++){
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    14f4:	c7 44 24 04 59 53 00 	movl   $0x5359,0x4(%esp)
    14fb:	00 
    14fc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1503:	e8 a8 2b 00 00       	call   40b0 <printf>
      exit(0);
    1508:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    150f:	e8 4e 2a 00 00       	call   3f62 <exit>
      fd = open(name, 0);
      if((i == 0 || i >= N/2) && fd < 0){
        printf(1, "oops createdelete %s didn't exist\n", name);
        exit(0);
      } else if((i >= 1 && i < N/2) && fd >= 0){
        printf(1, "oops createdelete %s did exist\n", name);
    1514:	89 7c 24 08          	mov    %edi,0x8(%esp)
    1518:	c7 44 24 04 b4 55 00 	movl   $0x55b4,0x4(%esp)
    151f:	00 
    1520:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1527:	e8 84 2b 00 00       	call   40b0 <printf>
        exit(0);
    152c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1533:	e8 2a 2a 00 00       	call   3f62 <exit>
    1538:	90                   	nop
    1539:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001540 <unlinkread>:
}

// can I unlink a file and still read it?
void
unlinkread(void)
{
    1540:	55                   	push   %ebp
    1541:	89 e5                	mov    %esp,%ebp
    1543:	56                   	push   %esi
    1544:	53                   	push   %ebx
    1545:	83 ec 10             	sub    $0x10,%esp
  int fd, fd1;

  printf(1, "unlinkread test\n");
    1548:	c7 44 24 04 f4 48 00 	movl   $0x48f4,0x4(%esp)
    154f:	00 
    1550:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1557:	e8 54 2b 00 00       	call   40b0 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    155c:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1563:	00 
    1564:	c7 04 24 05 49 00 00 	movl   $0x4905,(%esp)
    156b:	e8 32 2a 00 00       	call   3fa2 <open>
  if(fd < 0){
    1570:	85 c0                	test   %eax,%eax
unlinkread(void)
{
  int fd, fd1;

  printf(1, "unlinkread test\n");
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1572:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1574:	0f 88 02 01 00 00    	js     167c <unlinkread+0x13c>
    printf(1, "create unlinkread failed\n");
    exit(0);
  }
  write(fd, "hello", 5);
    157a:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    1581:	00 
    1582:	c7 44 24 04 2a 49 00 	movl   $0x492a,0x4(%esp)
    1589:	00 
    158a:	89 04 24             	mov    %eax,(%esp)
    158d:	e8 f0 29 00 00       	call   3f82 <write>
  close(fd);
    1592:	89 1c 24             	mov    %ebx,(%esp)
    1595:	e8 f0 29 00 00       	call   3f8a <close>

  fd = open("unlinkread", O_RDWR);
    159a:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    15a1:	00 
    15a2:	c7 04 24 05 49 00 00 	movl   $0x4905,(%esp)
    15a9:	e8 f4 29 00 00       	call   3fa2 <open>
  if(fd < 0){
    15ae:	85 c0                	test   %eax,%eax
    exit(0);
  }
  write(fd, "hello", 5);
  close(fd);

  fd = open("unlinkread", O_RDWR);
    15b0:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    15b2:	0f 88 64 01 00 00    	js     171c <unlinkread+0x1dc>
    printf(1, "open unlinkread failed\n");
    exit(0);
  }
  if(unlink("unlinkread") != 0){
    15b8:	c7 04 24 05 49 00 00 	movl   $0x4905,(%esp)
    15bf:	e8 ee 29 00 00       	call   3fb2 <unlink>
    15c4:	85 c0                	test   %eax,%eax
    15c6:	0f 85 30 01 00 00    	jne    16fc <unlinkread+0x1bc>
    printf(1, "unlink unlinkread failed\n");
    exit(0);
  }

  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    15cc:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    15d3:	00 
    15d4:	c7 04 24 05 49 00 00 	movl   $0x4905,(%esp)
    15db:	e8 c2 29 00 00       	call   3fa2 <open>
  write(fd1, "yyy", 3);
    15e0:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
    15e7:	00 
    15e8:	c7 44 24 04 62 49 00 	movl   $0x4962,0x4(%esp)
    15ef:	00 
  if(unlink("unlinkread") != 0){
    printf(1, "unlink unlinkread failed\n");
    exit(0);
  }

  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    15f0:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    15f2:	89 04 24             	mov    %eax,(%esp)
    15f5:	e8 88 29 00 00       	call   3f82 <write>
  close(fd1);
    15fa:	89 34 24             	mov    %esi,(%esp)
    15fd:	e8 88 29 00 00       	call   3f8a <close>

  if(read(fd, buf, sizeof(buf)) != 5){
    1602:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1609:	00 
    160a:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
    1611:	00 
    1612:	89 1c 24             	mov    %ebx,(%esp)
    1615:	e8 60 29 00 00       	call   3f7a <read>
    161a:	83 f8 05             	cmp    $0x5,%eax
    161d:	0f 85 b9 00 00 00    	jne    16dc <unlinkread+0x19c>
    printf(1, "unlinkread read failed");
    exit(0);
  }
  if(buf[0] != 'h'){
    1623:	80 3d 80 8c 00 00 68 	cmpb   $0x68,0x8c80
    162a:	0f 85 8c 00 00 00    	jne    16bc <unlinkread+0x17c>
    printf(1, "unlinkread wrong data\n");
    exit(0);
  }
  if(write(fd, buf, 10) != 10){
    1630:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    1637:	00 
    1638:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
    163f:	00 
    1640:	89 1c 24             	mov    %ebx,(%esp)
    1643:	e8 3a 29 00 00       	call   3f82 <write>
    1648:	83 f8 0a             	cmp    $0xa,%eax
    164b:	75 4f                	jne    169c <unlinkread+0x15c>
    printf(1, "unlinkread write failed\n");
    exit(0);
  }
  close(fd);
    164d:	89 1c 24             	mov    %ebx,(%esp)
    1650:	e8 35 29 00 00       	call   3f8a <close>
  unlink("unlinkread");
    1655:	c7 04 24 05 49 00 00 	movl   $0x4905,(%esp)
    165c:	e8 51 29 00 00       	call   3fb2 <unlink>
  printf(1, "unlinkread ok\n");
    1661:	c7 44 24 04 ad 49 00 	movl   $0x49ad,0x4(%esp)
    1668:	00 
    1669:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1670:	e8 3b 2a 00 00       	call   40b0 <printf>
}
    1675:	83 c4 10             	add    $0x10,%esp
    1678:	5b                   	pop    %ebx
    1679:	5e                   	pop    %esi
    167a:	5d                   	pop    %ebp
    167b:	c3                   	ret    
  int fd, fd1;

  printf(1, "unlinkread test\n");
  fd = open("unlinkread", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create unlinkread failed\n");
    167c:	c7 44 24 04 10 49 00 	movl   $0x4910,0x4(%esp)
    1683:	00 
    1684:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    168b:	e8 20 2a 00 00       	call   40b0 <printf>
    exit(0);
    1690:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1697:	e8 c6 28 00 00       	call   3f62 <exit>
  if(buf[0] != 'h'){
    printf(1, "unlinkread wrong data\n");
    exit(0);
  }
  if(write(fd, buf, 10) != 10){
    printf(1, "unlinkread write failed\n");
    169c:	c7 44 24 04 94 49 00 	movl   $0x4994,0x4(%esp)
    16a3:	00 
    16a4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16ab:	e8 00 2a 00 00       	call   40b0 <printf>
    exit(0);
    16b0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    16b7:	e8 a6 28 00 00       	call   3f62 <exit>
  if(read(fd, buf, sizeof(buf)) != 5){
    printf(1, "unlinkread read failed");
    exit(0);
  }
  if(buf[0] != 'h'){
    printf(1, "unlinkread wrong data\n");
    16bc:	c7 44 24 04 7d 49 00 	movl   $0x497d,0x4(%esp)
    16c3:	00 
    16c4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16cb:	e8 e0 29 00 00       	call   40b0 <printf>
    exit(0);
    16d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    16d7:	e8 86 28 00 00       	call   3f62 <exit>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
  write(fd1, "yyy", 3);
  close(fd1);

  if(read(fd, buf, sizeof(buf)) != 5){
    printf(1, "unlinkread read failed");
    16dc:	c7 44 24 04 66 49 00 	movl   $0x4966,0x4(%esp)
    16e3:	00 
    16e4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16eb:	e8 c0 29 00 00       	call   40b0 <printf>
    exit(0);
    16f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    16f7:	e8 66 28 00 00       	call   3f62 <exit>
  if(fd < 0){
    printf(1, "open unlinkread failed\n");
    exit(0);
  }
  if(unlink("unlinkread") != 0){
    printf(1, "unlink unlinkread failed\n");
    16fc:	c7 44 24 04 48 49 00 	movl   $0x4948,0x4(%esp)
    1703:	00 
    1704:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    170b:	e8 a0 29 00 00       	call   40b0 <printf>
    exit(0);
    1710:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1717:	e8 46 28 00 00       	call   3f62 <exit>
  write(fd, "hello", 5);
  close(fd);

  fd = open("unlinkread", O_RDWR);
  if(fd < 0){
    printf(1, "open unlinkread failed\n");
    171c:	c7 44 24 04 30 49 00 	movl   $0x4930,0x4(%esp)
    1723:	00 
    1724:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    172b:	e8 80 29 00 00       	call   40b0 <printf>
    exit(0);
    1730:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1737:	e8 26 28 00 00       	call   3f62 <exit>
    173c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001740 <linktest>:
  printf(1, "unlinkread ok\n");
}

void
linktest(void)
{
    1740:	55                   	push   %ebp
    1741:	89 e5                	mov    %esp,%ebp
    1743:	53                   	push   %ebx
    1744:	83 ec 14             	sub    $0x14,%esp
  int fd;


  printf(1, "linktest\n");
    1747:	c7 44 24 04 bc 49 00 	movl   $0x49bc,0x4(%esp)
    174e:	00 
    174f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1756:	e8 55 29 00 00       	call   40b0 <printf>

  unlink("lf1");
    175b:	c7 04 24 c6 49 00 00 	movl   $0x49c6,(%esp)
    1762:	e8 4b 28 00 00       	call   3fb2 <unlink>
  unlink("lf2");
    1767:	c7 04 24 ca 49 00 00 	movl   $0x49ca,(%esp)
    176e:	e8 3f 28 00 00       	call   3fb2 <unlink>

  fd = open("lf1", O_CREATE|O_RDWR);
    1773:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    177a:	00 
    177b:	c7 04 24 c6 49 00 00 	movl   $0x49c6,(%esp)
    1782:	e8 1b 28 00 00       	call   3fa2 <open>
  if(fd < 0){
    1787:	85 c0                	test   %eax,%eax
  printf(1, "linktest\n");

  unlink("lf1");
  unlink("lf2");

  fd = open("lf1", O_CREATE|O_RDWR);
    1789:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    178b:	0f 88 26 01 00 00    	js     18b7 <linktest+0x177>
    printf(1, "create lf1 failed\n");
    exit(0);
  }
  if(write(fd, "hello", 5) != 5){
    1791:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    1798:	00 
    1799:	c7 44 24 04 2a 49 00 	movl   $0x492a,0x4(%esp)
    17a0:	00 
    17a1:	89 04 24             	mov    %eax,(%esp)
    17a4:	e8 d9 27 00 00       	call   3f82 <write>
    17a9:	83 f8 05             	cmp    $0x5,%eax
    17ac:	0f 85 05 02 00 00    	jne    19b7 <linktest+0x277>
    printf(1, "write lf1 failed\n");
    exit(0);
  }
  close(fd);
    17b2:	89 1c 24             	mov    %ebx,(%esp)
    17b5:	e8 d0 27 00 00       	call   3f8a <close>

  if(link("lf1", "lf2") < 0){
    17ba:	c7 44 24 04 ca 49 00 	movl   $0x49ca,0x4(%esp)
    17c1:	00 
    17c2:	c7 04 24 c6 49 00 00 	movl   $0x49c6,(%esp)
    17c9:	e8 f4 27 00 00       	call   3fc2 <link>
    17ce:	85 c0                	test   %eax,%eax
    17d0:	0f 88 c1 01 00 00    	js     1997 <linktest+0x257>
    printf(1, "link lf1 lf2 failed\n");
    exit(0);
  }
  unlink("lf1");
    17d6:	c7 04 24 c6 49 00 00 	movl   $0x49c6,(%esp)
    17dd:	e8 d0 27 00 00       	call   3fb2 <unlink>

  if(open("lf1", 0) >= 0){
    17e2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    17e9:	00 
    17ea:	c7 04 24 c6 49 00 00 	movl   $0x49c6,(%esp)
    17f1:	e8 ac 27 00 00       	call   3fa2 <open>
    17f6:	85 c0                	test   %eax,%eax
    17f8:	0f 89 79 01 00 00    	jns    1977 <linktest+0x237>
    printf(1, "unlinked lf1 but it is still there!\n");
    exit(0);
  }

  fd = open("lf2", 0);
    17fe:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1805:	00 
    1806:	c7 04 24 ca 49 00 00 	movl   $0x49ca,(%esp)
    180d:	e8 90 27 00 00       	call   3fa2 <open>
  if(fd < 0){
    1812:	85 c0                	test   %eax,%eax
  if(open("lf1", 0) >= 0){
    printf(1, "unlinked lf1 but it is still there!\n");
    exit(0);
  }

  fd = open("lf2", 0);
    1814:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1816:	0f 88 3b 01 00 00    	js     1957 <linktest+0x217>
    printf(1, "open lf2 failed\n");
    exit(0);
  }
  if(read(fd, buf, sizeof(buf)) != 5){
    181c:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1823:	00 
    1824:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
    182b:	00 
    182c:	89 04 24             	mov    %eax,(%esp)
    182f:	e8 46 27 00 00       	call   3f7a <read>
    1834:	83 f8 05             	cmp    $0x5,%eax
    1837:	0f 85 fa 00 00 00    	jne    1937 <linktest+0x1f7>
    printf(1, "read lf2 failed\n");
    exit(0);
  }
  close(fd);
    183d:	89 1c 24             	mov    %ebx,(%esp)
    1840:	e8 45 27 00 00       	call   3f8a <close>

  if(link("lf2", "lf2") >= 0){
    1845:	c7 44 24 04 ca 49 00 	movl   $0x49ca,0x4(%esp)
    184c:	00 
    184d:	c7 04 24 ca 49 00 00 	movl   $0x49ca,(%esp)
    1854:	e8 69 27 00 00       	call   3fc2 <link>
    1859:	85 c0                	test   %eax,%eax
    185b:	0f 89 b6 00 00 00    	jns    1917 <linktest+0x1d7>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    exit(0);
  }

  unlink("lf2");
    1861:	c7 04 24 ca 49 00 00 	movl   $0x49ca,(%esp)
    1868:	e8 45 27 00 00       	call   3fb2 <unlink>
  if(link("lf2", "lf1") >= 0){
    186d:	c7 44 24 04 c6 49 00 	movl   $0x49c6,0x4(%esp)
    1874:	00 
    1875:	c7 04 24 ca 49 00 00 	movl   $0x49ca,(%esp)
    187c:	e8 41 27 00 00       	call   3fc2 <link>
    1881:	85 c0                	test   %eax,%eax
    1883:	79 72                	jns    18f7 <linktest+0x1b7>
    printf(1, "link non-existant succeeded! oops\n");
    exit(0);
  }

  if(link(".", "lf1") >= 0){
    1885:	c7 44 24 04 c6 49 00 	movl   $0x49c6,0x4(%esp)
    188c:	00 
    188d:	c7 04 24 8e 4c 00 00 	movl   $0x4c8e,(%esp)
    1894:	e8 29 27 00 00       	call   3fc2 <link>
    1899:	85 c0                	test   %eax,%eax
    189b:	79 3a                	jns    18d7 <linktest+0x197>
    printf(1, "link . lf1 succeeded! oops\n");
    exit(0);
  }

  printf(1, "linktest ok\n");
    189d:	c7 44 24 04 64 4a 00 	movl   $0x4a64,0x4(%esp)
    18a4:	00 
    18a5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18ac:	e8 ff 27 00 00       	call   40b0 <printf>
}
    18b1:	83 c4 14             	add    $0x14,%esp
    18b4:	5b                   	pop    %ebx
    18b5:	5d                   	pop    %ebp
    18b6:	c3                   	ret    
  unlink("lf1");
  unlink("lf2");

  fd = open("lf1", O_CREATE|O_RDWR);
  if(fd < 0){
    printf(1, "create lf1 failed\n");
    18b7:	c7 44 24 04 ce 49 00 	movl   $0x49ce,0x4(%esp)
    18be:	00 
    18bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18c6:	e8 e5 27 00 00       	call   40b0 <printf>
    exit(0);
    18cb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    18d2:	e8 8b 26 00 00       	call   3f62 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    exit(0);
  }

  if(link(".", "lf1") >= 0){
    printf(1, "link . lf1 succeeded! oops\n");
    18d7:	c7 44 24 04 48 4a 00 	movl   $0x4a48,0x4(%esp)
    18de:	00 
    18df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    18e6:	e8 c5 27 00 00       	call   40b0 <printf>
    exit(0);
    18eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    18f2:	e8 6b 26 00 00       	call   3f62 <exit>
    exit(0);
  }

  unlink("lf2");
  if(link("lf2", "lf1") >= 0){
    printf(1, "link non-existant succeeded! oops\n");
    18f7:	c7 44 24 04 fc 55 00 	movl   $0x55fc,0x4(%esp)
    18fe:	00 
    18ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1906:	e8 a5 27 00 00       	call   40b0 <printf>
    exit(0);
    190b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1912:	e8 4b 26 00 00       	call   3f62 <exit>
    exit(0);
  }
  close(fd);

  if(link("lf2", "lf2") >= 0){
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1917:	c7 44 24 04 2a 4a 00 	movl   $0x4a2a,0x4(%esp)
    191e:	00 
    191f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1926:	e8 85 27 00 00       	call   40b0 <printf>
    exit(0);
    192b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1932:	e8 2b 26 00 00       	call   3f62 <exit>
  if(fd < 0){
    printf(1, "open lf2 failed\n");
    exit(0);
  }
  if(read(fd, buf, sizeof(buf)) != 5){
    printf(1, "read lf2 failed\n");
    1937:	c7 44 24 04 19 4a 00 	movl   $0x4a19,0x4(%esp)
    193e:	00 
    193f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1946:	e8 65 27 00 00       	call   40b0 <printf>
    exit(0);
    194b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1952:	e8 0b 26 00 00       	call   3f62 <exit>
    exit(0);
  }

  fd = open("lf2", 0);
  if(fd < 0){
    printf(1, "open lf2 failed\n");
    1957:	c7 44 24 04 08 4a 00 	movl   $0x4a08,0x4(%esp)
    195e:	00 
    195f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1966:	e8 45 27 00 00       	call   40b0 <printf>
    exit(0);
    196b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1972:	e8 eb 25 00 00       	call   3f62 <exit>
    exit(0);
  }
  unlink("lf1");

  if(open("lf1", 0) >= 0){
    printf(1, "unlinked lf1 but it is still there!\n");
    1977:	c7 44 24 04 d4 55 00 	movl   $0x55d4,0x4(%esp)
    197e:	00 
    197f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1986:	e8 25 27 00 00       	call   40b0 <printf>
    exit(0);
    198b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1992:	e8 cb 25 00 00       	call   3f62 <exit>
    exit(0);
  }
  close(fd);

  if(link("lf1", "lf2") < 0){
    printf(1, "link lf1 lf2 failed\n");
    1997:	c7 44 24 04 f3 49 00 	movl   $0x49f3,0x4(%esp)
    199e:	00 
    199f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19a6:	e8 05 27 00 00       	call   40b0 <printf>
    exit(0);
    19ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19b2:	e8 ab 25 00 00       	call   3f62 <exit>
  if(fd < 0){
    printf(1, "create lf1 failed\n");
    exit(0);
  }
  if(write(fd, "hello", 5) != 5){
    printf(1, "write lf1 failed\n");
    19b7:	c7 44 24 04 e1 49 00 	movl   $0x49e1,0x4(%esp)
    19be:	00 
    19bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19c6:	e8 e5 26 00 00       	call   40b0 <printf>
    exit(0);
    19cb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19d2:	e8 8b 25 00 00       	call   3f62 <exit>
    19d7:	89 f6                	mov    %esi,%esi
    19d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000019e0 <concreate>:
}

// test concurrent create/link/unlink of the same file
void
concreate(void)
{
    19e0:	55                   	push   %ebp
    19e1:	89 e5                	mov    %esp,%ebp
    19e3:	57                   	push   %edi
    19e4:	56                   	push   %esi
    19e5:	53                   	push   %ebx
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    19e6:	31 db                	xor    %ebx,%ebx
}

// test concurrent create/link/unlink of the same file
void
concreate(void)
{
    19e8:	83 ec 5c             	sub    $0x5c,%esp
  struct {
    ushort inum;
    char name[14];
  } de;

  printf(1, "concreate test\n");
    19eb:	c7 44 24 04 71 4a 00 	movl   $0x4a71,0x4(%esp)
    19f2:	00 
    19f3:	8d 75 a9             	lea    -0x57(%ebp),%esi
    19f6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19fd:	e8 ae 26 00 00       	call   40b0 <printf>
  file[0] = 'C';
    1a02:	c6 45 a9 43          	movb   $0x43,-0x57(%ebp)
  file[2] = '\0';
    1a06:	c6 45 ab 00          	movb   $0x0,-0x55(%ebp)
    1a0a:	eb 5b                	jmp    1a67 <concreate+0x87>
    1a0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
    1a10:	89 d8                	mov    %ebx,%eax
    1a12:	ba 56 55 55 55       	mov    $0x55555556,%edx
    1a17:	f7 ea                	imul   %edx
    1a19:	89 d8                	mov    %ebx,%eax
    1a1b:	c1 f8 1f             	sar    $0x1f,%eax
    1a1e:	89 d9                	mov    %ebx,%ecx
    1a20:	29 c2                	sub    %eax,%edx
    1a22:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1a25:	29 c1                	sub    %eax,%ecx
    1a27:	83 f9 01             	cmp    $0x1,%ecx
    1a2a:	0f 84 88 00 00 00    	je     1ab8 <concreate+0xd8>
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
    1a30:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1a37:	00 
    1a38:	89 34 24             	mov    %esi,(%esp)
    1a3b:	e8 62 25 00 00       	call   3fa2 <open>
      if(fd < 0){
    1a40:	85 c0                	test   %eax,%eax
    1a42:	0f 88 5c 02 00 00    	js     1ca4 <concreate+0x2c4>
        printf(1, "concreate create %s failed\n", file);
        exit(0);
      }
      close(fd);
    1a48:	89 04 24             	mov    %eax,(%esp)
    1a4b:	e8 3a 25 00 00       	call   3f8a <close>
    }
    if(pid == 0)
    1a50:	85 ff                	test   %edi,%edi
    1a52:	74 58                	je     1aac <concreate+0xcc>
      exit(0);
    else
      wait(&child_status);
    1a54:	8d 45 ac             	lea    -0x54(%ebp),%eax
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1a57:	83 c3 01             	add    $0x1,%ebx
      close(fd);
    }
    if(pid == 0)
      exit(0);
    else
      wait(&child_status);
    1a5a:	89 04 24             	mov    %eax,(%esp)
    1a5d:	e8 08 25 00 00       	call   3f6a <wait>
  } de;

  printf(1, "concreate test\n");
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    1a62:	83 fb 28             	cmp    $0x28,%ebx
    1a65:	74 69                	je     1ad0 <concreate+0xf0>
    1a67:	8d 43 30             	lea    0x30(%ebx),%eax
    file[1] = '0' + i;
    unlink(file);
    1a6a:	89 34 24             	mov    %esi,(%esp)
    1a6d:	88 45 aa             	mov    %al,-0x56(%ebp)
    1a70:	e8 3d 25 00 00       	call   3fb2 <unlink>
    pid = fork();
    1a75:	e8 e0 24 00 00       	call   3f5a <fork>
    if(pid && (i % 3) == 1){
    1a7a:	85 c0                	test   %eax,%eax
  file[0] = 'C';
  file[2] = '\0';
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    1a7c:	89 c7                	mov    %eax,%edi
    if(pid && (i % 3) == 1){
    1a7e:	75 90                	jne    1a10 <concreate+0x30>
      link("C0", file);
    } else if(pid == 0 && (i % 5) == 1){
    1a80:	b8 67 66 66 66       	mov    $0x66666667,%eax
    1a85:	89 d9                	mov    %ebx,%ecx
    1a87:	f7 eb                	imul   %ebx
    1a89:	89 d8                	mov    %ebx,%eax
    1a8b:	c1 f8 1f             	sar    $0x1f,%eax
    1a8e:	d1 fa                	sar    %edx
    1a90:	29 c2                	sub    %eax,%edx
    1a92:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1a95:	29 c1                	sub    %eax,%ecx
    1a97:	83 f9 01             	cmp    $0x1,%ecx
    1a9a:	75 94                	jne    1a30 <concreate+0x50>
      link("C0", file);
    1a9c:	89 74 24 04          	mov    %esi,0x4(%esp)
    1aa0:	c7 04 24 81 4a 00 00 	movl   $0x4a81,(%esp)
    1aa7:	e8 16 25 00 00       	call   3fc2 <link>
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
      i = de.name[1] - '0';
      if(i < 0 || i >= sizeof(fa)){
        printf(1, "concreate weird file %s\n", de.name);
        exit(0);
    1aac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1ab3:	e8 aa 24 00 00       	call   3f62 <exit>
  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    unlink(file);
    pid = fork();
    if(pid && (i % 3) == 1){
      link("C0", file);
    1ab8:	89 74 24 04          	mov    %esi,0x4(%esp)
    1abc:	c7 04 24 81 4a 00 00 	movl   $0x4a81,(%esp)
    1ac3:	e8 fa 24 00 00       	call   3fc2 <link>
    1ac8:	eb 8a                	jmp    1a54 <concreate+0x74>
    1aca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      exit(0);
    else
      wait(&child_status);
  }

  memset(fa, 0, sizeof(fa));
    1ad0:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1ad3:	c7 44 24 08 28 00 00 	movl   $0x28,0x8(%esp)
    1ada:	00 
    1adb:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1ade:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1ae5:	00 
    1ae6:	89 04 24             	mov    %eax,(%esp)
    1ae9:	e8 02 23 00 00       	call   3df0 <memset>
  fd = open(".", 0);
    1aee:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1af5:	00 
    1af6:	c7 04 24 8e 4c 00 00 	movl   $0x4c8e,(%esp)
    1afd:	e8 a0 24 00 00       	call   3fa2 <open>
  n = 0;
    1b02:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    else
      wait(&child_status);
  }

  memset(fa, 0, sizeof(fa));
  fd = open(".", 0);
    1b09:	89 c3                	mov    %eax,%ebx
    1b0b:	90                   	nop
    1b0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  n = 0;
  while(read(fd, &de, sizeof(de)) > 0){
    1b10:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
    1b17:	00 
    1b18:	89 7c 24 04          	mov    %edi,0x4(%esp)
    1b1c:	89 1c 24             	mov    %ebx,(%esp)
    1b1f:	e8 56 24 00 00       	call   3f7a <read>
    1b24:	85 c0                	test   %eax,%eax
    1b26:	7e 40                	jle    1b68 <concreate+0x188>
    if(de.inum == 0)
    1b28:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1b2d:	74 e1                	je     1b10 <concreate+0x130>
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1b2f:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1b33:	75 db                	jne    1b10 <concreate+0x130>
    1b35:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1b39:	75 d5                	jne    1b10 <concreate+0x130>
      i = de.name[1] - '0';
    1b3b:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1b3f:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1b42:	83 f8 27             	cmp    $0x27,%eax
    1b45:	0f 87 7d 01 00 00    	ja     1cc8 <concreate+0x2e8>
        printf(1, "concreate weird file %s\n", de.name);
        exit(0);
      }
      if(fa[i]){
    1b4b:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1b50:	0f 85 b2 01 00 00    	jne    1d08 <concreate+0x328>
        printf(1, "concreate duplicate file %s\n", de.name);
        exit(0);
      }
      fa[i] = 1;
    1b56:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1b5b:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1b5f:	eb af                	jmp    1b10 <concreate+0x130>
    1b61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  close(fd);
    1b68:	89 1c 24             	mov    %ebx,(%esp)
    1b6b:	e8 1a 24 00 00       	call   3f8a <close>

  if(n != 40){
    1b70:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1b74:	0f 85 6e 01 00 00    	jne    1ce8 <concreate+0x308>
    1b7a:	31 db                	xor    %ebx,%ebx
    1b7c:	e9 8a 00 00 00       	jmp    1c0b <concreate+0x22b>
    1b81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(pid < 0){
      printf(1, "fork failed\n");
      exit(0);
    }
    if(((i % 3) == 0 && pid == 0) ||
       ((i % 3) == 1 && pid != 0)){
    1b88:	85 ff                	test   %edi,%edi
    1b8a:	0f 84 b4 00 00 00    	je     1c44 <concreate+0x264>
      close(open(file, 0));
    1b90:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b97:	00 
    1b98:	89 34 24             	mov    %esi,(%esp)
    1b9b:	e8 02 24 00 00       	call   3fa2 <open>
    1ba0:	89 04 24             	mov    %eax,(%esp)
    1ba3:	e8 e2 23 00 00       	call   3f8a <close>
      close(open(file, 0));
    1ba8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1baf:	00 
    1bb0:	89 34 24             	mov    %esi,(%esp)
    1bb3:	e8 ea 23 00 00       	call   3fa2 <open>
    1bb8:	89 04 24             	mov    %eax,(%esp)
    1bbb:	e8 ca 23 00 00       	call   3f8a <close>
      close(open(file, 0));
    1bc0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1bc7:	00 
    1bc8:	89 34 24             	mov    %esi,(%esp)
    1bcb:	e8 d2 23 00 00       	call   3fa2 <open>
    1bd0:	89 04 24             	mov    %eax,(%esp)
    1bd3:	e8 b2 23 00 00       	call   3f8a <close>
      close(open(file, 0));
    1bd8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1bdf:	00 
    1be0:	89 34 24             	mov    %esi,(%esp)
    1be3:	e8 ba 23 00 00       	call   3fa2 <open>
    1be8:	89 04 24             	mov    %eax,(%esp)
    1beb:	e8 9a 23 00 00       	call   3f8a <close>
      unlink(file);
      unlink(file);
      unlink(file);
      unlink(file);
    }
    if(pid == 0)
    1bf0:	85 ff                	test   %edi,%edi
    1bf2:	0f 84 b4 fe ff ff    	je     1aac <concreate+0xcc>
      exit(0);
    else
      wait(&child_status);
    1bf8:	8d 45 ac             	lea    -0x54(%ebp),%eax
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit(0);
  }

  for(i = 0; i < 40; i++){
    1bfb:	83 c3 01             	add    $0x1,%ebx
      unlink(file);
    }
    if(pid == 0)
      exit(0);
    else
      wait(&child_status);
    1bfe:	89 04 24             	mov    %eax,(%esp)
    1c01:	e8 64 23 00 00       	call   3f6a <wait>
  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    exit(0);
  }

  for(i = 0; i < 40; i++){
    1c06:	83 fb 28             	cmp    $0x28,%ebx
    1c09:	74 5d                	je     1c68 <concreate+0x288>
    1c0b:	8d 43 30             	lea    0x30(%ebx),%eax
    1c0e:	88 45 aa             	mov    %al,-0x56(%ebp)
    file[1] = '0' + i;
    pid = fork();
    1c11:	e8 44 23 00 00       	call   3f5a <fork>
    if(pid < 0){
    1c16:	85 c0                	test   %eax,%eax
    exit(0);
  }

  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    pid = fork();
    1c18:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1c1a:	78 68                	js     1c84 <concreate+0x2a4>
      printf(1, "fork failed\n");
      exit(0);
    }
    if(((i % 3) == 0 && pid == 0) ||
    1c1c:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1c21:	f7 eb                	imul   %ebx
    1c23:	89 d8                	mov    %ebx,%eax
    1c25:	c1 f8 1f             	sar    $0x1f,%eax
    1c28:	29 c2                	sub    %eax,%edx
    1c2a:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1c2d:	89 da                	mov    %ebx,%edx
    1c2f:	29 c2                	sub    %eax,%edx
    1c31:	89 d0                	mov    %edx,%eax
    1c33:	09 f8                	or     %edi,%eax
    1c35:	0f 84 55 ff ff ff    	je     1b90 <concreate+0x1b0>
    1c3b:	83 fa 01             	cmp    $0x1,%edx
    1c3e:	0f 84 44 ff ff ff    	je     1b88 <concreate+0x1a8>
      close(open(file, 0));
      close(open(file, 0));
      close(open(file, 0));
      close(open(file, 0));
    } else {
      unlink(file);
    1c44:	89 34 24             	mov    %esi,(%esp)
    1c47:	e8 66 23 00 00       	call   3fb2 <unlink>
      unlink(file);
    1c4c:	89 34 24             	mov    %esi,(%esp)
    1c4f:	e8 5e 23 00 00       	call   3fb2 <unlink>
      unlink(file);
    1c54:	89 34 24             	mov    %esi,(%esp)
    1c57:	e8 56 23 00 00       	call   3fb2 <unlink>
      unlink(file);
    1c5c:	89 34 24             	mov    %esi,(%esp)
    1c5f:	e8 4e 23 00 00       	call   3fb2 <unlink>
    1c64:	eb 8a                	jmp    1bf0 <concreate+0x210>
    1c66:	66 90                	xchg   %ax,%ax
      exit(0);
    else
      wait(&child_status);
  }

  printf(1, "concreate ok\n");
    1c68:	c7 44 24 04 d6 4a 00 	movl   $0x4ad6,0x4(%esp)
    1c6f:	00 
    1c70:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c77:	e8 34 24 00 00       	call   40b0 <printf>
}
    1c7c:	83 c4 5c             	add    $0x5c,%esp
    1c7f:	5b                   	pop    %ebx
    1c80:	5e                   	pop    %esi
    1c81:	5f                   	pop    %edi
    1c82:	5d                   	pop    %ebp
    1c83:	c3                   	ret    

  for(i = 0; i < 40; i++){
    file[1] = '0' + i;
    pid = fork();
    if(pid < 0){
      printf(1, "fork failed\n");
    1c84:	c7 44 24 04 59 53 00 	movl   $0x5359,0x4(%esp)
    1c8b:	00 
    1c8c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1c93:	e8 18 24 00 00       	call   40b0 <printf>
      exit(0);
    1c98:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c9f:	e8 be 22 00 00       	call   3f62 <exit>
    } else if(pid == 0 && (i % 5) == 1){
      link("C0", file);
    } else {
      fd = open(file, O_CREATE | O_RDWR);
      if(fd < 0){
        printf(1, "concreate create %s failed\n", file);
    1ca4:	89 74 24 08          	mov    %esi,0x8(%esp)
    1ca8:	c7 44 24 04 84 4a 00 	movl   $0x4a84,0x4(%esp)
    1caf:	00 
    1cb0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cb7:	e8 f4 23 00 00       	call   40b0 <printf>
        exit(0);
    1cbc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1cc3:	e8 9a 22 00 00       	call   3f62 <exit>
    if(de.inum == 0)
      continue;
    if(de.name[0] == 'C' && de.name[2] == '\0'){
      i = de.name[1] - '0';
      if(i < 0 || i >= sizeof(fa)){
        printf(1, "concreate weird file %s\n", de.name);
    1cc8:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1ccb:	89 44 24 08          	mov    %eax,0x8(%esp)
    1ccf:	c7 44 24 04 a0 4a 00 	movl   $0x4aa0,0x4(%esp)
    1cd6:	00 
    1cd7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cde:	e8 cd 23 00 00       	call   40b0 <printf>
    1ce3:	e9 c4 fd ff ff       	jmp    1aac <concreate+0xcc>
    }
  }
  close(fd);

  if(n != 40){
    printf(1, "concreate not enough files in directory listing\n");
    1ce8:	c7 44 24 04 20 56 00 	movl   $0x5620,0x4(%esp)
    1cef:	00 
    1cf0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cf7:	e8 b4 23 00 00       	call   40b0 <printf>
    exit(0);
    1cfc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d03:	e8 5a 22 00 00       	call   3f62 <exit>
      if(i < 0 || i >= sizeof(fa)){
        printf(1, "concreate weird file %s\n", de.name);
        exit(0);
      }
      if(fa[i]){
        printf(1, "concreate duplicate file %s\n", de.name);
    1d08:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d0b:	89 44 24 08          	mov    %eax,0x8(%esp)
    1d0f:	c7 44 24 04 b9 4a 00 	movl   $0x4ab9,0x4(%esp)
    1d16:	00 
    1d17:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d1e:	e8 8d 23 00 00       	call   40b0 <printf>
        exit(0);
    1d23:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d2a:	e8 33 22 00 00       	call   3f62 <exit>
    1d2f:	90                   	nop

00001d30 <linkunlink>:

// another concurrent link/unlink/create test,
// to look for deadlocks.
void
linkunlink()
{
    1d30:	55                   	push   %ebp
    1d31:	89 e5                	mov    %esp,%ebp
    1d33:	57                   	push   %edi
    1d34:	56                   	push   %esi
    1d35:	53                   	push   %ebx
    1d36:	83 ec 2c             	sub    $0x2c,%esp
  int pid, i;
  int child_status;

  printf(1, "linkunlink test\n");
    1d39:	c7 44 24 04 e4 4a 00 	movl   $0x4ae4,0x4(%esp)
    1d40:	00 
    1d41:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d48:	e8 63 23 00 00       	call   40b0 <printf>

  unlink("x");
    1d4d:	c7 04 24 71 4d 00 00 	movl   $0x4d71,(%esp)
    1d54:	e8 59 22 00 00       	call   3fb2 <unlink>
  pid = fork();
    1d59:	e8 fc 21 00 00       	call   3f5a <fork>
  if(pid < 0){
    1d5e:	85 c0                	test   %eax,%eax
  int child_status;

  printf(1, "linkunlink test\n");

  unlink("x");
  pid = fork();
    1d60:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  if(pid < 0){
    1d63:	0f 88 b8 00 00 00    	js     1e21 <linkunlink+0xf1>
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
    1d69:	83 7d d4 01          	cmpl   $0x1,-0x2c(%ebp)
    1d6d:	bb 64 00 00 00       	mov    $0x64,%ebx
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
    1d72:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  if(pid < 0){
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
    1d77:	19 ff                	sbb    %edi,%edi
    1d79:	83 e7 60             	and    $0x60,%edi
    1d7c:	83 c7 01             	add    $0x1,%edi
    1d7f:	eb 1d                	jmp    1d9e <linkunlink+0x6e>
    1d81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
      close(open("x", O_RDWR | O_CREATE));
    } else if((x % 3) == 1){
    1d88:	83 fa 01             	cmp    $0x1,%edx
    1d8b:	74 7b                	je     1e08 <linkunlink+0xd8>
      link("cat", "x");
    } else {
      unlink("x");
    1d8d:	c7 04 24 71 4d 00 00 	movl   $0x4d71,(%esp)
    1d94:	e8 19 22 00 00       	call   3fb2 <unlink>
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
  for(i = 0; i < 100; i++){
    1d99:	83 eb 01             	sub    $0x1,%ebx
    1d9c:	74 3c                	je     1dda <linkunlink+0xaa>
    x = x * 1103515245 + 12345;
    1d9e:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1da4:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1daa:	89 f8                	mov    %edi,%eax
    1dac:	f7 e6                	mul    %esi
    1dae:	d1 ea                	shr    %edx
    1db0:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1db3:	89 fa                	mov    %edi,%edx
    1db5:	29 c2                	sub    %eax,%edx
    1db7:	75 cf                	jne    1d88 <linkunlink+0x58>
      close(open("x", O_RDWR | O_CREATE));
    1db9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1dc0:	00 
    1dc1:	c7 04 24 71 4d 00 00 	movl   $0x4d71,(%esp)
    1dc8:	e8 d5 21 00 00       	call   3fa2 <open>
    1dcd:	89 04 24             	mov    %eax,(%esp)
    1dd0:	e8 b5 21 00 00       	call   3f8a <close>
    printf(1, "fork failed\n");
    exit(0);
  }

  unsigned int x = (pid ? 1 : 97);
  for(i = 0; i < 100; i++){
    1dd5:	83 eb 01             	sub    $0x1,%ebx
    1dd8:	75 c4                	jne    1d9e <linkunlink+0x6e>
    } else {
      unlink("x");
    }
  }

  if(pid)
    1dda:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1ddd:	85 c0                	test   %eax,%eax
    1ddf:	74 60                	je     1e41 <linkunlink+0x111>
    wait(&child_status);
    1de1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1de4:	89 04 24             	mov    %eax,(%esp)
    1de7:	e8 7e 21 00 00       	call   3f6a <wait>
  else
    exit(0);

  printf(1, "linkunlink ok\n");
    1dec:	c7 44 24 04 f9 4a 00 	movl   $0x4af9,0x4(%esp)
    1df3:	00 
    1df4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1dfb:	e8 b0 22 00 00       	call   40b0 <printf>
}
    1e00:	83 c4 2c             	add    $0x2c,%esp
    1e03:	5b                   	pop    %ebx
    1e04:	5e                   	pop    %esi
    1e05:	5f                   	pop    %edi
    1e06:	5d                   	pop    %ebp
    1e07:	c3                   	ret    
  for(i = 0; i < 100; i++){
    x = x * 1103515245 + 12345;
    if((x % 3) == 0){
      close(open("x", O_RDWR | O_CREATE));
    } else if((x % 3) == 1){
      link("cat", "x");
    1e08:	c7 44 24 04 71 4d 00 	movl   $0x4d71,0x4(%esp)
    1e0f:	00 
    1e10:	c7 04 24 f5 4a 00 00 	movl   $0x4af5,(%esp)
    1e17:	e8 a6 21 00 00       	call   3fc2 <link>
    1e1c:	e9 78 ff ff ff       	jmp    1d99 <linkunlink+0x69>
  printf(1, "linkunlink test\n");

  unlink("x");
  pid = fork();
  if(pid < 0){
    printf(1, "fork failed\n");
    1e21:	c7 44 24 04 59 53 00 	movl   $0x5359,0x4(%esp)
    1e28:	00 
    1e29:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e30:	e8 7b 22 00 00       	call   40b0 <printf>
    exit(0);
    1e35:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1e3c:	e8 21 21 00 00       	call   3f62 <exit>
  }

  if(pid)
    wait(&child_status);
  else
    exit(0);
    1e41:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1e48:	e8 15 21 00 00       	call   3f62 <exit>
    1e4d:	8d 76 00             	lea    0x0(%esi),%esi

00001e50 <bigdir>:
}

// directory that uses indirect blocks
void
bigdir(void)
{
    1e50:	55                   	push   %ebp
    1e51:	89 e5                	mov    %esp,%ebp
    1e53:	56                   	push   %esi
    1e54:	53                   	push   %ebx
    1e55:	83 ec 20             	sub    $0x20,%esp
  int i, fd;
  char name[10];

  printf(1, "bigdir test\n");
    1e58:	c7 44 24 04 08 4b 00 	movl   $0x4b08,0x4(%esp)
    1e5f:	00 
    1e60:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e67:	e8 44 22 00 00       	call   40b0 <printf>
  unlink("bd");
    1e6c:	c7 04 24 15 4b 00 00 	movl   $0x4b15,(%esp)
    1e73:	e8 3a 21 00 00       	call   3fb2 <unlink>

  fd = open("bd", O_CREATE);
    1e78:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    1e7f:	00 
    1e80:	c7 04 24 15 4b 00 00 	movl   $0x4b15,(%esp)
    1e87:	e8 16 21 00 00       	call   3fa2 <open>
  if(fd < 0){
    1e8c:	85 c0                	test   %eax,%eax
    1e8e:	0f 88 f4 00 00 00    	js     1f88 <bigdir+0x138>
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);
    1e94:	89 04 24             	mov    %eax,(%esp)

  for(i = 0; i < 500; i++){
    1e97:	31 db                	xor    %ebx,%ebx
  fd = open("bd", O_CREATE);
  if(fd < 0){
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);
    1e99:	e8 ec 20 00 00       	call   3f8a <close>
    1e9e:	8d 75 ee             	lea    -0x12(%ebp),%esi
    1ea1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1ea8:	89 d8                	mov    %ebx,%eax
    1eaa:	c1 f8 06             	sar    $0x6,%eax
    1ead:	83 c0 30             	add    $0x30,%eax
    1eb0:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1eb3:	89 d8                	mov    %ebx,%eax
    1eb5:	83 e0 3f             	and    $0x3f,%eax
    1eb8:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    if(link("bd", name) != 0){
    1ebb:	89 74 24 04          	mov    %esi,0x4(%esp)
    1ebf:	c7 04 24 15 4b 00 00 	movl   $0x4b15,(%esp)
    exit(0);
  }
  close(fd);

  for(i = 0; i < 500; i++){
    name[0] = 'x';
    1ec6:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    1eca:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1ecd:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(link("bd", name) != 0){
    1ed1:	e8 ec 20 00 00       	call   3fc2 <link>
    1ed6:	85 c0                	test   %eax,%eax
    1ed8:	75 6e                	jne    1f48 <bigdir+0xf8>
    printf(1, "bigdir create failed\n");
    exit(0);
  }
  close(fd);

  for(i = 0; i < 500; i++){
    1eda:	83 c3 01             	add    $0x1,%ebx
    1edd:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1ee3:	75 c3                	jne    1ea8 <bigdir+0x58>
      printf(1, "bigdir link failed\n");
      exit(0);
    }
  }

  unlink("bd");
    1ee5:	c7 04 24 15 4b 00 00 	movl   $0x4b15,(%esp)
  for(i = 0; i < 500; i++){
    1eec:	66 31 db             	xor    %bx,%bx
      printf(1, "bigdir link failed\n");
      exit(0);
    }
  }

  unlink("bd");
    1eef:	e8 be 20 00 00       	call   3fb2 <unlink>
    1ef4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    1ef8:	89 d8                	mov    %ebx,%eax
    1efa:	c1 f8 06             	sar    $0x6,%eax
    1efd:	83 c0 30             	add    $0x30,%eax
    1f00:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1f03:	89 d8                	mov    %ebx,%eax
    1f05:	83 e0 3f             	and    $0x3f,%eax
    1f08:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    if(unlink(name) != 0){
    1f0b:	89 34 24             	mov    %esi,(%esp)
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    name[0] = 'x';
    1f0e:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    1f12:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1f15:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(unlink(name) != 0){
    1f19:	e8 94 20 00 00       	call   3fb2 <unlink>
    1f1e:	85 c0                	test   %eax,%eax
    1f20:	75 46                	jne    1f68 <bigdir+0x118>
      exit(0);
    }
  }

  unlink("bd");
  for(i = 0; i < 500; i++){
    1f22:	83 c3 01             	add    $0x1,%ebx
    1f25:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1f2b:	75 cb                	jne    1ef8 <bigdir+0xa8>
      printf(1, "bigdir unlink failed");
      exit(0);
    }
  }

  printf(1, "bigdir ok\n");
    1f2d:	c7 44 24 04 57 4b 00 	movl   $0x4b57,0x4(%esp)
    1f34:	00 
    1f35:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f3c:	e8 6f 21 00 00       	call   40b0 <printf>
}
    1f41:	83 c4 20             	add    $0x20,%esp
    1f44:	5b                   	pop    %ebx
    1f45:	5e                   	pop    %esi
    1f46:	5d                   	pop    %ebp
    1f47:	c3                   	ret    
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(link("bd", name) != 0){
      printf(1, "bigdir link failed\n");
    1f48:	c7 44 24 04 2e 4b 00 	movl   $0x4b2e,0x4(%esp)
    1f4f:	00 
    1f50:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f57:	e8 54 21 00 00       	call   40b0 <printf>
      exit(0);
    1f5c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1f63:	e8 fa 1f 00 00       	call   3f62 <exit>
    name[0] = 'x';
    name[1] = '0' + (i / 64);
    name[2] = '0' + (i % 64);
    name[3] = '\0';
    if(unlink(name) != 0){
      printf(1, "bigdir unlink failed");
    1f68:	c7 44 24 04 42 4b 00 	movl   $0x4b42,0x4(%esp)
    1f6f:	00 
    1f70:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f77:	e8 34 21 00 00       	call   40b0 <printf>
      exit(0);
    1f7c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1f83:	e8 da 1f 00 00       	call   3f62 <exit>
  printf(1, "bigdir test\n");
  unlink("bd");

  fd = open("bd", O_CREATE);
  if(fd < 0){
    printf(1, "bigdir create failed\n");
    1f88:	c7 44 24 04 18 4b 00 	movl   $0x4b18,0x4(%esp)
    1f8f:	00 
    1f90:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1f97:	e8 14 21 00 00       	call   40b0 <printf>
    exit(0);
    1f9c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1fa3:	e8 ba 1f 00 00       	call   3f62 <exit>
    1fa8:	90                   	nop
    1fa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001fb0 <subdir>:
  printf(1, "bigdir ok\n");
}

void
subdir(void)
{
    1fb0:	55                   	push   %ebp
    1fb1:	89 e5                	mov    %esp,%ebp
    1fb3:	53                   	push   %ebx
    1fb4:	83 ec 14             	sub    $0x14,%esp
  int fd, cc;

  printf(1, "subdir test\n");
    1fb7:	c7 44 24 04 62 4b 00 	movl   $0x4b62,0x4(%esp)
    1fbe:	00 
    1fbf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fc6:	e8 e5 20 00 00       	call   40b0 <printf>

  unlink("ff");
    1fcb:	c7 04 24 eb 4b 00 00 	movl   $0x4beb,(%esp)
    1fd2:	e8 db 1f 00 00       	call   3fb2 <unlink>
  if(mkdir("dd") != 0){
    1fd7:	c7 04 24 88 4c 00 00 	movl   $0x4c88,(%esp)
    1fde:	e8 e7 1f 00 00       	call   3fca <mkdir>
    1fe3:	85 c0                	test   %eax,%eax
    1fe5:	0f 85 a1 06 00 00    	jne    268c <subdir+0x6dc>
    printf(1, "subdir mkdir dd failed\n");
    exit(0);
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
    1feb:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1ff2:	00 
    1ff3:	c7 04 24 c1 4b 00 00 	movl   $0x4bc1,(%esp)
    1ffa:	e8 a3 1f 00 00       	call   3fa2 <open>
  if(fd < 0){
    1fff:	85 c0                	test   %eax,%eax
  if(mkdir("dd") != 0){
    printf(1, "subdir mkdir dd failed\n");
    exit(0);
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
    2001:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2003:	0f 88 63 06 00 00    	js     266c <subdir+0x6bc>
    printf(1, "create dd/ff failed\n");
    exit(0);
  }
  write(fd, "ff", 2);
    2009:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    2010:	00 
    2011:	c7 44 24 04 eb 4b 00 	movl   $0x4beb,0x4(%esp)
    2018:	00 
    2019:	89 04 24             	mov    %eax,(%esp)
    201c:	e8 61 1f 00 00       	call   3f82 <write>
  close(fd);
    2021:	89 1c 24             	mov    %ebx,(%esp)
    2024:	e8 61 1f 00 00       	call   3f8a <close>

  if(unlink("dd") >= 0){
    2029:	c7 04 24 88 4c 00 00 	movl   $0x4c88,(%esp)
    2030:	e8 7d 1f 00 00       	call   3fb2 <unlink>
    2035:	85 c0                	test   %eax,%eax
    2037:	0f 89 0f 06 00 00    	jns    264c <subdir+0x69c>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    exit(0);
  }

  if(mkdir("/dd/dd") != 0){
    203d:	c7 04 24 9c 4b 00 00 	movl   $0x4b9c,(%esp)
    2044:	e8 81 1f 00 00       	call   3fca <mkdir>
    2049:	85 c0                	test   %eax,%eax
    204b:	0f 85 db 05 00 00    	jne    262c <subdir+0x67c>
    printf(1, "subdir mkdir dd/dd failed\n");
    exit(0);
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2051:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2058:	00 
    2059:	c7 04 24 be 4b 00 00 	movl   $0x4bbe,(%esp)
    2060:	e8 3d 1f 00 00       	call   3fa2 <open>
  if(fd < 0){
    2065:	85 c0                	test   %eax,%eax
  if(mkdir("/dd/dd") != 0){
    printf(1, "subdir mkdir dd/dd failed\n");
    exit(0);
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2067:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2069:	0f 88 5d 04 00 00    	js     24cc <subdir+0x51c>
    printf(1, "create dd/dd/ff failed\n");
    exit(0);
  }
  write(fd, "FF", 2);
    206f:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    2076:	00 
    2077:	c7 44 24 04 df 4b 00 	movl   $0x4bdf,0x4(%esp)
    207e:	00 
    207f:	89 04 24             	mov    %eax,(%esp)
    2082:	e8 fb 1e 00 00       	call   3f82 <write>
  close(fd);
    2087:	89 1c 24             	mov    %ebx,(%esp)
    208a:	e8 fb 1e 00 00       	call   3f8a <close>

  fd = open("dd/dd/../ff", 0);
    208f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2096:	00 
    2097:	c7 04 24 e2 4b 00 00 	movl   $0x4be2,(%esp)
    209e:	e8 ff 1e 00 00       	call   3fa2 <open>
  if(fd < 0){
    20a3:	85 c0                	test   %eax,%eax
    exit(0);
  }
  write(fd, "FF", 2);
  close(fd);

  fd = open("dd/dd/../ff", 0);
    20a5:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    20a7:	0f 88 ff 03 00 00    	js     24ac <subdir+0x4fc>
    printf(1, "open dd/dd/../ff failed\n");
    exit(0);
  }
  cc = read(fd, buf, sizeof(buf));
    20ad:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    20b4:	00 
    20b5:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
    20bc:	00 
    20bd:	89 04 24             	mov    %eax,(%esp)
    20c0:	e8 b5 1e 00 00       	call   3f7a <read>
  if(cc != 2 || buf[0] != 'f'){
    20c5:	83 f8 02             	cmp    $0x2,%eax
    20c8:	0f 85 fe 02 00 00    	jne    23cc <subdir+0x41c>
    20ce:	80 3d 80 8c 00 00 66 	cmpb   $0x66,0x8c80
    20d5:	0f 85 f1 02 00 00    	jne    23cc <subdir+0x41c>
    printf(1, "dd/dd/../ff wrong content\n");
    exit(0);
  }
  close(fd);
    20db:	89 1c 24             	mov    %ebx,(%esp)
    20de:	e8 a7 1e 00 00       	call   3f8a <close>

  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    20e3:	c7 44 24 04 22 4c 00 	movl   $0x4c22,0x4(%esp)
    20ea:	00 
    20eb:	c7 04 24 be 4b 00 00 	movl   $0x4bbe,(%esp)
    20f2:	e8 cb 1e 00 00       	call   3fc2 <link>
    20f7:	85 c0                	test   %eax,%eax
    20f9:	0f 85 0d 04 00 00    	jne    250c <subdir+0x55c>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    exit(0);
  }

  if(unlink("dd/dd/ff") != 0){
    20ff:	c7 04 24 be 4b 00 00 	movl   $0x4bbe,(%esp)
    2106:	e8 a7 1e 00 00       	call   3fb2 <unlink>
    210b:	85 c0                	test   %eax,%eax
    210d:	0f 85 f9 02 00 00    	jne    240c <subdir+0x45c>
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2113:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    211a:	00 
    211b:	c7 04 24 be 4b 00 00 	movl   $0x4bbe,(%esp)
    2122:	e8 7b 1e 00 00       	call   3fa2 <open>
    2127:	85 c0                	test   %eax,%eax
    2129:	0f 89 dd 04 00 00    	jns    260c <subdir+0x65c>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    exit(0);
  }

  if(chdir("dd") != 0){
    212f:	c7 04 24 88 4c 00 00 	movl   $0x4c88,(%esp)
    2136:	e8 97 1e 00 00       	call   3fd2 <chdir>
    213b:	85 c0                	test   %eax,%eax
    213d:	0f 85 a9 04 00 00    	jne    25ec <subdir+0x63c>
    printf(1, "chdir dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../dd") != 0){
    2143:	c7 04 24 56 4c 00 00 	movl   $0x4c56,(%esp)
    214a:	e8 83 1e 00 00       	call   3fd2 <chdir>
    214f:	85 c0                	test   %eax,%eax
    2151:	0f 85 95 02 00 00    	jne    23ec <subdir+0x43c>
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../../dd") != 0){
    2157:	c7 04 24 7c 4c 00 00 	movl   $0x4c7c,(%esp)
    215e:	e8 6f 1e 00 00       	call   3fd2 <chdir>
    2163:	85 c0                	test   %eax,%eax
    2165:	0f 85 81 02 00 00    	jne    23ec <subdir+0x43c>
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("./..") != 0){
    216b:	c7 04 24 8b 4c 00 00 	movl   $0x4c8b,(%esp)
    2172:	e8 5b 1e 00 00       	call   3fd2 <chdir>
    2177:	85 c0                	test   %eax,%eax
    2179:	0f 85 6d 03 00 00    	jne    24ec <subdir+0x53c>
    printf(1, "chdir ./.. failed\n");
    exit(0);
  }

  fd = open("dd/dd/ffff", 0);
    217f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2186:	00 
    2187:	c7 04 24 22 4c 00 00 	movl   $0x4c22,(%esp)
    218e:	e8 0f 1e 00 00       	call   3fa2 <open>
  if(fd < 0){
    2193:	85 c0                	test   %eax,%eax
  if(chdir("./..") != 0){
    printf(1, "chdir ./.. failed\n");
    exit(0);
  }

  fd = open("dd/dd/ffff", 0);
    2195:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2197:	0f 88 6f 06 00 00    	js     280c <subdir+0x85c>
    printf(1, "open dd/dd/ffff failed\n");
    exit(0);
  }
  if(read(fd, buf, sizeof(buf)) != 2){
    219d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    21a4:	00 
    21a5:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
    21ac:	00 
    21ad:	89 04 24             	mov    %eax,(%esp)
    21b0:	e8 c5 1d 00 00       	call   3f7a <read>
    21b5:	83 f8 02             	cmp    $0x2,%eax
    21b8:	0f 85 2e 06 00 00    	jne    27ec <subdir+0x83c>
    printf(1, "read dd/dd/ffff wrong len\n");
    exit(0);
  }
  close(fd);
    21be:	89 1c 24             	mov    %ebx,(%esp)
    21c1:	e8 c4 1d 00 00       	call   3f8a <close>

  if(open("dd/dd/ff", O_RDONLY) >= 0){
    21c6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    21cd:	00 
    21ce:	c7 04 24 be 4b 00 00 	movl   $0x4bbe,(%esp)
    21d5:	e8 c8 1d 00 00       	call   3fa2 <open>
    21da:	85 c0                	test   %eax,%eax
    21dc:	0f 89 6a 02 00 00    	jns    244c <subdir+0x49c>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    exit(0);
  }

  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    21e2:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    21e9:	00 
    21ea:	c7 04 24 d6 4c 00 00 	movl   $0x4cd6,(%esp)
    21f1:	e8 ac 1d 00 00       	call   3fa2 <open>
    21f6:	85 c0                	test   %eax,%eax
    21f8:	0f 89 2e 02 00 00    	jns    242c <subdir+0x47c>
    printf(1, "create dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    21fe:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2205:	00 
    2206:	c7 04 24 fb 4c 00 00 	movl   $0x4cfb,(%esp)
    220d:	e8 90 1d 00 00       	call   3fa2 <open>
    2212:	85 c0                	test   %eax,%eax
    2214:	0f 89 b2 03 00 00    	jns    25cc <subdir+0x61c>
    printf(1, "create dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(open("dd", O_CREATE) >= 0){
    221a:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2221:	00 
    2222:	c7 04 24 88 4c 00 00 	movl   $0x4c88,(%esp)
    2229:	e8 74 1d 00 00       	call   3fa2 <open>
    222e:	85 c0                	test   %eax,%eax
    2230:	0f 89 76 03 00 00    	jns    25ac <subdir+0x5fc>
    printf(1, "create dd succeeded!\n");
    exit(0);
  }
  if(open("dd", O_RDWR) >= 0){
    2236:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    223d:	00 
    223e:	c7 04 24 88 4c 00 00 	movl   $0x4c88,(%esp)
    2245:	e8 58 1d 00 00       	call   3fa2 <open>
    224a:	85 c0                	test   %eax,%eax
    224c:	0f 89 3a 03 00 00    	jns    258c <subdir+0x5dc>
    printf(1, "open dd rdwr succeeded!\n");
    exit(0);
  }
  if(open("dd", O_WRONLY) >= 0){
    2252:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    2259:	00 
    225a:	c7 04 24 88 4c 00 00 	movl   $0x4c88,(%esp)
    2261:	e8 3c 1d 00 00       	call   3fa2 <open>
    2266:	85 c0                	test   %eax,%eax
    2268:	0f 89 fe 02 00 00    	jns    256c <subdir+0x5bc>
    printf(1, "open dd wronly succeeded!\n");
    exit(0);
  }
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    226e:	c7 44 24 04 6a 4d 00 	movl   $0x4d6a,0x4(%esp)
    2275:	00 
    2276:	c7 04 24 d6 4c 00 00 	movl   $0x4cd6,(%esp)
    227d:	e8 40 1d 00 00       	call   3fc2 <link>
    2282:	85 c0                	test   %eax,%eax
    2284:	0f 84 c2 02 00 00    	je     254c <subdir+0x59c>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    228a:	c7 44 24 04 6a 4d 00 	movl   $0x4d6a,0x4(%esp)
    2291:	00 
    2292:	c7 04 24 fb 4c 00 00 	movl   $0x4cfb,(%esp)
    2299:	e8 24 1d 00 00       	call   3fc2 <link>
    229e:	85 c0                	test   %eax,%eax
    22a0:	0f 84 86 02 00 00    	je     252c <subdir+0x57c>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/ff", "dd/dd/ffff") == 0){
    22a6:	c7 44 24 04 22 4c 00 	movl   $0x4c22,0x4(%esp)
    22ad:	00 
    22ae:	c7 04 24 c1 4b 00 00 	movl   $0x4bc1,(%esp)
    22b5:	e8 08 1d 00 00       	call   3fc2 <link>
    22ba:	85 c0                	test   %eax,%eax
    22bc:	0f 84 ca 01 00 00    	je     248c <subdir+0x4dc>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/ff/ff") == 0){
    22c2:	c7 04 24 d6 4c 00 00 	movl   $0x4cd6,(%esp)
    22c9:	e8 fc 1c 00 00       	call   3fca <mkdir>
    22ce:	85 c0                	test   %eax,%eax
    22d0:	0f 84 96 01 00 00    	je     246c <subdir+0x4bc>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/xx/ff") == 0){
    22d6:	c7 04 24 fb 4c 00 00 	movl   $0x4cfb,(%esp)
    22dd:	e8 e8 1c 00 00       	call   3fca <mkdir>
    22e2:	85 c0                	test   %eax,%eax
    22e4:	0f 84 e2 04 00 00    	je     27cc <subdir+0x81c>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/dd/ffff") == 0){
    22ea:	c7 04 24 22 4c 00 00 	movl   $0x4c22,(%esp)
    22f1:	e8 d4 1c 00 00       	call   3fca <mkdir>
    22f6:	85 c0                	test   %eax,%eax
    22f8:	0f 84 ae 04 00 00    	je     27ac <subdir+0x7fc>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/xx/ff") == 0){
    22fe:	c7 04 24 fb 4c 00 00 	movl   $0x4cfb,(%esp)
    2305:	e8 a8 1c 00 00       	call   3fb2 <unlink>
    230a:	85 c0                	test   %eax,%eax
    230c:	0f 84 7a 04 00 00    	je     278c <subdir+0x7dc>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/ff/ff") == 0){
    2312:	c7 04 24 d6 4c 00 00 	movl   $0x4cd6,(%esp)
    2319:	e8 94 1c 00 00       	call   3fb2 <unlink>
    231e:	85 c0                	test   %eax,%eax
    2320:	0f 84 46 04 00 00    	je     276c <subdir+0x7bc>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/ff") == 0){
    2326:	c7 04 24 c1 4b 00 00 	movl   $0x4bc1,(%esp)
    232d:	e8 a0 1c 00 00       	call   3fd2 <chdir>
    2332:	85 c0                	test   %eax,%eax
    2334:	0f 84 12 04 00 00    	je     274c <subdir+0x79c>
    printf(1, "chdir dd/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/xx") == 0){
    233a:	c7 04 24 6d 4d 00 00 	movl   $0x4d6d,(%esp)
    2341:	e8 8c 1c 00 00       	call   3fd2 <chdir>
    2346:	85 c0                	test   %eax,%eax
    2348:	0f 84 de 03 00 00    	je     272c <subdir+0x77c>
    printf(1, "chdir dd/xx succeeded!\n");
    exit(0);
  }

  if(unlink("dd/dd/ffff") != 0){
    234e:	c7 04 24 22 4c 00 00 	movl   $0x4c22,(%esp)
    2355:	e8 58 1c 00 00       	call   3fb2 <unlink>
    235a:	85 c0                	test   %eax,%eax
    235c:	0f 85 aa 00 00 00    	jne    240c <subdir+0x45c>
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd/ff") != 0){
    2362:	c7 04 24 c1 4b 00 00 	movl   $0x4bc1,(%esp)
    2369:	e8 44 1c 00 00       	call   3fb2 <unlink>
    236e:	85 c0                	test   %eax,%eax
    2370:	0f 85 96 03 00 00    	jne    270c <subdir+0x75c>
    printf(1, "unlink dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd") == 0){
    2376:	c7 04 24 88 4c 00 00 	movl   $0x4c88,(%esp)
    237d:	e8 30 1c 00 00       	call   3fb2 <unlink>
    2382:	85 c0                	test   %eax,%eax
    2384:	0f 84 62 03 00 00    	je     26ec <subdir+0x73c>
    printf(1, "unlink non-empty dd succeeded!\n");
    exit(0);
  }
  if(unlink("dd/dd") < 0){
    238a:	c7 04 24 9d 4b 00 00 	movl   $0x4b9d,(%esp)
    2391:	e8 1c 1c 00 00       	call   3fb2 <unlink>
    2396:	85 c0                	test   %eax,%eax
    2398:	0f 88 2e 03 00 00    	js     26cc <subdir+0x71c>
    printf(1, "unlink dd/dd failed\n");
    exit(0);
  }
  if(unlink("dd") < 0){
    239e:	c7 04 24 88 4c 00 00 	movl   $0x4c88,(%esp)
    23a5:	e8 08 1c 00 00       	call   3fb2 <unlink>
    23aa:	85 c0                	test   %eax,%eax
    23ac:	0f 88 fa 02 00 00    	js     26ac <subdir+0x6fc>
    printf(1, "unlink dd failed\n");
    exit(0);
  }

  printf(1, "subdir ok\n");
    23b2:	c7 44 24 04 6a 4e 00 	movl   $0x4e6a,0x4(%esp)
    23b9:	00 
    23ba:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23c1:	e8 ea 1c 00 00       	call   40b0 <printf>
}
    23c6:	83 c4 14             	add    $0x14,%esp
    23c9:	5b                   	pop    %ebx
    23ca:	5d                   	pop    %ebp
    23cb:	c3                   	ret    
    printf(1, "open dd/dd/../ff failed\n");
    exit(0);
  }
  cc = read(fd, buf, sizeof(buf));
  if(cc != 2 || buf[0] != 'f'){
    printf(1, "dd/dd/../ff wrong content\n");
    23cc:	c7 44 24 04 07 4c 00 	movl   $0x4c07,0x4(%esp)
    23d3:	00 
    23d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23db:	e8 d0 1c 00 00       	call   40b0 <printf>
    exit(0);
    23e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    23e7:	e8 76 1b 00 00       	call   3f62 <exit>
  if(chdir("dd") != 0){
    printf(1, "chdir dd failed\n");
    exit(0);
  }
  if(chdir("dd/../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    23ec:	c7 44 24 04 62 4c 00 	movl   $0x4c62,0x4(%esp)
    23f3:	00 
    23f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    23fb:	e8 b0 1c 00 00       	call   40b0 <printf>
    exit(0);
    2400:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2407:	e8 56 1b 00 00       	call   3f62 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    exit(0);
  }

  if(unlink("dd/dd/ff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    240c:	c7 44 24 04 2d 4c 00 	movl   $0x4c2d,0x4(%esp)
    2413:	00 
    2414:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    241b:	e8 90 1c 00 00       	call   40b0 <printf>
    exit(0);
    2420:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2427:	e8 36 1b 00 00       	call   3f62 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    exit(0);
  }

  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/ff/ff succeeded!\n");
    242c:	c7 44 24 04 df 4c 00 	movl   $0x4cdf,0x4(%esp)
    2433:	00 
    2434:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    243b:	e8 70 1c 00 00       	call   40b0 <printf>
    exit(0);
    2440:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2447:	e8 16 1b 00 00       	call   3f62 <exit>
    exit(0);
  }
  close(fd);

  if(open("dd/dd/ff", O_RDONLY) >= 0){
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    244c:	c7 44 24 04 c4 56 00 	movl   $0x56c4,0x4(%esp)
    2453:	00 
    2454:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    245b:	e8 50 1c 00 00       	call   40b0 <printf>
    exit(0);
    2460:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2467:	e8 f6 1a 00 00       	call   3f62 <exit>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/ff/ff") == 0){
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    246c:	c7 44 24 04 73 4d 00 	movl   $0x4d73,0x4(%esp)
    2473:	00 
    2474:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    247b:	e8 30 1c 00 00       	call   40b0 <printf>
    exit(0);
    2480:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2487:	e8 d6 1a 00 00       	call   3f62 <exit>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/ff", "dd/dd/ffff") == 0){
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    248c:	c7 44 24 04 34 57 00 	movl   $0x5734,0x4(%esp)
    2493:	00 
    2494:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    249b:	e8 10 1c 00 00       	call   40b0 <printf>
    exit(0);
    24a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24a7:	e8 b6 1a 00 00       	call   3f62 <exit>
  write(fd, "FF", 2);
  close(fd);

  fd = open("dd/dd/../ff", 0);
  if(fd < 0){
    printf(1, "open dd/dd/../ff failed\n");
    24ac:	c7 44 24 04 ee 4b 00 	movl   $0x4bee,0x4(%esp)
    24b3:	00 
    24b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24bb:	e8 f0 1b 00 00       	call   40b0 <printf>
    exit(0);
    24c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24c7:	e8 96 1a 00 00       	call   3f62 <exit>
    exit(0);
  }

  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create dd/dd/ff failed\n");
    24cc:	c7 44 24 04 c7 4b 00 	movl   $0x4bc7,0x4(%esp)
    24d3:	00 
    24d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24db:	e8 d0 1b 00 00       	call   40b0 <printf>
    exit(0);
    24e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24e7:	e8 76 1a 00 00       	call   3f62 <exit>
  if(chdir("dd/../../../dd") != 0){
    printf(1, "chdir dd/../../dd failed\n");
    exit(0);
  }
  if(chdir("./..") != 0){
    printf(1, "chdir ./.. failed\n");
    24ec:	c7 44 24 04 90 4c 00 	movl   $0x4c90,0x4(%esp)
    24f3:	00 
    24f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24fb:	e8 b0 1b 00 00       	call   40b0 <printf>
    exit(0);
    2500:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2507:	e8 56 1a 00 00       	call   3f62 <exit>
    exit(0);
  }
  close(fd);

  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    250c:	c7 44 24 04 7c 56 00 	movl   $0x567c,0x4(%esp)
    2513:	00 
    2514:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    251b:	e8 90 1b 00 00       	call   40b0 <printf>
    exit(0);
    2520:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2527:	e8 36 1a 00 00       	call   3f62 <exit>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    exit(0);
  }
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    252c:	c7 44 24 04 10 57 00 	movl   $0x5710,0x4(%esp)
    2533:	00 
    2534:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    253b:	e8 70 1b 00 00       	call   40b0 <printf>
    exit(0);
    2540:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2547:	e8 16 1a 00 00       	call   3f62 <exit>
  if(open("dd", O_WRONLY) >= 0){
    printf(1, "open dd wronly succeeded!\n");
    exit(0);
  }
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    254c:	c7 44 24 04 ec 56 00 	movl   $0x56ec,0x4(%esp)
    2553:	00 
    2554:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    255b:	e8 50 1b 00 00       	call   40b0 <printf>
    exit(0);
    2560:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2567:	e8 f6 19 00 00       	call   3f62 <exit>
  if(open("dd", O_RDWR) >= 0){
    printf(1, "open dd rdwr succeeded!\n");
    exit(0);
  }
  if(open("dd", O_WRONLY) >= 0){
    printf(1, "open dd wronly succeeded!\n");
    256c:	c7 44 24 04 4f 4d 00 	movl   $0x4d4f,0x4(%esp)
    2573:	00 
    2574:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    257b:	e8 30 1b 00 00       	call   40b0 <printf>
    exit(0);
    2580:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2587:	e8 d6 19 00 00       	call   3f62 <exit>
  if(open("dd", O_CREATE) >= 0){
    printf(1, "create dd succeeded!\n");
    exit(0);
  }
  if(open("dd", O_RDWR) >= 0){
    printf(1, "open dd rdwr succeeded!\n");
    258c:	c7 44 24 04 36 4d 00 	movl   $0x4d36,0x4(%esp)
    2593:	00 
    2594:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    259b:	e8 10 1b 00 00       	call   40b0 <printf>
    exit(0);
    25a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25a7:	e8 b6 19 00 00       	call   3f62 <exit>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(open("dd", O_CREATE) >= 0){
    printf(1, "create dd succeeded!\n");
    25ac:	c7 44 24 04 20 4d 00 	movl   $0x4d20,0x4(%esp)
    25b3:	00 
    25b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25bb:	e8 f0 1a 00 00       	call   40b0 <printf>
    exit(0);
    25c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25c7:	e8 96 19 00 00       	call   3f62 <exit>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    printf(1, "create dd/xx/ff succeeded!\n");
    25cc:	c7 44 24 04 04 4d 00 	movl   $0x4d04,0x4(%esp)
    25d3:	00 
    25d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25db:	e8 d0 1a 00 00       	call   40b0 <printf>
    exit(0);
    25e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25e7:	e8 76 19 00 00       	call   3f62 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    exit(0);
  }

  if(chdir("dd") != 0){
    printf(1, "chdir dd failed\n");
    25ec:	c7 44 24 04 45 4c 00 	movl   $0x4c45,0x4(%esp)
    25f3:	00 
    25f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25fb:	e8 b0 1a 00 00       	call   40b0 <printf>
    exit(0);
    2600:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2607:	e8 56 19 00 00       	call   3f62 <exit>
  if(unlink("dd/dd/ff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    260c:	c7 44 24 04 a0 56 00 	movl   $0x56a0,0x4(%esp)
    2613:	00 
    2614:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    261b:	e8 90 1a 00 00       	call   40b0 <printf>
    exit(0);
    2620:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2627:	e8 36 19 00 00       	call   3f62 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    exit(0);
  }

  if(mkdir("/dd/dd") != 0){
    printf(1, "subdir mkdir dd/dd failed\n");
    262c:	c7 44 24 04 a3 4b 00 	movl   $0x4ba3,0x4(%esp)
    2633:	00 
    2634:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    263b:	e8 70 1a 00 00       	call   40b0 <printf>
    exit(0);
    2640:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2647:	e8 16 19 00 00       	call   3f62 <exit>
  }
  write(fd, "ff", 2);
  close(fd);

  if(unlink("dd") >= 0){
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    264c:	c7 44 24 04 54 56 00 	movl   $0x5654,0x4(%esp)
    2653:	00 
    2654:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    265b:	e8 50 1a 00 00       	call   40b0 <printf>
    exit(0);
    2660:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2667:	e8 f6 18 00 00       	call   3f62 <exit>
    exit(0);
  }

  fd = open("dd/ff", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "create dd/ff failed\n");
    266c:	c7 44 24 04 87 4b 00 	movl   $0x4b87,0x4(%esp)
    2673:	00 
    2674:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    267b:	e8 30 1a 00 00       	call   40b0 <printf>
    exit(0);
    2680:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2687:	e8 d6 18 00 00       	call   3f62 <exit>

  printf(1, "subdir test\n");

  unlink("ff");
  if(mkdir("dd") != 0){
    printf(1, "subdir mkdir dd failed\n");
    268c:	c7 44 24 04 6f 4b 00 	movl   $0x4b6f,0x4(%esp)
    2693:	00 
    2694:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    269b:	e8 10 1a 00 00       	call   40b0 <printf>
    exit(0);
    26a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26a7:	e8 b6 18 00 00       	call   3f62 <exit>
  if(unlink("dd/dd") < 0){
    printf(1, "unlink dd/dd failed\n");
    exit(0);
  }
  if(unlink("dd") < 0){
    printf(1, "unlink dd failed\n");
    26ac:	c7 44 24 04 58 4e 00 	movl   $0x4e58,0x4(%esp)
    26b3:	00 
    26b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26bb:	e8 f0 19 00 00       	call   40b0 <printf>
    exit(0);
    26c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26c7:	e8 96 18 00 00       	call   3f62 <exit>
  if(unlink("dd") == 0){
    printf(1, "unlink non-empty dd succeeded!\n");
    exit(0);
  }
  if(unlink("dd/dd") < 0){
    printf(1, "unlink dd/dd failed\n");
    26cc:	c7 44 24 04 43 4e 00 	movl   $0x4e43,0x4(%esp)
    26d3:	00 
    26d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26db:	e8 d0 19 00 00       	call   40b0 <printf>
    exit(0);
    26e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26e7:	e8 76 18 00 00       	call   3f62 <exit>
  if(unlink("dd/ff") != 0){
    printf(1, "unlink dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd") == 0){
    printf(1, "unlink non-empty dd succeeded!\n");
    26ec:	c7 44 24 04 58 57 00 	movl   $0x5758,0x4(%esp)
    26f3:	00 
    26f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26fb:	e8 b0 19 00 00       	call   40b0 <printf>
    exit(0);
    2700:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2707:	e8 56 18 00 00       	call   3f62 <exit>
  if(unlink("dd/dd/ffff") != 0){
    printf(1, "unlink dd/dd/ff failed\n");
    exit(0);
  }
  if(unlink("dd/ff") != 0){
    printf(1, "unlink dd/ff failed\n");
    270c:	c7 44 24 04 2e 4e 00 	movl   $0x4e2e,0x4(%esp)
    2713:	00 
    2714:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    271b:	e8 90 19 00 00       	call   40b0 <printf>
    exit(0);
    2720:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2727:	e8 36 18 00 00       	call   3f62 <exit>
  if(chdir("dd/ff") == 0){
    printf(1, "chdir dd/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/xx") == 0){
    printf(1, "chdir dd/xx succeeded!\n");
    272c:	c7 44 24 04 16 4e 00 	movl   $0x4e16,0x4(%esp)
    2733:	00 
    2734:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    273b:	e8 70 19 00 00       	call   40b0 <printf>
    exit(0);
    2740:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2747:	e8 16 18 00 00       	call   3f62 <exit>
  if(unlink("dd/ff/ff") == 0){
    printf(1, "unlink dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(chdir("dd/ff") == 0){
    printf(1, "chdir dd/ff succeeded!\n");
    274c:	c7 44 24 04 fe 4d 00 	movl   $0x4dfe,0x4(%esp)
    2753:	00 
    2754:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    275b:	e8 50 19 00 00       	call   40b0 <printf>
    exit(0);
    2760:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2767:	e8 f6 17 00 00       	call   3f62 <exit>
  if(unlink("dd/xx/ff") == 0){
    printf(1, "unlink dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/ff/ff") == 0){
    printf(1, "unlink dd/ff/ff succeeded!\n");
    276c:	c7 44 24 04 e2 4d 00 	movl   $0x4de2,0x4(%esp)
    2773:	00 
    2774:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    277b:	e8 30 19 00 00       	call   40b0 <printf>
    exit(0);
    2780:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2787:	e8 d6 17 00 00       	call   3f62 <exit>
  if(mkdir("dd/dd/ffff") == 0){
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    exit(0);
  }
  if(unlink("dd/xx/ff") == 0){
    printf(1, "unlink dd/xx/ff succeeded!\n");
    278c:	c7 44 24 04 c6 4d 00 	movl   $0x4dc6,0x4(%esp)
    2793:	00 
    2794:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    279b:	e8 10 19 00 00       	call   40b0 <printf>
    exit(0);
    27a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27a7:	e8 b6 17 00 00       	call   3f62 <exit>
  if(mkdir("dd/xx/ff") == 0){
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/dd/ffff") == 0){
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    27ac:	c7 44 24 04 a9 4d 00 	movl   $0x4da9,0x4(%esp)
    27b3:	00 
    27b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27bb:	e8 f0 18 00 00       	call   40b0 <printf>
    exit(0);
    27c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27c7:	e8 96 17 00 00       	call   3f62 <exit>
  if(mkdir("dd/ff/ff") == 0){
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    exit(0);
  }
  if(mkdir("dd/xx/ff") == 0){
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    27cc:	c7 44 24 04 8e 4d 00 	movl   $0x4d8e,0x4(%esp)
    27d3:	00 
    27d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27db:	e8 d0 18 00 00       	call   40b0 <printf>
    exit(0);
    27e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27e7:	e8 76 17 00 00       	call   3f62 <exit>
  if(fd < 0){
    printf(1, "open dd/dd/ffff failed\n");
    exit(0);
  }
  if(read(fd, buf, sizeof(buf)) != 2){
    printf(1, "read dd/dd/ffff wrong len\n");
    27ec:	c7 44 24 04 bb 4c 00 	movl   $0x4cbb,0x4(%esp)
    27f3:	00 
    27f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27fb:	e8 b0 18 00 00       	call   40b0 <printf>
    exit(0);
    2800:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2807:	e8 56 17 00 00       	call   3f62 <exit>
    exit(0);
  }

  fd = open("dd/dd/ffff", 0);
  if(fd < 0){
    printf(1, "open dd/dd/ffff failed\n");
    280c:	c7 44 24 04 a3 4c 00 	movl   $0x4ca3,0x4(%esp)
    2813:	00 
    2814:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    281b:	e8 90 18 00 00       	call   40b0 <printf>
    exit(0);
    2820:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2827:	e8 36 17 00 00       	call   3f62 <exit>
    282c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002830 <bigwrite>:
}

// test writes that are larger than the log.
void
bigwrite(void)
{
    2830:	55                   	push   %ebp
    2831:	89 e5                	mov    %esp,%ebp
    2833:	56                   	push   %esi
    2834:	53                   	push   %ebx
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    2835:	bb f3 01 00 00       	mov    $0x1f3,%ebx
}

// test writes that are larger than the log.
void
bigwrite(void)
{
    283a:	83 ec 10             	sub    $0x10,%esp
  int fd, sz;

  printf(1, "bigwrite test\n");
    283d:	c7 44 24 04 75 4e 00 	movl   $0x4e75,0x4(%esp)
    2844:	00 
    2845:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    284c:	e8 5f 18 00 00       	call   40b0 <printf>

  unlink("bigwrite");
    2851:	c7 04 24 84 4e 00 00 	movl   $0x4e84,(%esp)
    2858:	e8 55 17 00 00       	call   3fb2 <unlink>
    285d:	8d 76 00             	lea    0x0(%esi),%esi
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2860:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2867:	00 
    2868:	c7 04 24 84 4e 00 00 	movl   $0x4e84,(%esp)
    286f:	e8 2e 17 00 00       	call   3fa2 <open>
    if(fd < 0){
    2874:	85 c0                	test   %eax,%eax

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2876:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2878:	0f 88 95 00 00 00    	js     2913 <bigwrite+0xe3>
      printf(1, "cannot create bigwrite\n");
      exit(0);
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
    287e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2882:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
    2889:	00 
    288a:	89 04 24             	mov    %eax,(%esp)
    288d:	e8 f0 16 00 00       	call   3f82 <write>
      if(cc != sz){
    2892:	39 d8                	cmp    %ebx,%eax
    2894:	75 55                	jne    28eb <bigwrite+0xbb>
      printf(1, "cannot create bigwrite\n");
      exit(0);
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
    2896:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    289a:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
    28a1:	00 
    28a2:	89 34 24             	mov    %esi,(%esp)
    28a5:	e8 d8 16 00 00       	call   3f82 <write>
      if(cc != sz){
    28aa:	39 c3                	cmp    %eax,%ebx
    28ac:	75 3d                	jne    28eb <bigwrite+0xbb>
        printf(1, "write(%d) ret %d\n", sz, cc);
        exit(0);
      }
    }
    close(fd);
    28ae:	89 34 24             	mov    %esi,(%esp)
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    28b1:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
      if(cc != sz){
        printf(1, "write(%d) ret %d\n", sz, cc);
        exit(0);
      }
    }
    close(fd);
    28b7:	e8 ce 16 00 00       	call   3f8a <close>
    unlink("bigwrite");
    28bc:	c7 04 24 84 4e 00 00 	movl   $0x4e84,(%esp)
    28c3:	e8 ea 16 00 00       	call   3fb2 <unlink>
  int fd, sz;

  printf(1, "bigwrite test\n");

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    28c8:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    28ce:	75 90                	jne    2860 <bigwrite+0x30>
    }
    close(fd);
    unlink("bigwrite");
  }

  printf(1, "bigwrite ok\n");
    28d0:	c7 44 24 04 b7 4e 00 	movl   $0x4eb7,0x4(%esp)
    28d7:	00 
    28d8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28df:	e8 cc 17 00 00       	call   40b0 <printf>
}
    28e4:	83 c4 10             	add    $0x10,%esp
    28e7:	5b                   	pop    %ebx
    28e8:	5e                   	pop    %esi
    28e9:	5d                   	pop    %ebp
    28ea:	c3                   	ret    
    }
    int i;
    for(i = 0; i < 2; i++){
      int cc = write(fd, buf, sz);
      if(cc != sz){
        printf(1, "write(%d) ret %d\n", sz, cc);
    28eb:	89 44 24 0c          	mov    %eax,0xc(%esp)
    28ef:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    28f3:	c7 44 24 04 a5 4e 00 	movl   $0x4ea5,0x4(%esp)
    28fa:	00 
    28fb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2902:	e8 a9 17 00 00       	call   40b0 <printf>
        exit(0);
    2907:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    290e:	e8 4f 16 00 00       	call   3f62 <exit>

  unlink("bigwrite");
  for(sz = 499; sz < 12*512; sz += 471){
    fd = open("bigwrite", O_CREATE | O_RDWR);
    if(fd < 0){
      printf(1, "cannot create bigwrite\n");
    2913:	c7 44 24 04 8d 4e 00 	movl   $0x4e8d,0x4(%esp)
    291a:	00 
    291b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2922:	e8 89 17 00 00       	call   40b0 <printf>
      exit(0);
    2927:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    292e:	e8 2f 16 00 00       	call   3f62 <exit>
    2933:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2939:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002940 <bigfile>:
  printf(1, "bigwrite ok\n");
}

void
bigfile(void)
{
    2940:	55                   	push   %ebp
    2941:	89 e5                	mov    %esp,%ebp
    2943:	57                   	push   %edi
    2944:	56                   	push   %esi
    2945:	53                   	push   %ebx
    2946:	83 ec 1c             	sub    $0x1c,%esp
  int fd, i, total, cc;

  printf(1, "bigfile test\n");
    2949:	c7 44 24 04 c4 4e 00 	movl   $0x4ec4,0x4(%esp)
    2950:	00 
    2951:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2958:	e8 53 17 00 00       	call   40b0 <printf>

  unlink("bigfile");
    295d:	c7 04 24 e0 4e 00 00 	movl   $0x4ee0,(%esp)
    2964:	e8 49 16 00 00       	call   3fb2 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2969:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2970:	00 
    2971:	c7 04 24 e0 4e 00 00 	movl   $0x4ee0,(%esp)
    2978:	e8 25 16 00 00       	call   3fa2 <open>
  if(fd < 0){
    297d:	85 c0                	test   %eax,%eax
  int fd, i, total, cc;

  printf(1, "bigfile test\n");

  unlink("bigfile");
  fd = open("bigfile", O_CREATE | O_RDWR);
    297f:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2981:	0f 88 a2 01 00 00    	js     2b29 <bigfile+0x1e9>
    2987:	31 db                	xor    %ebx,%ebx
    2989:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "cannot create bigfile");
    exit(0);
  }
  for(i = 0; i < 20; i++){
    memset(buf, i, 600);
    2990:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    2997:	00 
    2998:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    299c:	c7 04 24 80 8c 00 00 	movl   $0x8c80,(%esp)
    29a3:	e8 48 14 00 00       	call   3df0 <memset>
    if(write(fd, buf, 600) != 600){
    29a8:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    29af:	00 
    29b0:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
    29b7:	00 
    29b8:	89 34 24             	mov    %esi,(%esp)
    29bb:	e8 c2 15 00 00       	call   3f82 <write>
    29c0:	3d 58 02 00 00       	cmp    $0x258,%eax
    29c5:	0f 85 1e 01 00 00    	jne    2ae9 <bigfile+0x1a9>
  fd = open("bigfile", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "cannot create bigfile");
    exit(0);
  }
  for(i = 0; i < 20; i++){
    29cb:	83 c3 01             	add    $0x1,%ebx
    29ce:	83 fb 14             	cmp    $0x14,%ebx
    29d1:	75 bd                	jne    2990 <bigfile+0x50>
    if(write(fd, buf, 600) != 600){
      printf(1, "write bigfile failed\n");
      exit(0);
    }
  }
  close(fd);
    29d3:	89 34 24             	mov    %esi,(%esp)
    29d6:	e8 af 15 00 00       	call   3f8a <close>

  fd = open("bigfile", 0);
    29db:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    29e2:	00 
    29e3:	c7 04 24 e0 4e 00 00 	movl   $0x4ee0,(%esp)
    29ea:	e8 b3 15 00 00       	call   3fa2 <open>
  if(fd < 0){
    29ef:	85 c0                	test   %eax,%eax
      exit(0);
    }
  }
  close(fd);

  fd = open("bigfile", 0);
    29f1:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    29f3:	0f 88 10 01 00 00    	js     2b09 <bigfile+0x1c9>
    29f9:	31 db                	xor    %ebx,%ebx
    29fb:	31 ff                	xor    %edi,%edi
    29fd:	eb 2f                	jmp    2a2e <bigfile+0xee>
    29ff:	90                   	nop
      printf(1, "read bigfile failed\n");
      exit(0);
    }
    if(cc == 0)
      break;
    if(cc != 300){
    2a00:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2a05:	0f 85 9e 00 00 00    	jne    2aa9 <bigfile+0x169>
      printf(1, "short read bigfile\n");
      exit(0);
    }
    if(buf[0] != i/2 || buf[299] != i/2){
    2a0b:	0f be 05 80 8c 00 00 	movsbl 0x8c80,%eax
    2a12:	89 fa                	mov    %edi,%edx
    2a14:	d1 fa                	sar    %edx
    2a16:	39 d0                	cmp    %edx,%eax
    2a18:	75 6f                	jne    2a89 <bigfile+0x149>
    2a1a:	0f be 15 ab 8d 00 00 	movsbl 0x8dab,%edx
    2a21:	39 d0                	cmp    %edx,%eax
    2a23:	75 64                	jne    2a89 <bigfile+0x149>
      printf(1, "read bigfile wrong data\n");
      exit(0);
    }
    total += cc;
    2a25:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  if(fd < 0){
    printf(1, "cannot open bigfile\n");
    exit(0);
  }
  total = 0;
  for(i = 0; ; i++){
    2a2b:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    2a2e:	c7 44 24 08 2c 01 00 	movl   $0x12c,0x8(%esp)
    2a35:	00 
    2a36:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
    2a3d:	00 
    2a3e:	89 34 24             	mov    %esi,(%esp)
    2a41:	e8 34 15 00 00       	call   3f7a <read>
    if(cc < 0){
    2a46:	85 c0                	test   %eax,%eax
    2a48:	78 7f                	js     2ac9 <bigfile+0x189>
      printf(1, "read bigfile failed\n");
      exit(0);
    }
    if(cc == 0)
    2a4a:	75 b4                	jne    2a00 <bigfile+0xc0>
      printf(1, "read bigfile wrong data\n");
      exit(0);
    }
    total += cc;
  }
  close(fd);
    2a4c:	89 34 24             	mov    %esi,(%esp)
    2a4f:	90                   	nop
    2a50:	e8 35 15 00 00       	call   3f8a <close>
  if(total != 20*600){
    2a55:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    2a5b:	0f 85 e8 00 00 00    	jne    2b49 <bigfile+0x209>
    printf(1, "read bigfile wrong total\n");
    exit(0);
  }
  unlink("bigfile");
    2a61:	c7 04 24 e0 4e 00 00 	movl   $0x4ee0,(%esp)
    2a68:	e8 45 15 00 00       	call   3fb2 <unlink>

  printf(1, "bigfile test ok\n");
    2a6d:	c7 44 24 04 6f 4f 00 	movl   $0x4f6f,0x4(%esp)
    2a74:	00 
    2a75:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a7c:	e8 2f 16 00 00       	call   40b0 <printf>
}
    2a81:	83 c4 1c             	add    $0x1c,%esp
    2a84:	5b                   	pop    %ebx
    2a85:	5e                   	pop    %esi
    2a86:	5f                   	pop    %edi
    2a87:	5d                   	pop    %ebp
    2a88:	c3                   	ret    
    if(cc != 300){
      printf(1, "short read bigfile\n");
      exit(0);
    }
    if(buf[0] != i/2 || buf[299] != i/2){
      printf(1, "read bigfile wrong data\n");
    2a89:	c7 44 24 04 3c 4f 00 	movl   $0x4f3c,0x4(%esp)
    2a90:	00 
    2a91:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a98:	e8 13 16 00 00       	call   40b0 <printf>
      exit(0);
    2a9d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2aa4:	e8 b9 14 00 00       	call   3f62 <exit>
      exit(0);
    }
    if(cc == 0)
      break;
    if(cc != 300){
      printf(1, "short read bigfile\n");
    2aa9:	c7 44 24 04 28 4f 00 	movl   $0x4f28,0x4(%esp)
    2ab0:	00 
    2ab1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ab8:	e8 f3 15 00 00       	call   40b0 <printf>
      exit(0);
    2abd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ac4:	e8 99 14 00 00       	call   3f62 <exit>
  }
  total = 0;
  for(i = 0; ; i++){
    cc = read(fd, buf, 300);
    if(cc < 0){
      printf(1, "read bigfile failed\n");
    2ac9:	c7 44 24 04 13 4f 00 	movl   $0x4f13,0x4(%esp)
    2ad0:	00 
    2ad1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ad8:	e8 d3 15 00 00       	call   40b0 <printf>
      exit(0);
    2add:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ae4:	e8 79 14 00 00       	call   3f62 <exit>
    exit(0);
  }
  for(i = 0; i < 20; i++){
    memset(buf, i, 600);
    if(write(fd, buf, 600) != 600){
      printf(1, "write bigfile failed\n");
    2ae9:	c7 44 24 04 e8 4e 00 	movl   $0x4ee8,0x4(%esp)
    2af0:	00 
    2af1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2af8:	e8 b3 15 00 00       	call   40b0 <printf>
      exit(0);
    2afd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b04:	e8 59 14 00 00       	call   3f62 <exit>
  }
  close(fd);

  fd = open("bigfile", 0);
  if(fd < 0){
    printf(1, "cannot open bigfile\n");
    2b09:	c7 44 24 04 fe 4e 00 	movl   $0x4efe,0x4(%esp)
    2b10:	00 
    2b11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b18:	e8 93 15 00 00       	call   40b0 <printf>
    exit(0);
    2b1d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b24:	e8 39 14 00 00       	call   3f62 <exit>
  printf(1, "bigfile test\n");

  unlink("bigfile");
  fd = open("bigfile", O_CREATE | O_RDWR);
  if(fd < 0){
    printf(1, "cannot create bigfile");
    2b29:	c7 44 24 04 d2 4e 00 	movl   $0x4ed2,0x4(%esp)
    2b30:	00 
    2b31:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b38:	e8 73 15 00 00       	call   40b0 <printf>
    exit(0);
    2b3d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b44:	e8 19 14 00 00       	call   3f62 <exit>
    }
    total += cc;
  }
  close(fd);
  if(total != 20*600){
    printf(1, "read bigfile wrong total\n");
    2b49:	c7 44 24 04 55 4f 00 	movl   $0x4f55,0x4(%esp)
    2b50:	00 
    2b51:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b58:	e8 53 15 00 00       	call   40b0 <printf>
    exit(0);
    2b5d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b64:	e8 f9 13 00 00       	call   3f62 <exit>
    2b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002b70 <fourteen>:
  printf(1, "bigfile test ok\n");
}

void
fourteen(void)
{
    2b70:	55                   	push   %ebp
    2b71:	89 e5                	mov    %esp,%ebp
    2b73:	83 ec 18             	sub    $0x18,%esp
  int fd;

  // DIRSIZ is 14.
  printf(1, "fourteen test\n");
    2b76:	c7 44 24 04 80 4f 00 	movl   $0x4f80,0x4(%esp)
    2b7d:	00 
    2b7e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b85:	e8 26 15 00 00       	call   40b0 <printf>

  if(mkdir("12345678901234") != 0){
    2b8a:	c7 04 24 bb 4f 00 00 	movl   $0x4fbb,(%esp)
    2b91:	e8 34 14 00 00       	call   3fca <mkdir>
    2b96:	85 c0                	test   %eax,%eax
    2b98:	0f 85 92 00 00 00    	jne    2c30 <fourteen+0xc0>
    printf(1, "mkdir 12345678901234 failed\n");
    exit(0);
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    2b9e:	c7 04 24 78 57 00 00 	movl   $0x5778,(%esp)
    2ba5:	e8 20 14 00 00       	call   3fca <mkdir>
    2baa:	85 c0                	test   %eax,%eax
    2bac:	0f 85 1e 01 00 00    	jne    2cd0 <fourteen+0x160>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit(0);
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2bb2:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2bb9:	00 
    2bba:	c7 04 24 c8 57 00 00 	movl   $0x57c8,(%esp)
    2bc1:	e8 dc 13 00 00       	call   3fa2 <open>
  if(fd < 0){
    2bc6:	85 c0                	test   %eax,%eax
    2bc8:	0f 88 e2 00 00 00    	js     2cb0 <fourteen+0x140>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    exit(0);
  }
  close(fd);
    2bce:	89 04 24             	mov    %eax,(%esp)
    2bd1:	e8 b4 13 00 00       	call   3f8a <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2bd6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2bdd:	00 
    2bde:	c7 04 24 38 58 00 00 	movl   $0x5838,(%esp)
    2be5:	e8 b8 13 00 00       	call   3fa2 <open>
  if(fd < 0){
    2bea:	85 c0                	test   %eax,%eax
    2bec:	0f 88 9e 00 00 00    	js     2c90 <fourteen+0x120>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    exit(0);
  }
  close(fd);
    2bf2:	89 04 24             	mov    %eax,(%esp)
    2bf5:	e8 90 13 00 00       	call   3f8a <close>

  if(mkdir("12345678901234/12345678901234") == 0){
    2bfa:	c7 04 24 ac 4f 00 00 	movl   $0x4fac,(%esp)
    2c01:	e8 c4 13 00 00       	call   3fca <mkdir>
    2c06:	85 c0                	test   %eax,%eax
    2c08:	74 66                	je     2c70 <fourteen+0x100>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    exit(0);
  }
  if(mkdir("123456789012345/12345678901234") == 0){
    2c0a:	c7 04 24 d4 58 00 00 	movl   $0x58d4,(%esp)
    2c11:	e8 b4 13 00 00       	call   3fca <mkdir>
    2c16:	85 c0                	test   %eax,%eax
    2c18:	74 36                	je     2c50 <fourteen+0xe0>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    exit(0);
  }

  printf(1, "fourteen ok\n");
    2c1a:	c7 44 24 04 ca 4f 00 	movl   $0x4fca,0x4(%esp)
    2c21:	00 
    2c22:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c29:	e8 82 14 00 00       	call   40b0 <printf>
}
    2c2e:	c9                   	leave  
    2c2f:	c3                   	ret    

  // DIRSIZ is 14.
  printf(1, "fourteen test\n");

  if(mkdir("12345678901234") != 0){
    printf(1, "mkdir 12345678901234 failed\n");
    2c30:	c7 44 24 04 8f 4f 00 	movl   $0x4f8f,0x4(%esp)
    2c37:	00 
    2c38:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c3f:	e8 6c 14 00 00       	call   40b0 <printf>
    exit(0);
    2c44:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c4b:	e8 12 13 00 00       	call   3f62 <exit>
  if(mkdir("12345678901234/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    exit(0);
  }
  if(mkdir("123456789012345/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2c50:	c7 44 24 04 f4 58 00 	movl   $0x58f4,0x4(%esp)
    2c57:	00 
    2c58:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c5f:	e8 4c 14 00 00       	call   40b0 <printf>
    exit(0);
    2c64:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c6b:	e8 f2 12 00 00       	call   3f62 <exit>
    exit(0);
  }
  close(fd);

  if(mkdir("12345678901234/12345678901234") == 0){
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2c70:	c7 44 24 04 a4 58 00 	movl   $0x58a4,0x4(%esp)
    2c77:	00 
    2c78:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c7f:	e8 2c 14 00 00       	call   40b0 <printf>
    exit(0);
    2c84:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c8b:	e8 d2 12 00 00       	call   3f62 <exit>
    exit(0);
  }
  close(fd);
  fd = open("12345678901234/12345678901234/12345678901234", 0);
  if(fd < 0){
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2c90:	c7 44 24 04 68 58 00 	movl   $0x5868,0x4(%esp)
    2c97:	00 
    2c98:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c9f:	e8 0c 14 00 00       	call   40b0 <printf>
    exit(0);
    2ca4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2cab:	e8 b2 12 00 00       	call   3f62 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    exit(0);
  }
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
  if(fd < 0){
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    2cb0:	c7 44 24 04 f8 57 00 	movl   $0x57f8,0x4(%esp)
    2cb7:	00 
    2cb8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cbf:	e8 ec 13 00 00       	call   40b0 <printf>
    exit(0);
    2cc4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ccb:	e8 92 12 00 00       	call   3f62 <exit>
  if(mkdir("12345678901234") != 0){
    printf(1, "mkdir 12345678901234 failed\n");
    exit(0);
  }
  if(mkdir("12345678901234/123456789012345") != 0){
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    2cd0:	c7 44 24 04 98 57 00 	movl   $0x5798,0x4(%esp)
    2cd7:	00 
    2cd8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cdf:	e8 cc 13 00 00       	call   40b0 <printf>
    exit(0);
    2ce4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ceb:	e8 72 12 00 00       	call   3f62 <exit>

00002cf0 <rmdot>:
  printf(1, "fourteen ok\n");
}

void
rmdot(void)
{
    2cf0:	55                   	push   %ebp
    2cf1:	89 e5                	mov    %esp,%ebp
    2cf3:	83 ec 18             	sub    $0x18,%esp
  printf(1, "rmdot test\n");
    2cf6:	c7 44 24 04 d7 4f 00 	movl   $0x4fd7,0x4(%esp)
    2cfd:	00 
    2cfe:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d05:	e8 a6 13 00 00       	call   40b0 <printf>
  if(mkdir("dots") != 0){
    2d0a:	c7 04 24 e3 4f 00 00 	movl   $0x4fe3,(%esp)
    2d11:	e8 b4 12 00 00       	call   3fca <mkdir>
    2d16:	85 c0                	test   %eax,%eax
    2d18:	0f 85 9a 00 00 00    	jne    2db8 <rmdot+0xc8>
    printf(1, "mkdir dots failed\n");
    exit(0);
  }
  if(chdir("dots") != 0){
    2d1e:	c7 04 24 e3 4f 00 00 	movl   $0x4fe3,(%esp)
    2d25:	e8 a8 12 00 00       	call   3fd2 <chdir>
    2d2a:	85 c0                	test   %eax,%eax
    2d2c:	0f 85 66 01 00 00    	jne    2e98 <rmdot+0x1a8>
    printf(1, "chdir dots failed\n");
    exit(0);
  }
  if(unlink(".") == 0){
    2d32:	c7 04 24 8e 4c 00 00 	movl   $0x4c8e,(%esp)
    2d39:	e8 74 12 00 00       	call   3fb2 <unlink>
    2d3e:	85 c0                	test   %eax,%eax
    2d40:	0f 84 32 01 00 00    	je     2e78 <rmdot+0x188>
    printf(1, "rm . worked!\n");
    exit(0);
  }
  if(unlink("..") == 0){
    2d46:	c7 04 24 8d 4c 00 00 	movl   $0x4c8d,(%esp)
    2d4d:	e8 60 12 00 00       	call   3fb2 <unlink>
    2d52:	85 c0                	test   %eax,%eax
    2d54:	0f 84 fe 00 00 00    	je     2e58 <rmdot+0x168>
    printf(1, "rm .. worked!\n");
    exit(0);
  }
  if(chdir("/") != 0){
    2d5a:	c7 04 24 61 44 00 00 	movl   $0x4461,(%esp)
    2d61:	e8 6c 12 00 00       	call   3fd2 <chdir>
    2d66:	85 c0                	test   %eax,%eax
    2d68:	0f 85 ca 00 00 00    	jne    2e38 <rmdot+0x148>
    printf(1, "chdir / failed\n");
    exit(0);
  }
  if(unlink("dots/.") == 0){
    2d6e:	c7 04 24 2b 50 00 00 	movl   $0x502b,(%esp)
    2d75:	e8 38 12 00 00       	call   3fb2 <unlink>
    2d7a:	85 c0                	test   %eax,%eax
    2d7c:	0f 84 96 00 00 00    	je     2e18 <rmdot+0x128>
    printf(1, "unlink dots/. worked!\n");
    exit(0);
  }
  if(unlink("dots/..") == 0){
    2d82:	c7 04 24 49 50 00 00 	movl   $0x5049,(%esp)
    2d89:	e8 24 12 00 00       	call   3fb2 <unlink>
    2d8e:	85 c0                	test   %eax,%eax
    2d90:	74 66                	je     2df8 <rmdot+0x108>
    printf(1, "unlink dots/.. worked!\n");
    exit(0);
  }
  if(unlink("dots") != 0){
    2d92:	c7 04 24 e3 4f 00 00 	movl   $0x4fe3,(%esp)
    2d99:	e8 14 12 00 00       	call   3fb2 <unlink>
    2d9e:	85 c0                	test   %eax,%eax
    2da0:	75 36                	jne    2dd8 <rmdot+0xe8>
    printf(1, "unlink dots failed!\n");
    exit(0);
  }
  printf(1, "rmdot ok\n");
    2da2:	c7 44 24 04 7e 50 00 	movl   $0x507e,0x4(%esp)
    2da9:	00 
    2daa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2db1:	e8 fa 12 00 00       	call   40b0 <printf>
}
    2db6:	c9                   	leave  
    2db7:	c3                   	ret    
void
rmdot(void)
{
  printf(1, "rmdot test\n");
  if(mkdir("dots") != 0){
    printf(1, "mkdir dots failed\n");
    2db8:	c7 44 24 04 e8 4f 00 	movl   $0x4fe8,0x4(%esp)
    2dbf:	00 
    2dc0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2dc7:	e8 e4 12 00 00       	call   40b0 <printf>
    exit(0);
    2dcc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2dd3:	e8 8a 11 00 00       	call   3f62 <exit>
  if(unlink("dots/..") == 0){
    printf(1, "unlink dots/.. worked!\n");
    exit(0);
  }
  if(unlink("dots") != 0){
    printf(1, "unlink dots failed!\n");
    2dd8:	c7 44 24 04 69 50 00 	movl   $0x5069,0x4(%esp)
    2ddf:	00 
    2de0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2de7:	e8 c4 12 00 00       	call   40b0 <printf>
    exit(0);
    2dec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2df3:	e8 6a 11 00 00       	call   3f62 <exit>
  if(unlink("dots/.") == 0){
    printf(1, "unlink dots/. worked!\n");
    exit(0);
  }
  if(unlink("dots/..") == 0){
    printf(1, "unlink dots/.. worked!\n");
    2df8:	c7 44 24 04 51 50 00 	movl   $0x5051,0x4(%esp)
    2dff:	00 
    2e00:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e07:	e8 a4 12 00 00       	call   40b0 <printf>
    exit(0);
    2e0c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e13:	e8 4a 11 00 00       	call   3f62 <exit>
  if(chdir("/") != 0){
    printf(1, "chdir / failed\n");
    exit(0);
  }
  if(unlink("dots/.") == 0){
    printf(1, "unlink dots/. worked!\n");
    2e18:	c7 44 24 04 32 50 00 	movl   $0x5032,0x4(%esp)
    2e1f:	00 
    2e20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e27:	e8 84 12 00 00       	call   40b0 <printf>
    exit(0);
    2e2c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e33:	e8 2a 11 00 00       	call   3f62 <exit>
  if(unlink("..") == 0){
    printf(1, "rm .. worked!\n");
    exit(0);
  }
  if(chdir("/") != 0){
    printf(1, "chdir / failed\n");
    2e38:	c7 44 24 04 63 44 00 	movl   $0x4463,0x4(%esp)
    2e3f:	00 
    2e40:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e47:	e8 64 12 00 00       	call   40b0 <printf>
    exit(0);
    2e4c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e53:	e8 0a 11 00 00       	call   3f62 <exit>
  if(unlink(".") == 0){
    printf(1, "rm . worked!\n");
    exit(0);
  }
  if(unlink("..") == 0){
    printf(1, "rm .. worked!\n");
    2e58:	c7 44 24 04 1c 50 00 	movl   $0x501c,0x4(%esp)
    2e5f:	00 
    2e60:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e67:	e8 44 12 00 00       	call   40b0 <printf>
    exit(0);
    2e6c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e73:	e8 ea 10 00 00       	call   3f62 <exit>
  if(chdir("dots") != 0){
    printf(1, "chdir dots failed\n");
    exit(0);
  }
  if(unlink(".") == 0){
    printf(1, "rm . worked!\n");
    2e78:	c7 44 24 04 0e 50 00 	movl   $0x500e,0x4(%esp)
    2e7f:	00 
    2e80:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e87:	e8 24 12 00 00       	call   40b0 <printf>
    exit(0);
    2e8c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e93:	e8 ca 10 00 00       	call   3f62 <exit>
  if(mkdir("dots") != 0){
    printf(1, "mkdir dots failed\n");
    exit(0);
  }
  if(chdir("dots") != 0){
    printf(1, "chdir dots failed\n");
    2e98:	c7 44 24 04 fb 4f 00 	movl   $0x4ffb,0x4(%esp)
    2e9f:	00 
    2ea0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ea7:	e8 04 12 00 00       	call   40b0 <printf>
    exit(0);
    2eac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2eb3:	e8 aa 10 00 00       	call   3f62 <exit>
    2eb8:	90                   	nop
    2eb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002ec0 <dirfile>:
  printf(1, "rmdot ok\n");
}

void
dirfile(void)
{
    2ec0:	55                   	push   %ebp
    2ec1:	89 e5                	mov    %esp,%ebp
    2ec3:	53                   	push   %ebx
    2ec4:	83 ec 14             	sub    $0x14,%esp
  int fd;

  printf(1, "dir vs file\n");
    2ec7:	c7 44 24 04 88 50 00 	movl   $0x5088,0x4(%esp)
    2ece:	00 
    2ecf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ed6:	e8 d5 11 00 00       	call   40b0 <printf>

  fd = open("dirfile", O_CREATE);
    2edb:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2ee2:	00 
    2ee3:	c7 04 24 95 50 00 00 	movl   $0x5095,(%esp)
    2eea:	e8 b3 10 00 00       	call   3fa2 <open>
  if(fd < 0){
    2eef:	85 c0                	test   %eax,%eax
    2ef1:	0f 88 60 01 00 00    	js     3057 <dirfile+0x197>
    printf(1, "create dirfile failed\n");
    exit(0);
  }
  close(fd);
    2ef7:	89 04 24             	mov    %eax,(%esp)
    2efa:	e8 8b 10 00 00       	call   3f8a <close>
  if(chdir("dirfile") == 0){
    2eff:	c7 04 24 95 50 00 00 	movl   $0x5095,(%esp)
    2f06:	e8 c7 10 00 00       	call   3fd2 <chdir>
    2f0b:	85 c0                	test   %eax,%eax
    2f0d:	0f 84 24 01 00 00    	je     3037 <dirfile+0x177>
    printf(1, "chdir dirfile succeeded!\n");
    exit(0);
  }
  fd = open("dirfile/xx", 0);
    2f13:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2f1a:	00 
    2f1b:	c7 04 24 ce 50 00 00 	movl   $0x50ce,(%esp)
    2f22:	e8 7b 10 00 00       	call   3fa2 <open>
  if(fd >= 0){
    2f27:	85 c0                	test   %eax,%eax
    2f29:	0f 89 e8 00 00 00    	jns    3017 <dirfile+0x157>
    printf(1, "create dirfile/xx succeeded!\n");
    exit(0);
  }
  fd = open("dirfile/xx", O_CREATE);
    2f2f:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2f36:	00 
    2f37:	c7 04 24 ce 50 00 00 	movl   $0x50ce,(%esp)
    2f3e:	e8 5f 10 00 00       	call   3fa2 <open>
  if(fd >= 0){
    2f43:	85 c0                	test   %eax,%eax
    2f45:	0f 89 cc 00 00 00    	jns    3017 <dirfile+0x157>
    printf(1, "create dirfile/xx succeeded!\n");
    exit(0);
  }
  if(mkdir("dirfile/xx") == 0){
    2f4b:	c7 04 24 ce 50 00 00 	movl   $0x50ce,(%esp)
    2f52:	e8 73 10 00 00       	call   3fca <mkdir>
    2f57:	85 c0                	test   %eax,%eax
    2f59:	0f 84 b8 01 00 00    	je     3117 <dirfile+0x257>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile/xx") == 0){
    2f5f:	c7 04 24 ce 50 00 00 	movl   $0x50ce,(%esp)
    2f66:	e8 47 10 00 00       	call   3fb2 <unlink>
    2f6b:	85 c0                	test   %eax,%eax
    2f6d:	0f 84 84 01 00 00    	je     30f7 <dirfile+0x237>
    printf(1, "unlink dirfile/xx succeeded!\n");
    exit(0);
  }
  if(link("README", "dirfile/xx") == 0){
    2f73:	c7 44 24 04 ce 50 00 	movl   $0x50ce,0x4(%esp)
    2f7a:	00 
    2f7b:	c7 04 24 32 51 00 00 	movl   $0x5132,(%esp)
    2f82:	e8 3b 10 00 00       	call   3fc2 <link>
    2f87:	85 c0                	test   %eax,%eax
    2f89:	0f 84 48 01 00 00    	je     30d7 <dirfile+0x217>
    printf(1, "link to dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile") != 0){
    2f8f:	c7 04 24 95 50 00 00 	movl   $0x5095,(%esp)
    2f96:	e8 17 10 00 00       	call   3fb2 <unlink>
    2f9b:	85 c0                	test   %eax,%eax
    2f9d:	0f 85 14 01 00 00    	jne    30b7 <dirfile+0x1f7>
    printf(1, "unlink dirfile failed!\n");
    exit(0);
  }

  fd = open(".", O_RDWR);
    2fa3:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    2faa:	00 
    2fab:	c7 04 24 8e 4c 00 00 	movl   $0x4c8e,(%esp)
    2fb2:	e8 eb 0f 00 00       	call   3fa2 <open>
  if(fd >= 0){
    2fb7:	85 c0                	test   %eax,%eax
    2fb9:	0f 89 d8 00 00 00    	jns    3097 <dirfile+0x1d7>
    printf(1, "open . for writing succeeded!\n");
    exit(0);
  }
  fd = open(".", 0);
    2fbf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2fc6:	00 
    2fc7:	c7 04 24 8e 4c 00 00 	movl   $0x4c8e,(%esp)
    2fce:	e8 cf 0f 00 00       	call   3fa2 <open>
  if(write(fd, "x", 1) > 0){
    2fd3:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    2fda:	00 
    2fdb:	c7 44 24 04 71 4d 00 	movl   $0x4d71,0x4(%esp)
    2fe2:	00 
    2fe3:	89 04 24             	mov    %eax,(%esp)
  fd = open(".", O_RDWR);
  if(fd >= 0){
    printf(1, "open . for writing succeeded!\n");
    exit(0);
  }
  fd = open(".", 0);
    2fe6:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2fe8:	e8 95 0f 00 00       	call   3f82 <write>
    2fed:	85 c0                	test   %eax,%eax
    2fef:	0f 8f 82 00 00 00    	jg     3077 <dirfile+0x1b7>
    printf(1, "write . succeeded!\n");
    exit(0);
  }
  close(fd);
    2ff5:	89 1c 24             	mov    %ebx,(%esp)
    2ff8:	e8 8d 0f 00 00       	call   3f8a <close>

  printf(1, "dir vs file OK\n");
    2ffd:	c7 44 24 04 65 51 00 	movl   $0x5165,0x4(%esp)
    3004:	00 
    3005:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    300c:	e8 9f 10 00 00       	call   40b0 <printf>
}
    3011:	83 c4 14             	add    $0x14,%esp
    3014:	5b                   	pop    %ebx
    3015:	5d                   	pop    %ebp
    3016:	c3                   	ret    
    printf(1, "chdir dirfile succeeded!\n");
    exit(0);
  }
  fd = open("dirfile/xx", 0);
  if(fd >= 0){
    printf(1, "create dirfile/xx succeeded!\n");
    3017:	c7 44 24 04 d9 50 00 	movl   $0x50d9,0x4(%esp)
    301e:	00 
    301f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3026:	e8 85 10 00 00       	call   40b0 <printf>
    exit(0);
    302b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3032:	e8 2b 0f 00 00       	call   3f62 <exit>
    printf(1, "create dirfile failed\n");
    exit(0);
  }
  close(fd);
  if(chdir("dirfile") == 0){
    printf(1, "chdir dirfile succeeded!\n");
    3037:	c7 44 24 04 b4 50 00 	movl   $0x50b4,0x4(%esp)
    303e:	00 
    303f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3046:	e8 65 10 00 00       	call   40b0 <printf>
    exit(0);
    304b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3052:	e8 0b 0f 00 00       	call   3f62 <exit>

  printf(1, "dir vs file\n");

  fd = open("dirfile", O_CREATE);
  if(fd < 0){
    printf(1, "create dirfile failed\n");
    3057:	c7 44 24 04 9d 50 00 	movl   $0x509d,0x4(%esp)
    305e:	00 
    305f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3066:	e8 45 10 00 00       	call   40b0 <printf>
    exit(0);
    306b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3072:	e8 eb 0e 00 00       	call   3f62 <exit>
    printf(1, "open . for writing succeeded!\n");
    exit(0);
  }
  fd = open(".", 0);
  if(write(fd, "x", 1) > 0){
    printf(1, "write . succeeded!\n");
    3077:	c7 44 24 04 51 51 00 	movl   $0x5151,0x4(%esp)
    307e:	00 
    307f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3086:	e8 25 10 00 00       	call   40b0 <printf>
    exit(0);
    308b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3092:	e8 cb 0e 00 00       	call   3f62 <exit>
    exit(0);
  }

  fd = open(".", O_RDWR);
  if(fd >= 0){
    printf(1, "open . for writing succeeded!\n");
    3097:	c7 44 24 04 48 59 00 	movl   $0x5948,0x4(%esp)
    309e:	00 
    309f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30a6:	e8 05 10 00 00       	call   40b0 <printf>
    exit(0);
    30ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30b2:	e8 ab 0e 00 00       	call   3f62 <exit>
  if(link("README", "dirfile/xx") == 0){
    printf(1, "link to dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile") != 0){
    printf(1, "unlink dirfile failed!\n");
    30b7:	c7 44 24 04 39 51 00 	movl   $0x5139,0x4(%esp)
    30be:	00 
    30bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30c6:	e8 e5 0f 00 00       	call   40b0 <printf>
    exit(0);
    30cb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30d2:	e8 8b 0e 00 00       	call   3f62 <exit>
  if(unlink("dirfile/xx") == 0){
    printf(1, "unlink dirfile/xx succeeded!\n");
    exit(0);
  }
  if(link("README", "dirfile/xx") == 0){
    printf(1, "link to dirfile/xx succeeded!\n");
    30d7:	c7 44 24 04 28 59 00 	movl   $0x5928,0x4(%esp)
    30de:	00 
    30df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30e6:	e8 c5 0f 00 00       	call   40b0 <printf>
    exit(0);
    30eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30f2:	e8 6b 0e 00 00       	call   3f62 <exit>
  if(mkdir("dirfile/xx") == 0){
    printf(1, "mkdir dirfile/xx succeeded!\n");
    exit(0);
  }
  if(unlink("dirfile/xx") == 0){
    printf(1, "unlink dirfile/xx succeeded!\n");
    30f7:	c7 44 24 04 14 51 00 	movl   $0x5114,0x4(%esp)
    30fe:	00 
    30ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3106:	e8 a5 0f 00 00       	call   40b0 <printf>
    exit(0);
    310b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3112:	e8 4b 0e 00 00       	call   3f62 <exit>
  if(fd >= 0){
    printf(1, "create dirfile/xx succeeded!\n");
    exit(0);
  }
  if(mkdir("dirfile/xx") == 0){
    printf(1, "mkdir dirfile/xx succeeded!\n");
    3117:	c7 44 24 04 f7 50 00 	movl   $0x50f7,0x4(%esp)
    311e:	00 
    311f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3126:	e8 85 0f 00 00       	call   40b0 <printf>
    exit(0);
    312b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3132:	e8 2b 0e 00 00       	call   3f62 <exit>
    3137:	89 f6                	mov    %esi,%esi
    3139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003140 <iref>:
}

// test that iput() is called at the end of _namei()
void
iref(void)
{
    3140:	55                   	push   %ebp
    3141:	89 e5                	mov    %esp,%ebp
    3143:	53                   	push   %ebx
  int i, fd;

  printf(1, "empty file name\n");
    3144:	bb 33 00 00 00       	mov    $0x33,%ebx
}

// test that iput() is called at the end of _namei()
void
iref(void)
{
    3149:	83 ec 14             	sub    $0x14,%esp
  int i, fd;

  printf(1, "empty file name\n");
    314c:	c7 44 24 04 75 51 00 	movl   $0x5175,0x4(%esp)
    3153:	00 
    3154:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    315b:	e8 50 0f 00 00       	call   40b0 <printf>

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    if(mkdir("irefd") != 0){
    3160:	c7 04 24 86 51 00 00 	movl   $0x5186,(%esp)
    3167:	e8 5e 0e 00 00       	call   3fca <mkdir>
    316c:	85 c0                	test   %eax,%eax
    316e:	0f 85 af 00 00 00    	jne    3223 <iref+0xe3>
      printf(1, "mkdir irefd failed\n");
      exit(0);
    }
    if(chdir("irefd") != 0){
    3174:	c7 04 24 86 51 00 00 	movl   $0x5186,(%esp)
    317b:	e8 52 0e 00 00       	call   3fd2 <chdir>
    3180:	85 c0                	test   %eax,%eax
    3182:	0f 85 bb 00 00 00    	jne    3243 <iref+0x103>
      printf(1, "chdir irefd failed\n");
      exit(0);
    }

    mkdir("");
    3188:	c7 04 24 3b 48 00 00 	movl   $0x483b,(%esp)
    318f:	e8 36 0e 00 00       	call   3fca <mkdir>
    link("README", "");
    3194:	c7 44 24 04 3b 48 00 	movl   $0x483b,0x4(%esp)
    319b:	00 
    319c:	c7 04 24 32 51 00 00 	movl   $0x5132,(%esp)
    31a3:	e8 1a 0e 00 00       	call   3fc2 <link>
    fd = open("", O_CREATE);
    31a8:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    31af:	00 
    31b0:	c7 04 24 3b 48 00 00 	movl   $0x483b,(%esp)
    31b7:	e8 e6 0d 00 00       	call   3fa2 <open>
    if(fd >= 0)
    31bc:	85 c0                	test   %eax,%eax
    31be:	78 08                	js     31c8 <iref+0x88>
      close(fd);
    31c0:	89 04 24             	mov    %eax,(%esp)
    31c3:	e8 c2 0d 00 00       	call   3f8a <close>
    fd = open("xx", O_CREATE);
    31c8:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    31cf:	00 
    31d0:	c7 04 24 70 4d 00 00 	movl   $0x4d70,(%esp)
    31d7:	e8 c6 0d 00 00       	call   3fa2 <open>
    if(fd >= 0)
    31dc:	85 c0                	test   %eax,%eax
    31de:	78 08                	js     31e8 <iref+0xa8>
      close(fd);
    31e0:	89 04 24             	mov    %eax,(%esp)
    31e3:	e8 a2 0d 00 00       	call   3f8a <close>
    unlink("xx");
    31e8:	c7 04 24 70 4d 00 00 	movl   $0x4d70,(%esp)
    31ef:	e8 be 0d 00 00       	call   3fb2 <unlink>
  int i, fd;

  printf(1, "empty file name\n");

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    31f4:	83 eb 01             	sub    $0x1,%ebx
    31f7:	0f 85 63 ff ff ff    	jne    3160 <iref+0x20>
    if(fd >= 0)
      close(fd);
    unlink("xx");
  }

  chdir("/");
    31fd:	c7 04 24 61 44 00 00 	movl   $0x4461,(%esp)
    3204:	e8 c9 0d 00 00       	call   3fd2 <chdir>
  printf(1, "empty file name OK\n");
    3209:	c7 44 24 04 b4 51 00 	movl   $0x51b4,0x4(%esp)
    3210:	00 
    3211:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3218:	e8 93 0e 00 00       	call   40b0 <printf>
}
    321d:	83 c4 14             	add    $0x14,%esp
    3220:	5b                   	pop    %ebx
    3221:	5d                   	pop    %ebp
    3222:	c3                   	ret    
  printf(1, "empty file name\n");

  // the 50 is NINODE
  for(i = 0; i < 50 + 1; i++){
    if(mkdir("irefd") != 0){
      printf(1, "mkdir irefd failed\n");
    3223:	c7 44 24 04 8c 51 00 	movl   $0x518c,0x4(%esp)
    322a:	00 
    322b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3232:	e8 79 0e 00 00       	call   40b0 <printf>
      exit(0);
    3237:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    323e:	e8 1f 0d 00 00       	call   3f62 <exit>
    }
    if(chdir("irefd") != 0){
      printf(1, "chdir irefd failed\n");
    3243:	c7 44 24 04 a0 51 00 	movl   $0x51a0,0x4(%esp)
    324a:	00 
    324b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3252:	e8 59 0e 00 00       	call   40b0 <printf>
      exit(0);
    3257:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    325e:	e8 ff 0c 00 00       	call   3f62 <exit>
    3263:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3269:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003270 <forktest>:
// test that fork fails gracefully
// the forktest binary also does this, but it runs out of proc entries first.
// inside the bigger usertests binary, we run out of memory first.
void
forktest(void)
{
    3270:	55                   	push   %ebp
    3271:	89 e5                	mov    %esp,%ebp
    3273:	56                   	push   %esi
    3274:	53                   	push   %ebx
  int n, pid;
  int child_status;

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    3275:	31 db                	xor    %ebx,%ebx
// test that fork fails gracefully
// the forktest binary also does this, but it runs out of proc entries first.
// inside the bigger usertests binary, we run out of memory first.
void
forktest(void)
{
    3277:	83 ec 20             	sub    $0x20,%esp
  int n, pid;
  int child_status;

  printf(1, "fork test\n");
    327a:	c7 44 24 04 c8 51 00 	movl   $0x51c8,0x4(%esp)
    3281:	00 
    3282:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3289:	e8 22 0e 00 00       	call   40b0 <printf>
    328e:	eb 12                	jmp    32a2 <forktest+0x32>

  for(n=0; n<1000; n++){
    pid = fork();
    if(pid < 0)
      break;
    if(pid == 0)
    3290:	0f 84 96 00 00 00    	je     332c <forktest+0xbc>
  int n, pid;
  int child_status;

  printf(1, "fork test\n");

  for(n=0; n<1000; n++){
    3296:	83 c3 01             	add    $0x1,%ebx
    3299:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    329f:	90                   	nop
    32a0:	74 56                	je     32f8 <forktest+0x88>
    pid = fork();
    32a2:	e8 b3 0c 00 00       	call   3f5a <fork>
    if(pid < 0)
    32a7:	85 c0                	test   %eax,%eax
    32a9:	79 e5                	jns    3290 <forktest+0x20>
  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    exit(0);
  }

  for(; n > 0; n--){
    32ab:	85 db                	test   %ebx,%ebx
    32ad:	8d 75 f4             	lea    -0xc(%ebp),%esi
    32b0:	74 17                	je     32c9 <forktest+0x59>
    32b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait(&child_status) < 0){
    32b8:	89 34 24             	mov    %esi,(%esp)
    32bb:	e8 aa 0c 00 00       	call   3f6a <wait>
    32c0:	85 c0                	test   %eax,%eax
    32c2:	78 54                	js     3318 <forktest+0xa8>
  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    exit(0);
  }

  for(; n > 0; n--){
    32c4:	83 eb 01             	sub    $0x1,%ebx
    32c7:	75 ef                	jne    32b8 <forktest+0x48>
      printf(1, "wait stopped early\n");
      exit(0);
    }
  }

  if(wait(&child_status) != -1){
    32c9:	89 34 24             	mov    %esi,(%esp)
    32cc:	e8 99 0c 00 00       	call   3f6a <wait>
    32d1:	83 f8 ff             	cmp    $0xffffffff,%eax
    32d4:	75 62                	jne    3338 <forktest+0xc8>
    printf(1, "wait got too many\n");
    exit(0);
  }

  printf(1, "fork test OK\n");
    32d6:	c7 44 24 04 fa 51 00 	movl   $0x51fa,0x4(%esp)
    32dd:	00 
    32de:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32e5:	e8 c6 0d 00 00       	call   40b0 <printf>
}
    32ea:	83 c4 20             	add    $0x20,%esp
    32ed:	5b                   	pop    %ebx
    32ee:	5e                   	pop    %esi
    32ef:	5d                   	pop    %ebp
    32f0:	c3                   	ret    
    32f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0)
      exit(0);
  }

  if(n == 1000){
    printf(1, "fork claimed to work 1000 times!\n");
    32f8:	c7 44 24 04 68 59 00 	movl   $0x5968,0x4(%esp)
    32ff:	00 
    3300:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3307:	e8 a4 0d 00 00       	call   40b0 <printf>
    exit(0);
    330c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3313:	e8 4a 0c 00 00       	call   3f62 <exit>
  }

  for(; n > 0; n--){
    if(wait(&child_status) < 0){
      printf(1, "wait stopped early\n");
    3318:	c7 44 24 04 d3 51 00 	movl   $0x51d3,0x4(%esp)
    331f:	00 
    3320:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3327:	e8 84 0d 00 00       	call   40b0 <printf>
      exit(0);
    332c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3333:	e8 2a 0c 00 00       	call   3f62 <exit>
    }
  }

  if(wait(&child_status) != -1){
    printf(1, "wait got too many\n");
    3338:	c7 44 24 04 e7 51 00 	movl   $0x51e7,0x4(%esp)
    333f:	00 
    3340:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3347:	e8 64 0d 00 00       	call   40b0 <printf>
    exit(0);
    334c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3353:	e8 0a 0c 00 00       	call   3f62 <exit>
    3358:	90                   	nop
    3359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003360 <sbrktest>:
  printf(1, "fork test OK\n");
}

void
sbrktest(void)
{
    3360:	55                   	push   %ebp
    3361:	89 e5                	mov    %esp,%ebp
    3363:	57                   	push   %edi
    3364:	56                   	push   %esi
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    3365:	31 f6                	xor    %esi,%esi
  printf(1, "fork test OK\n");
}

void
sbrktest(void)
{
    3367:	53                   	push   %ebx
    3368:	83 ec 6c             	sub    $0x6c,%esp
  int fds[2], pid, pids[10], ppid; int child_status;
  char *a, *b, *c, *lastaddr, *oldbrk, *p, scratch;
  uint amt;

  printf(stdout, "sbrk test\n");
    336b:	a1 a0 64 00 00       	mov    0x64a0,%eax
    3370:	c7 44 24 04 08 52 00 	movl   $0x5208,0x4(%esp)
    3377:	00 
    3378:	89 04 24             	mov    %eax,(%esp)
    337b:	e8 30 0d 00 00       	call   40b0 <printf>
  oldbrk = sbrk(0);
    3380:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3387:	e8 5e 0c 00 00       	call   3fea <sbrk>

  // can one sbrk() less than a page?
  a = sbrk(0);
    338c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  int fds[2], pid, pids[10], ppid; int child_status;
  char *a, *b, *c, *lastaddr, *oldbrk, *p, scratch;
  uint amt;

  printf(stdout, "sbrk test\n");
  oldbrk = sbrk(0);
    3393:	89 45 a4             	mov    %eax,-0x5c(%ebp)

  // can one sbrk() less than a page?
  a = sbrk(0);
    3396:	e8 4f 0c 00 00       	call   3fea <sbrk>
    339b:	89 c3                	mov    %eax,%ebx
    339d:	8d 76 00             	lea    0x0(%esi),%esi
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    33a0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33a7:	e8 3e 0c 00 00       	call   3fea <sbrk>
    if(b != a){
    33ac:	39 d8                	cmp    %ebx,%eax

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    33ae:	89 c7                	mov    %eax,%edi
    if(b != a){
    33b0:	0f 85 90 02 00 00    	jne    3646 <sbrktest+0x2e6>
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    33b6:	83 c6 01             	add    $0x1,%esi
    if(b != a){
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
      exit(0);
    }
    *b = 1;
    a = b + 1;
    33b9:	83 c3 01             	add    $0x1,%ebx
    b = sbrk(1);
    if(b != a){
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
      exit(0);
    }
    *b = 1;
    33bc:	c6 43 ff 01          	movb   $0x1,-0x1(%ebx)
  oldbrk = sbrk(0);

  // can one sbrk() less than a page?
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    33c0:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    33c6:	75 d8                	jne    33a0 <sbrktest+0x40>
      exit(0);
    }
    *b = 1;
    a = b + 1;
  }
  pid = fork();
    33c8:	e8 8d 0b 00 00       	call   3f5a <fork>
  if(pid < 0){
    33cd:	85 c0                	test   %eax,%eax
      exit(0);
    }
    *b = 1;
    a = b + 1;
  }
  pid = fork();
    33cf:	89 c3                	mov    %eax,%ebx
  if(pid < 0){
    33d1:	0f 88 92 03 00 00    	js     3769 <sbrktest+0x409>
    printf(stdout, "sbrk test fork failed\n");
    exit(0);
  }
  c = sbrk(1);
    33d7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  c = sbrk(1);
  if(c != a + 1){
    33de:	83 c7 02             	add    $0x2,%edi
  pid = fork();
  if(pid < 0){
    printf(stdout, "sbrk test fork failed\n");
    exit(0);
  }
  c = sbrk(1);
    33e1:	e8 04 0c 00 00       	call   3fea <sbrk>
  c = sbrk(1);
    33e6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33ed:	e8 f8 0b 00 00       	call   3fea <sbrk>
  if(c != a + 1){
    33f2:	39 f8                	cmp    %edi,%eax
    33f4:	0f 85 62 03 00 00    	jne    375c <sbrktest+0x3fc>
    printf(stdout, "sbrk test failed post-fork\n");
    exit(0);
  }
  if(pid == 0)
    33fa:	85 db                	test   %ebx,%ebx
    33fc:	0f 84 a6 02 00 00    	je     36a8 <sbrktest+0x348>
    exit(0);
  wait(&child_status);
    3402:	8d 75 b4             	lea    -0x4c(%ebp),%esi
    3405:	89 34 24             	mov    %esi,(%esp)
    3408:	e8 5d 0b 00 00       	call   3f6a <wait>

  // can one grow address space to something big?
#define BIG (100*1024*1024)
  a = sbrk(0);
    340d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3414:	e8 d1 0b 00 00       	call   3fea <sbrk>
  amt = (BIG) - (uint)a;
    3419:	ba 00 00 40 06       	mov    $0x6400000,%edx
    341e:	29 c2                	sub    %eax,%edx
    exit(0);
  wait(&child_status);

  // can one grow address space to something big?
#define BIG (100*1024*1024)
  a = sbrk(0);
    3420:	89 c3                	mov    %eax,%ebx
  amt = (BIG) - (uint)a;
  p = sbrk(amt);
    3422:	89 14 24             	mov    %edx,(%esp)
    3425:	e8 c0 0b 00 00       	call   3fea <sbrk>
  if (p != a) {
    342a:	39 d8                	cmp    %ebx,%eax
    342c:	0f 85 fe 02 00 00    	jne    3730 <sbrktest+0x3d0>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    exit(0);
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;
    3432:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff

  // can one de-allocate?
  a = sbrk(0);
    3439:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3440:	e8 a5 0b 00 00       	call   3fea <sbrk>
  c = sbrk(-4096);
    3445:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  }
  lastaddr = (char*) (BIG-1);
  *lastaddr = 99;

  // can one de-allocate?
  a = sbrk(0);
    344c:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    344e:	e8 97 0b 00 00       	call   3fea <sbrk>
  if(c == (char*)0xffffffff){
    3453:	83 f8 ff             	cmp    $0xffffffff,%eax
    3456:	0f 84 f3 02 00 00    	je     374f <sbrktest+0x3ef>
    printf(stdout, "sbrk could not deallocate\n");
    exit(0);
  }
  c = sbrk(0);
    345c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3463:	e8 82 0b 00 00       	call   3fea <sbrk>
  if(c != a - 4096){
    3468:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    346e:	39 d0                	cmp    %edx,%eax
    3470:	0f 85 c7 02 00 00    	jne    373d <sbrktest+0x3dd>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    exit(0);
  }

  // can one re-allocate that page?
  a = sbrk(0);
    3476:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    347d:	e8 68 0b 00 00       	call   3fea <sbrk>
  c = sbrk(4096);
    3482:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    exit(0);
  }

  // can one re-allocate that page?
  a = sbrk(0);
    3489:	89 c3                	mov    %eax,%ebx
  c = sbrk(4096);
    348b:	e8 5a 0b 00 00       	call   3fea <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3490:	39 d8                	cmp    %ebx,%eax
    exit(0);
  }

  // can one re-allocate that page?
  a = sbrk(0);
  c = sbrk(4096);
    3492:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    3494:	0f 85 84 02 00 00    	jne    371e <sbrktest+0x3be>
    349a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34a1:	e8 44 0b 00 00       	call   3fea <sbrk>
    34a6:	8d 97 00 10 00 00    	lea    0x1000(%edi),%edx
    34ac:	39 d0                	cmp    %edx,%eax
    34ae:	0f 85 6a 02 00 00    	jne    371e <sbrktest+0x3be>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    exit(0);
  }
  if(*lastaddr == 99){
    34b4:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    34bb:	0f 84 50 02 00 00    	je     3711 <sbrktest+0x3b1>
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    exit(0);
  }

  a = sbrk(0);
    34c1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34c8:	e8 1d 0b 00 00       	call   3fea <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    34cd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    exit(0);
  }

  a = sbrk(0);
    34d4:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    34d6:	e8 0f 0b 00 00       	call   3fea <sbrk>
    34db:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    34de:	29 c1                	sub    %eax,%ecx
    34e0:	89 0c 24             	mov    %ecx,(%esp)
    34e3:	e8 02 0b 00 00       	call   3fea <sbrk>
  if(c != a){
    34e8:	39 d8                	cmp    %ebx,%eax
    34ea:	0f 85 02 02 00 00    	jne    36f2 <sbrktest+0x392>
    34f0:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    34f5:	8d 76 00             	lea    0x0(%esi),%esi
    exit(0);
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    ppid = getpid();
    34f8:	e8 e5 0a 00 00       	call   3fe2 <getpid>
    34fd:	89 c7                	mov    %eax,%edi
    pid = fork();
    34ff:	e8 56 0a 00 00       	call   3f5a <fork>
    if(pid < 0){
    3504:	85 c0                	test   %eax,%eax
    3506:	0f 88 dc 01 00 00    	js     36e8 <sbrktest+0x388>
    350c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "fork failed\n");
      exit(0);
    }
    if(pid == 0){
    3510:	0f 84 9e 01 00 00    	je     36b4 <sbrktest+0x354>
      printf(stdout, "oops could read %x = %x\n", a, *a);
      kill(ppid);
      exit(0);
    }
    wait(&child_status);
    3516:	89 34 24             	mov    %esi,(%esp)
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit(0);
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3519:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    if(pid == 0){
      printf(stdout, "oops could read %x = %x\n", a, *a);
      kill(ppid);
      exit(0);
    }
    wait(&child_status);
    351f:	e8 46 0a 00 00       	call   3f6a <wait>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit(0);
  }

  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3524:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    352a:	75 cc                	jne    34f8 <sbrktest+0x198>
    wait(&child_status);
  }

  // if we run the system out of memory, does it clean up the last
  // failed allocation?
  if(pipe(fds) != 0){
    352c:	8d 45 b8             	lea    -0x48(%ebp),%eax
    352f:	89 04 24             	mov    %eax,(%esp)
    3532:	e8 3b 0a 00 00       	call   3f72 <pipe>
    3537:	85 c0                	test   %eax,%eax
    3539:	0f 85 55 01 00 00    	jne    3694 <sbrktest+0x334>
    353f:	8d 5d e8             	lea    -0x18(%ebp),%ebx
    3542:	8d 7d c0             	lea    -0x40(%ebp),%edi
    printf(1, "pipe() failed\n");
    exit(0);
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if((pids[i] = fork()) == 0){
    3545:	e8 10 0a 00 00       	call   3f5a <fork>
    354a:	85 c0                	test   %eax,%eax
    354c:	89 07                	mov    %eax,(%edi)
    354e:	0f 84 a7 00 00 00    	je     35fb <sbrktest+0x29b>
      sbrk(BIG - (uint)sbrk(0));
      write(fds[1], "x", 1);
      // sit around until killed
      for(;;) sleep(1000);
    }
    if(pids[i] != -1)
    3554:	83 f8 ff             	cmp    $0xffffffff,%eax
    3557:	74 1a                	je     3573 <sbrktest+0x213>
      read(fds[0], &scratch, 1);
    3559:	8d 45 b3             	lea    -0x4d(%ebp),%eax
    355c:	89 44 24 04          	mov    %eax,0x4(%esp)
    3560:	8b 45 b8             	mov    -0x48(%ebp),%eax
    3563:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    356a:	00 
    356b:	89 04 24             	mov    %eax,(%esp)
    356e:	e8 07 0a 00 00       	call   3f7a <read>
    3573:	83 c7 04             	add    $0x4,%edi
  // failed allocation?
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    exit(0);
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3576:	39 df                	cmp    %ebx,%edi
    3578:	75 cb                	jne    3545 <sbrktest+0x1e5>
    if(pids[i] != -1)
      read(fds[0], &scratch, 1);
  }
  // if those failed allocations freed up the pages they did allocate,
  // we'll be able to allocate here
  c = sbrk(4096);
    357a:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    3581:	8d 7d c0             	lea    -0x40(%ebp),%edi
    3584:	e8 61 0a 00 00       	call   3fea <sbrk>
    3589:	89 45 a0             	mov    %eax,-0x60(%ebp)
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if(pids[i] == -1)
    358c:	8b 07                	mov    (%edi),%eax
    358e:	83 f8 ff             	cmp    $0xffffffff,%eax
    3591:	74 10                	je     35a3 <sbrktest+0x243>
      continue;
    kill(pids[i]);
    3593:	89 04 24             	mov    %eax,(%esp)
    3596:	e8 f7 09 00 00       	call   3f92 <kill>
    wait(&child_status);
    359b:	89 34 24             	mov    %esi,(%esp)
    359e:	e8 c7 09 00 00       	call   3f6a <wait>
    35a3:	83 c7 04             	add    $0x4,%edi
      read(fds[0], &scratch, 1);
  }
  // if those failed allocations freed up the pages they did allocate,
  // we'll be able to allocate here
  c = sbrk(4096);
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    35a6:	39 fb                	cmp    %edi,%ebx
    35a8:	75 e2                	jne    358c <sbrktest+0x22c>
    if(pids[i] == -1)
      continue;
    kill(pids[i]);
    wait(&child_status);
  }
  if(c == (char*)0xffffffff){
    35aa:	83 7d a0 ff          	cmpl   $0xffffffff,-0x60(%ebp)
    35ae:	0f 84 bf 00 00 00    	je     3673 <sbrktest+0x313>
    printf(stdout, "failed sbrk leaked memory\n");
    exit(0);
  }

  if(sbrk(0) > oldbrk)
    35b4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35bb:	e8 2a 0a 00 00       	call   3fea <sbrk>
    35c0:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    35c3:	73 19                	jae    35de <sbrktest+0x27e>
    sbrk(-(sbrk(0) - oldbrk));
    35c5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35cc:	e8 19 0a 00 00       	call   3fea <sbrk>
    35d1:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    35d4:	29 c1                	sub    %eax,%ecx
    35d6:	89 0c 24             	mov    %ecx,(%esp)
    35d9:	e8 0c 0a 00 00       	call   3fea <sbrk>

  printf(stdout, "sbrk test OK\n");
    35de:	a1 a0 64 00 00       	mov    0x64a0,%eax
    35e3:	c7 44 24 04 b0 52 00 	movl   $0x52b0,0x4(%esp)
    35ea:	00 
    35eb:	89 04 24             	mov    %eax,(%esp)
    35ee:	e8 bd 0a 00 00       	call   40b0 <printf>
}
    35f3:	83 c4 6c             	add    $0x6c,%esp
    35f6:	5b                   	pop    %ebx
    35f7:	5e                   	pop    %esi
    35f8:	5f                   	pop    %edi
    35f9:	5d                   	pop    %ebp
    35fa:	c3                   	ret    
    exit(0);
  }
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    if((pids[i] = fork()) == 0){
      // allocate a lot of memory
      sbrk(BIG - (uint)sbrk(0));
    35fb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3602:	e8 e3 09 00 00       	call   3fea <sbrk>
    3607:	ba 00 00 40 06       	mov    $0x6400000,%edx
    360c:	29 c2                	sub    %eax,%edx
    360e:	89 14 24             	mov    %edx,(%esp)
    3611:	e8 d4 09 00 00       	call   3fea <sbrk>
      write(fds[1], "x", 1);
    3616:	8b 45 bc             	mov    -0x44(%ebp),%eax
    3619:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3620:	00 
    3621:	c7 44 24 04 71 4d 00 	movl   $0x4d71,0x4(%esp)
    3628:	00 
    3629:	89 04 24             	mov    %eax,(%esp)
    362c:	e8 51 09 00 00       	call   3f82 <write>
    3631:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      // sit around until killed
      for(;;) sleep(1000);
    3638:	c7 04 24 e8 03 00 00 	movl   $0x3e8,(%esp)
    363f:	e8 ae 09 00 00       	call   3ff2 <sleep>
    3644:	eb f2                	jmp    3638 <sbrktest+0x2d8>
  a = sbrk(0);
  int i;
  for(i = 0; i < 5000; i++){
    b = sbrk(1);
    if(b != a){
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    3646:	89 44 24 10          	mov    %eax,0x10(%esp)
    364a:	a1 a0 64 00 00       	mov    0x64a0,%eax
    364f:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    3653:	89 74 24 08          	mov    %esi,0x8(%esp)
    3657:	c7 44 24 04 13 52 00 	movl   $0x5213,0x4(%esp)
    365e:	00 
    365f:	89 04 24             	mov    %eax,(%esp)
    3662:	e8 49 0a 00 00       	call   40b0 <printf>
      exit(0);
    3667:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    366e:	e8 ef 08 00 00       	call   3f62 <exit>
      continue;
    kill(pids[i]);
    wait(&child_status);
  }
  if(c == (char*)0xffffffff){
    printf(stdout, "failed sbrk leaked memory\n");
    3673:	c7 44 24 04 95 52 00 	movl   $0x5295,0x4(%esp)
    367a:	00 
    exit(0);
  }
  c = sbrk(1);
  c = sbrk(1);
  if(c != a + 1){
    printf(stdout, "sbrk test failed post-fork\n");
    367b:	a1 a0 64 00 00       	mov    0x64a0,%eax
    3680:	89 04 24             	mov    %eax,(%esp)
    3683:	e8 28 0a 00 00       	call   40b0 <printf>
    exit(0);
    3688:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    368f:	e8 ce 08 00 00       	call   3f62 <exit>
  }

  // if we run the system out of memory, does it clean up the last
  // failed allocation?
  if(pipe(fds) != 0){
    printf(1, "pipe() failed\n");
    3694:	c7 44 24 04 51 47 00 	movl   $0x4751,0x4(%esp)
    369b:	00 
    369c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    36a3:	e8 08 0a 00 00       	call   40b0 <printf>

  a = sbrk(0);
  c = sbrk(-(sbrk(0) - oldbrk));
  if(c != a){
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    exit(0);
    36a8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    36af:	e8 ae 08 00 00       	call   3f62 <exit>
    if(pid < 0){
      printf(stdout, "fork failed\n");
      exit(0);
    }
    if(pid == 0){
      printf(stdout, "oops could read %x = %x\n", a, *a);
    36b4:	0f be 03             	movsbl (%ebx),%eax
    36b7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    36bb:	c7 44 24 04 7c 52 00 	movl   $0x527c,0x4(%esp)
    36c2:	00 
    36c3:	89 44 24 0c          	mov    %eax,0xc(%esp)
    36c7:	a1 a0 64 00 00       	mov    0x64a0,%eax
    36cc:	89 04 24             	mov    %eax,(%esp)
    36cf:	e8 dc 09 00 00       	call   40b0 <printf>
      kill(ppid);
    36d4:	89 3c 24             	mov    %edi,(%esp)
    36d7:	e8 b6 08 00 00       	call   3f92 <kill>
      exit(0);
    36dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    36e3:	e8 7a 08 00 00       	call   3f62 <exit>
  // can we read the kernel's memory?
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    ppid = getpid();
    pid = fork();
    if(pid < 0){
      printf(stdout, "fork failed\n");
    36e8:	c7 44 24 04 59 53 00 	movl   $0x5359,0x4(%esp)
    36ef:	00 
    36f0:	eb 89                	jmp    367b <sbrktest+0x31b>
  }

  a = sbrk(0);
  c = sbrk(-(sbrk(0) - oldbrk));
  if(c != a){
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    36f2:	89 44 24 0c          	mov    %eax,0xc(%esp)
    36f6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    36fa:	c7 44 24 04 5c 5a 00 	movl   $0x5a5c,0x4(%esp)
    3701:	00 
    3702:	a1 a0 64 00 00       	mov    0x64a0,%eax
    3707:	89 04 24             	mov    %eax,(%esp)
    370a:	e8 a1 09 00 00       	call   40b0 <printf>
    370f:	eb 97                	jmp    36a8 <sbrktest+0x348>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    exit(0);
  }
  if(*lastaddr == 99){
    // should be zero
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    3711:	c7 44 24 04 2c 5a 00 	movl   $0x5a2c,0x4(%esp)
    3718:	00 
    3719:	e9 5d ff ff ff       	jmp    367b <sbrktest+0x31b>

  // can one re-allocate that page?
  a = sbrk(0);
  c = sbrk(4096);
  if(c != a || sbrk(0) != a + 4096){
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    371e:	89 7c 24 0c          	mov    %edi,0xc(%esp)
    3722:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    3726:	c7 44 24 04 04 5a 00 	movl   $0x5a04,0x4(%esp)
    372d:	00 
    372e:	eb d2                	jmp    3702 <sbrktest+0x3a2>
#define BIG (100*1024*1024)
  a = sbrk(0);
  amt = (BIG) - (uint)a;
  p = sbrk(amt);
  if (p != a) {
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    3730:	c7 44 24 04 8c 59 00 	movl   $0x598c,0x4(%esp)
    3737:	00 
    3738:	e9 3e ff ff ff       	jmp    367b <sbrktest+0x31b>
    printf(stdout, "sbrk could not deallocate\n");
    exit(0);
  }
  c = sbrk(0);
  if(c != a - 4096){
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    373d:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3741:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    3745:	c7 44 24 04 cc 59 00 	movl   $0x59cc,0x4(%esp)
    374c:	00 
    374d:	eb b3                	jmp    3702 <sbrktest+0x3a2>

  // can one de-allocate?
  a = sbrk(0);
  c = sbrk(-4096);
  if(c == (char*)0xffffffff){
    printf(stdout, "sbrk could not deallocate\n");
    374f:	c7 44 24 04 61 52 00 	movl   $0x5261,0x4(%esp)
    3756:	00 
    3757:	e9 1f ff ff ff       	jmp    367b <sbrktest+0x31b>
    exit(0);
  }
  c = sbrk(1);
  c = sbrk(1);
  if(c != a + 1){
    printf(stdout, "sbrk test failed post-fork\n");
    375c:	c7 44 24 04 45 52 00 	movl   $0x5245,0x4(%esp)
    3763:	00 
    3764:	e9 12 ff ff ff       	jmp    367b <sbrktest+0x31b>
    *b = 1;
    a = b + 1;
  }
  pid = fork();
  if(pid < 0){
    printf(stdout, "sbrk test fork failed\n");
    3769:	c7 44 24 04 2e 52 00 	movl   $0x522e,0x4(%esp)
    3770:	00 
    3771:	e9 05 ff ff ff       	jmp    367b <sbrktest+0x31b>
    3776:	8d 76 00             	lea    0x0(%esi),%esi
    3779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003780 <validateint>:
  printf(stdout, "sbrk test OK\n");
}

void
validateint(int *p)
{
    3780:	55                   	push   %ebp
    3781:	89 e5                	mov    %esp,%ebp
      "int %2\n\t"
      "mov %%ebx, %%esp" :
      "=a" (res) :
      "a" (SYS_sleep), "n" (T_SYSCALL), "c" (p) :
      "ebx");
}
    3783:	5d                   	pop    %ebp
    3784:	c3                   	ret    
    3785:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3789:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003790 <validatetest>:

void
validatetest(void)
{
    3790:	55                   	push   %ebp
    3791:	89 e5                	mov    %esp,%ebp
    3793:	57                   	push   %edi
    3794:	56                   	push   %esi
    3795:	53                   	push   %ebx
  uint p;

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    3796:	31 db                	xor    %ebx,%ebx
      "ebx");
}

void
validatetest(void)
{
    3798:	83 ec 2c             	sub    $0x2c,%esp
  int hi, pid; int child_status;
  uint p;

  printf(stdout, "validate test\n");
    379b:	a1 a0 64 00 00       	mov    0x64a0,%eax
    37a0:	c7 44 24 04 be 52 00 	movl   $0x52be,0x4(%esp)
    37a7:	00 
      exit(0);
    }
    sleep(0);
    sleep(0);
    kill(pid);
    wait(&child_status);
    37a8:	8d 7d e4             	lea    -0x1c(%ebp),%edi
validatetest(void)
{
  int hi, pid; int child_status;
  uint p;

  printf(stdout, "validate test\n");
    37ab:	89 04 24             	mov    %eax,(%esp)
    37ae:	e8 fd 08 00 00       	call   40b0 <printf>
    37b3:	90                   	nop
    37b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    if((pid = fork()) == 0){
    37b8:	e8 9d 07 00 00       	call   3f5a <fork>
      // try to crash the kernel by passing in a badly placed integer
      validateint((int*)p);
      exit(0);
    37bd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    if((pid = fork()) == 0){
    37c4:	85 c0                	test   %eax,%eax
    37c6:	89 c6                	mov    %eax,%esi
    37c8:	74 7d                	je     3847 <validatetest+0xb7>
      // try to crash the kernel by passing in a badly placed integer
      validateint((int*)p);
      exit(0);
    }
    sleep(0);
    37ca:	e8 23 08 00 00       	call   3ff2 <sleep>
    sleep(0);
    37cf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    37d6:	e8 17 08 00 00       	call   3ff2 <sleep>
    kill(pid);
    37db:	89 34 24             	mov    %esi,(%esp)
    37de:	e8 af 07 00 00       	call   3f92 <kill>
    wait(&child_status);
    37e3:	89 3c 24             	mov    %edi,(%esp)
    37e6:	e8 7f 07 00 00       	call   3f6a <wait>

    // try to crash the kernel by passing in a bad string pointer
    if(link("nosuchfile", (char*)p) != -1){
    37eb:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    37ef:	c7 04 24 cd 52 00 00 	movl   $0x52cd,(%esp)
    37f6:	e8 c7 07 00 00       	call   3fc2 <link>
    37fb:	83 f8 ff             	cmp    $0xffffffff,%eax
    37fe:	75 2b                	jne    382b <validatetest+0x9b>
  uint p;

  printf(stdout, "validate test\n");
  hi = 1100*1024;

  for(p = 0; p <= (uint)hi; p += 4096){
    3800:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3806:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    380c:	75 aa                	jne    37b8 <validatetest+0x28>
      printf(stdout, "link should not succeed\n");
      exit(0);
    }
  }

  printf(stdout, "validate ok\n");
    380e:	a1 a0 64 00 00       	mov    0x64a0,%eax
    3813:	c7 44 24 04 f1 52 00 	movl   $0x52f1,0x4(%esp)
    381a:	00 
    381b:	89 04 24             	mov    %eax,(%esp)
    381e:	e8 8d 08 00 00       	call   40b0 <printf>
}
    3823:	83 c4 2c             	add    $0x2c,%esp
    3826:	5b                   	pop    %ebx
    3827:	5e                   	pop    %esi
    3828:	5f                   	pop    %edi
    3829:	5d                   	pop    %ebp
    382a:	c3                   	ret    
    kill(pid);
    wait(&child_status);

    // try to crash the kernel by passing in a bad string pointer
    if(link("nosuchfile", (char*)p) != -1){
      printf(stdout, "link should not succeed\n");
    382b:	a1 a0 64 00 00       	mov    0x64a0,%eax
    3830:	c7 44 24 04 d8 52 00 	movl   $0x52d8,0x4(%esp)
    3837:	00 
    3838:	89 04 24             	mov    %eax,(%esp)
    383b:	e8 70 08 00 00       	call   40b0 <printf>
      exit(0);
    3840:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3847:	e8 16 07 00 00       	call   3f62 <exit>
    384c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003850 <bsstest>:

// does unintialized data start out zero?
char uninit[10000];
void
bsstest(void)
{
    3850:	55                   	push   %ebp
    3851:	89 e5                	mov    %esp,%ebp
    3853:	83 ec 18             	sub    $0x18,%esp
  int i;

  printf(stdout, "bss test\n");
    3856:	a1 a0 64 00 00       	mov    0x64a0,%eax
    385b:	c7 44 24 04 fe 52 00 	movl   $0x52fe,0x4(%esp)
    3862:	00 
    3863:	89 04 24             	mov    %eax,(%esp)
    3866:	e8 45 08 00 00       	call   40b0 <printf>
  for(i = 0; i < sizeof(uninit); i++){
    if(uninit[i] != '\0'){
    386b:	80 3d 60 65 00 00 00 	cmpb   $0x0,0x6560
    3872:	75 36                	jne    38aa <bsstest+0x5a>
bsstest(void)
{
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    3874:	b8 01 00 00 00       	mov    $0x1,%eax
    3879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(uninit[i] != '\0'){
    3880:	80 b8 60 65 00 00 00 	cmpb   $0x0,0x6560(%eax)
    3887:	75 21                	jne    38aa <bsstest+0x5a>
bsstest(void)
{
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    3889:	83 c0 01             	add    $0x1,%eax
    388c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3891:	75 ed                	jne    3880 <bsstest+0x30>
    if(uninit[i] != '\0'){
      printf(stdout, "bss test failed\n");
      exit(0);
    }
  }
  printf(stdout, "bss test ok\n");
    3893:	a1 a0 64 00 00       	mov    0x64a0,%eax
    3898:	c7 44 24 04 19 53 00 	movl   $0x5319,0x4(%esp)
    389f:	00 
    38a0:	89 04 24             	mov    %eax,(%esp)
    38a3:	e8 08 08 00 00       	call   40b0 <printf>
}
    38a8:	c9                   	leave  
    38a9:	c3                   	ret    
  int i;

  printf(stdout, "bss test\n");
  for(i = 0; i < sizeof(uninit); i++){
    if(uninit[i] != '\0'){
      printf(stdout, "bss test failed\n");
    38aa:	a1 a0 64 00 00       	mov    0x64a0,%eax
    38af:	c7 44 24 04 08 53 00 	movl   $0x5308,0x4(%esp)
    38b6:	00 
    38b7:	89 04 24             	mov    %eax,(%esp)
    38ba:	e8 f1 07 00 00       	call   40b0 <printf>
      exit(0);
    38bf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    38c6:	e8 97 06 00 00       	call   3f62 <exit>
    38cb:	90                   	nop
    38cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000038d0 <bigargtest>:
// does exec return an error if the arguments
// are larger than a page? or does it write
// below the stack and wreck the instructions/data?
void
bigargtest(void)
{
    38d0:	55                   	push   %ebp
    38d1:	89 e5                	mov    %esp,%ebp
    38d3:	83 ec 28             	sub    $0x28,%esp
  int pid, fd; int child_status;

  unlink("bigarg-ok");
    38d6:	c7 04 24 26 53 00 00 	movl   $0x5326,(%esp)
    38dd:	e8 d0 06 00 00       	call   3fb2 <unlink>
  pid = fork();
    38e2:	e8 73 06 00 00       	call   3f5a <fork>
  if(pid == 0){
    38e7:	85 c0                	test   %eax,%eax
    38e9:	74 4d                	je     3938 <bigargtest+0x68>
    38eb:	90                   	nop
    38ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exec("echo", args);
    printf(stdout, "bigarg test ok\n");
    fd = open("bigarg-ok", O_CREATE);
    close(fd);
    exit(0);
  } else if(pid < 0){
    38f0:	0f 88 e6 00 00 00    	js     39dc <bigargtest+0x10c>
    printf(stdout, "bigargtest: fork failed\n");
    exit(0);
  }
  wait(&child_status);
    38f6:	8d 45 f4             	lea    -0xc(%ebp),%eax
    38f9:	89 04 24             	mov    %eax,(%esp)
    38fc:	e8 69 06 00 00       	call   3f6a <wait>
  fd = open("bigarg-ok", 0);
    3901:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3908:	00 
    3909:	c7 04 24 26 53 00 00 	movl   $0x5326,(%esp)
    3910:	e8 8d 06 00 00       	call   3fa2 <open>
  if(fd < 0){
    3915:	85 c0                	test   %eax,%eax
    3917:	0f 88 9e 00 00 00    	js     39bb <bigargtest+0xeb>
    printf(stdout, "bigarg test failed!\n");
    exit(0);
  }
  close(fd);
    391d:	89 04 24             	mov    %eax,(%esp)
    3920:	e8 65 06 00 00       	call   3f8a <close>
  unlink("bigarg-ok");
    3925:	c7 04 24 26 53 00 00 	movl   $0x5326,(%esp)
    392c:	e8 81 06 00 00       	call   3fb2 <unlink>
}
    3931:	c9                   	leave  
    3932:	c3                   	ret    
    3933:	90                   	nop
    3934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  pid = fork();
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3938:	c7 04 85 c0 64 00 00 	movl   $0x5a80,0x64c0(,%eax,4)
    393f:	80 5a 00 00 
  unlink("bigarg-ok");
  pid = fork();
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
    3943:	83 c0 01             	add    $0x1,%eax
    3946:	83 f8 1f             	cmp    $0x1f,%eax
    3949:	75 ed                	jne    3938 <bigargtest+0x68>
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    args[MAXARG-1] = 0;
    printf(stdout, "bigarg test\n");
    394b:	a1 a0 64 00 00       	mov    0x64a0,%eax
    3950:	c7 44 24 04 30 53 00 	movl   $0x5330,0x4(%esp)
    3957:	00 
  if(pid == 0){
    static char *args[MAXARG];
    int i;
    for(i = 0; i < MAXARG-1; i++)
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    args[MAXARG-1] = 0;
    3958:	c7 05 3c 65 00 00 00 	movl   $0x0,0x653c
    395f:	00 00 00 
    printf(stdout, "bigarg test\n");
    3962:	89 04 24             	mov    %eax,(%esp)
    3965:	e8 46 07 00 00       	call   40b0 <printf>
    exec("echo", args);
    396a:	c7 44 24 04 c0 64 00 	movl   $0x64c0,0x4(%esp)
    3971:	00 
    3972:	c7 04 24 fd 44 00 00 	movl   $0x44fd,(%esp)
    3979:	e8 1c 06 00 00       	call   3f9a <exec>
    printf(stdout, "bigarg test ok\n");
    397e:	a1 a0 64 00 00       	mov    0x64a0,%eax
    3983:	c7 44 24 04 3d 53 00 	movl   $0x533d,0x4(%esp)
    398a:	00 
    398b:	89 04 24             	mov    %eax,(%esp)
    398e:	e8 1d 07 00 00       	call   40b0 <printf>
    fd = open("bigarg-ok", O_CREATE);
    3993:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    399a:	00 
    399b:	c7 04 24 26 53 00 00 	movl   $0x5326,(%esp)
    39a2:	e8 fb 05 00 00       	call   3fa2 <open>
    close(fd);
    39a7:	89 04 24             	mov    %eax,(%esp)
    39aa:	e8 db 05 00 00       	call   3f8a <close>
    exit(0);
    39af:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    39b6:	e8 a7 05 00 00       	call   3f62 <exit>
    exit(0);
  }
  wait(&child_status);
  fd = open("bigarg-ok", 0);
  if(fd < 0){
    printf(stdout, "bigarg test failed!\n");
    39bb:	c7 44 24 04 66 53 00 	movl   $0x5366,0x4(%esp)
    39c2:	00 
    39c3:	a1 a0 64 00 00       	mov    0x64a0,%eax
    39c8:	89 04 24             	mov    %eax,(%esp)
    39cb:	e8 e0 06 00 00       	call   40b0 <printf>
    exit(0);
    39d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    39d7:	e8 86 05 00 00       	call   3f62 <exit>
    printf(stdout, "bigarg test ok\n");
    fd = open("bigarg-ok", O_CREATE);
    close(fd);
    exit(0);
  } else if(pid < 0){
    printf(stdout, "bigargtest: fork failed\n");
    39dc:	c7 44 24 04 4d 53 00 	movl   $0x534d,0x4(%esp)
    39e3:	00 
    39e4:	eb dd                	jmp    39c3 <bigargtest+0xf3>
    39e6:	8d 76 00             	lea    0x0(%esi),%esi
    39e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000039f0 <fsfull>:

// what happens when the file system runs out of blocks?
// answer: balloc panics, so this test is not useful.
void
fsfull()
{
    39f0:	55                   	push   %ebp
    39f1:	89 e5                	mov    %esp,%ebp
    39f3:	57                   	push   %edi
    39f4:	56                   	push   %esi
    39f5:	53                   	push   %ebx
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    39f6:	31 db                	xor    %ebx,%ebx

// what happens when the file system runs out of blocks?
// answer: balloc panics, so this test is not useful.
void
fsfull()
{
    39f8:	83 ec 5c             	sub    $0x5c,%esp
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");
    39fb:	c7 44 24 04 7b 53 00 	movl   $0x537b,0x4(%esp)
    3a02:	00 
    3a03:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a0a:	e8 a1 06 00 00       	call   40b0 <printf>
    3a0f:	90                   	nop

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3a10:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3a15:	89 d9                	mov    %ebx,%ecx
    3a17:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3a19:	89 de                	mov    %ebx,%esi
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3a1b:	c1 f9 1f             	sar    $0x1f,%ecx
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    3a1e:	89 df                	mov    %ebx,%edi
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    3a20:	c7 44 24 04 88 53 00 	movl   $0x5388,0x4(%esp)
    3a27:	00 
    3a28:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3a2f:	c1 fa 06             	sar    $0x6,%edx
    3a32:	29 ca                	sub    %ecx,%edx
    3a34:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3a37:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3a3d:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3a40:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    3a45:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    3a49:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    3a4d:	29 d6                	sub    %edx,%esi
    3a4f:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3a51:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    3a56:	c1 fe 1f             	sar    $0x1f,%esi
    3a59:	c1 fa 05             	sar    $0x5,%edx
    3a5c:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3a5e:	be 67 66 66 66       	mov    $0x66666667,%esi

  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    3a63:	83 c2 30             	add    $0x30,%edx
    3a66:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3a69:	f7 eb                	imul   %ebx
    3a6b:	c1 fa 05             	sar    $0x5,%edx
    3a6e:	29 ca                	sub    %ecx,%edx
    3a70:	6b d2 64             	imul   $0x64,%edx,%edx
    3a73:	29 d7                	sub    %edx,%edi
    3a75:	89 f8                	mov    %edi,%eax
    3a77:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3a79:	89 d8                	mov    %ebx,%eax
  for(nfiles = 0; ; nfiles++){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    3a7b:	c1 ff 1f             	sar    $0x1f,%edi
    3a7e:	c1 fa 02             	sar    $0x2,%edx
    3a81:	29 fa                	sub    %edi,%edx
    3a83:	83 c2 30             	add    $0x30,%edx
    3a86:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3a89:	f7 ee                	imul   %esi
    3a8b:	c1 fa 02             	sar    $0x2,%edx
    3a8e:	29 ca                	sub    %ecx,%edx
    3a90:	89 d9                	mov    %ebx,%ecx
    3a92:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3a95:	01 c0                	add    %eax,%eax
    3a97:	29 c1                	sub    %eax,%ecx
    3a99:	89 c8                	mov    %ecx,%eax
    3a9b:	83 c0 30             	add    $0x30,%eax
    3a9e:	88 45 ac             	mov    %al,-0x54(%ebp)
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    3aa1:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3aa4:	89 44 24 08          	mov    %eax,0x8(%esp)
    3aa8:	e8 03 06 00 00       	call   40b0 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3aad:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3ab0:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    3ab7:	00 
    3ab8:	89 04 24             	mov    %eax,(%esp)
    3abb:	e8 e2 04 00 00       	call   3fa2 <open>
    if(fd < 0){
    3ac0:	85 c0                	test   %eax,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    int fd = open(name, O_CREATE|O_RDWR);
    3ac2:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    3ac4:	78 57                	js     3b1d <fsfull+0x12d>
    3ac6:	31 f6                	xor    %esi,%esi
    3ac8:	eb 08                	jmp    3ad2 <fsfull+0xe2>
    3aca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    int total = 0;
    while(1){
      int cc = write(fd, buf, 512);
      if(cc < 512)
        break;
      total += cc;
    3ad0:	01 c6                	add    %eax,%esi
      printf(1, "open %s failed\n", name);
      break;
    }
    int total = 0;
    while(1){
      int cc = write(fd, buf, 512);
    3ad2:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    3ad9:	00 
    3ada:	c7 44 24 04 80 8c 00 	movl   $0x8c80,0x4(%esp)
    3ae1:	00 
    3ae2:	89 3c 24             	mov    %edi,(%esp)
    3ae5:	e8 98 04 00 00       	call   3f82 <write>
      if(cc < 512)
    3aea:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3aef:	7f df                	jg     3ad0 <fsfull+0xe0>
        break;
      total += cc;
      fsblocks++;
    }
    printf(1, "wrote %d bytes\n", total);
    3af1:	89 74 24 08          	mov    %esi,0x8(%esp)
    3af5:	c7 44 24 04 a4 53 00 	movl   $0x53a4,0x4(%esp)
    3afc:	00 
    3afd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3b04:	e8 a7 05 00 00       	call   40b0 <printf>
    close(fd);
    3b09:	89 3c 24             	mov    %edi,(%esp)
    3b0c:	e8 79 04 00 00       	call   3f8a <close>
    if(total == 0)
    3b11:	85 f6                	test   %esi,%esi
    3b13:	74 23                	je     3b38 <fsfull+0x148>
  int nfiles;
  int fsblocks = 0;

  printf(1, "fsfull test\n");

  for(nfiles = 0; ; nfiles++){
    3b15:	83 c3 01             	add    $0x1,%ebx
    }
    printf(1, "wrote %d bytes\n", total);
    close(fd);
    if(total == 0)
      break;
  }
    3b18:	e9 f3 fe ff ff       	jmp    3a10 <fsfull+0x20>
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    printf(1, "writing %s\n", name);
    int fd = open(name, O_CREATE|O_RDWR);
    if(fd < 0){
      printf(1, "open %s failed\n", name);
    3b1d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3b20:	89 44 24 08          	mov    %eax,0x8(%esp)
    3b24:	c7 44 24 04 94 53 00 	movl   $0x5394,0x4(%esp)
    3b2b:	00 
    3b2c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3b33:	e8 78 05 00 00       	call   40b0 <printf>
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3b38:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3b3d:	89 d9                	mov    %ebx,%ecx
    3b3f:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3b41:	89 de                	mov    %ebx,%esi
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3b43:	c1 f9 1f             	sar    $0x1f,%ecx
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    3b46:	89 df                	mov    %ebx,%edi
      break;
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    3b48:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    name[5] = '\0';
    3b4c:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3b50:	c1 fa 06             	sar    $0x6,%edx
    3b53:	29 ca                	sub    %ecx,%edx
    3b55:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3b58:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
  }

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    3b5e:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3b61:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3b66:	29 d6                	sub    %edx,%esi
    3b68:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3b6a:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    3b6f:	c1 fe 1f             	sar    $0x1f,%esi
    3b72:	c1 fa 05             	sar    $0x5,%edx
    3b75:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3b77:	be 67 66 66 66       	mov    $0x66666667,%esi

  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    3b7c:	83 c2 30             	add    $0x30,%edx
    3b7f:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3b82:	f7 eb                	imul   %ebx
    3b84:	c1 fa 05             	sar    $0x5,%edx
    3b87:	29 ca                	sub    %ecx,%edx
    3b89:	6b d2 64             	imul   $0x64,%edx,%edx
    3b8c:	29 d7                	sub    %edx,%edi
    3b8e:	89 f8                	mov    %edi,%eax
    3b90:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3b92:	89 d8                	mov    %ebx,%eax
  while(nfiles >= 0){
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    3b94:	c1 ff 1f             	sar    $0x1f,%edi
    3b97:	c1 fa 02             	sar    $0x2,%edx
    3b9a:	29 fa                	sub    %edi,%edx
    3b9c:	83 c2 30             	add    $0x30,%edx
    3b9f:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3ba2:	f7 ee                	imul   %esi
    3ba4:	c1 fa 02             	sar    $0x2,%edx
    3ba7:	29 ca                	sub    %ecx,%edx
    3ba9:	89 d9                	mov    %ebx,%ecx
    3bab:	8d 04 92             	lea    (%edx,%edx,4),%eax
    name[5] = '\0';
    unlink(name);
    nfiles--;
    3bae:	83 eb 01             	sub    $0x1,%ebx
    char name[64];
    name[0] = 'f';
    name[1] = '0' + nfiles / 1000;
    name[2] = '0' + (nfiles % 1000) / 100;
    name[3] = '0' + (nfiles % 100) / 10;
    name[4] = '0' + (nfiles % 10);
    3bb1:	01 c0                	add    %eax,%eax
    3bb3:	29 c1                	sub    %eax,%ecx
    3bb5:	89 c8                	mov    %ecx,%eax
    3bb7:	83 c0 30             	add    $0x30,%eax
    3bba:	88 45 ac             	mov    %al,-0x54(%ebp)
    name[5] = '\0';
    unlink(name);
    3bbd:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3bc0:	89 04 24             	mov    %eax,(%esp)
    3bc3:	e8 ea 03 00 00       	call   3fb2 <unlink>
    close(fd);
    if(total == 0)
      break;
  }

  while(nfiles >= 0){
    3bc8:	83 fb ff             	cmp    $0xffffffff,%ebx
    3bcb:	0f 85 67 ff ff ff    	jne    3b38 <fsfull+0x148>
    name[5] = '\0';
    unlink(name);
    nfiles--;
  }

  printf(1, "fsfull test finished\n");
    3bd1:	c7 44 24 04 b4 53 00 	movl   $0x53b4,0x4(%esp)
    3bd8:	00 
    3bd9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3be0:	e8 cb 04 00 00       	call   40b0 <printf>
}
    3be5:	83 c4 5c             	add    $0x5c,%esp
    3be8:	5b                   	pop    %ebx
    3be9:	5e                   	pop    %esi
    3bea:	5f                   	pop    %edi
    3beb:	5d                   	pop    %ebp
    3bec:	c3                   	ret    
    3bed:	8d 76 00             	lea    0x0(%esi),%esi

00003bf0 <uio>:

void
uio()
{
    3bf0:	55                   	push   %ebp
    3bf1:	89 e5                	mov    %esp,%ebp
    3bf3:	83 ec 28             	sub    $0x28,%esp

  ushort port = 0;
  uchar val = 0;
  int pid; int child_status;

  printf(1, "uio test\n");
    3bf6:	c7 44 24 04 ca 53 00 	movl   $0x53ca,0x4(%esp)
    3bfd:	00 
    3bfe:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c05:	e8 a6 04 00 00       	call   40b0 <printf>
  pid = fork();
    3c0a:	e8 4b 03 00 00       	call   3f5a <fork>
  if(pid == 0){
    3c0f:	85 c0                	test   %eax,%eax
    3c11:	74 23                	je     3c36 <uio+0x46>
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    printf(1, "uio: uio succeeded; test FAILED\n");
    exit(0);
  } else if(pid < 0){
    3c13:	78 4f                	js     3c64 <uio+0x74>
    printf (1, "fork failed\n");
    exit(0);
  }
  wait(&child_status);
    3c15:	8d 45 f4             	lea    -0xc(%ebp),%eax
    3c18:	89 04 24             	mov    %eax,(%esp)
    3c1b:	e8 4a 03 00 00       	call   3f6a <wait>
  printf(1, "uio test done\n");
    3c20:	c7 44 24 04 d4 53 00 	movl   $0x53d4,0x4(%esp)
    3c27:	00 
    3c28:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c2f:	e8 7c 04 00 00       	call   40b0 <printf>
}
    3c34:	c9                   	leave  
    3c35:	c3                   	ret    
  pid = fork();
  if(pid == 0){
    port = RTC_ADDR;
    val = 0x09;  /* year */
    /* http://wiki.osdev.org/Inline_Assembly/Examples */
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3c36:	ba 70 00 00 00       	mov    $0x70,%edx
    3c3b:	b8 09 00 00 00       	mov    $0x9,%eax
    3c40:	ee                   	out    %al,(%dx)
    port = RTC_DATA;
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3c41:	b2 71                	mov    $0x71,%dl
    3c43:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    3c44:	c7 44 24 04 60 5b 00 	movl   $0x5b60,0x4(%esp)
    3c4b:	00 
    3c4c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c53:	e8 58 04 00 00       	call   40b0 <printf>
    exit(0);
    3c58:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c5f:	e8 fe 02 00 00       	call   3f62 <exit>
  } else if(pid < 0){
    printf (1, "fork failed\n");
    3c64:	c7 44 24 04 59 53 00 	movl   $0x5359,0x4(%esp)
    3c6b:	00 
    3c6c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c73:	e8 38 04 00 00       	call   40b0 <printf>
    exit(0);
    3c78:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c7f:	e8 de 02 00 00       	call   3f62 <exit>
    3c84:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3c8a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003c90 <argptest>:
  wait(&child_status);
  printf(1, "uio test done\n");
}

void argptest()
{
    3c90:	55                   	push   %ebp
    3c91:	89 e5                	mov    %esp,%ebp
    3c93:	53                   	push   %ebx
    3c94:	83 ec 14             	sub    $0x14,%esp
  int fd;
  fd = open("init", O_RDONLY);
    3c97:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3c9e:	00 
    3c9f:	c7 04 24 e3 53 00 00 	movl   $0x53e3,(%esp)
    3ca6:	e8 f7 02 00 00       	call   3fa2 <open>
  if (fd < 0) {
    3cab:	85 c0                	test   %eax,%eax
}

void argptest()
{
  int fd;
  fd = open("init", O_RDONLY);
    3cad:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    3caf:	78 45                	js     3cf6 <argptest+0x66>
    printf(2, "open failed\n");
    exit(0);
  }
  read(fd, sbrk(0) - 1, -1);
    3cb1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3cb8:	e8 2d 03 00 00       	call   3fea <sbrk>
    3cbd:	89 1c 24             	mov    %ebx,(%esp)
    3cc0:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
    3cc7:	ff 
    3cc8:	83 e8 01             	sub    $0x1,%eax
    3ccb:	89 44 24 04          	mov    %eax,0x4(%esp)
    3ccf:	e8 a6 02 00 00       	call   3f7a <read>
  close(fd);
    3cd4:	89 1c 24             	mov    %ebx,(%esp)
    3cd7:	e8 ae 02 00 00       	call   3f8a <close>
  printf(1, "arg test passed\n");
    3cdc:	c7 44 24 04 f5 53 00 	movl   $0x53f5,0x4(%esp)
    3ce3:	00 
    3ce4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3ceb:	e8 c0 03 00 00       	call   40b0 <printf>
}
    3cf0:	83 c4 14             	add    $0x14,%esp
    3cf3:	5b                   	pop    %ebx
    3cf4:	5d                   	pop    %ebp
    3cf5:	c3                   	ret    
void argptest()
{
  int fd;
  fd = open("init", O_RDONLY);
  if (fd < 0) {
    printf(2, "open failed\n");
    3cf6:	c7 44 24 04 e8 53 00 	movl   $0x53e8,0x4(%esp)
    3cfd:	00 
    3cfe:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    3d05:	e8 a6 03 00 00       	call   40b0 <printf>
    exit(0);
    3d0a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d11:	e8 4c 02 00 00       	call   3f62 <exit>
    3d16:	8d 76 00             	lea    0x0(%esi),%esi
    3d19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003d20 <rand>:

unsigned long randstate = 1;
unsigned int
rand()
{
  randstate = randstate * 1664525 + 1013904223;
    3d20:	69 05 9c 64 00 00 0d 	imul   $0x19660d,0x649c,%eax
    3d27:	66 19 00 
}

unsigned long randstate = 1;
unsigned int
rand()
{
    3d2a:	55                   	push   %ebp
    3d2b:	89 e5                	mov    %esp,%ebp
  randstate = randstate * 1664525 + 1013904223;
  return randstate;
}
    3d2d:	5d                   	pop    %ebp

unsigned long randstate = 1;
unsigned int
rand()
{
  randstate = randstate * 1664525 + 1013904223;
    3d2e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3d33:	a3 9c 64 00 00       	mov    %eax,0x649c
  return randstate;
}
    3d38:	c3                   	ret    
    3d39:	66 90                	xchg   %ax,%ax
    3d3b:	66 90                	xchg   %ax,%ax
    3d3d:	66 90                	xchg   %ax,%ax
    3d3f:	90                   	nop

00003d40 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    3d40:	55                   	push   %ebp
    3d41:	89 e5                	mov    %esp,%ebp
    3d43:	8b 45 08             	mov    0x8(%ebp),%eax
    3d46:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    3d49:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3d4a:	89 c2                	mov    %eax,%edx
    3d4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3d50:	83 c1 01             	add    $0x1,%ecx
    3d53:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3d57:	83 c2 01             	add    $0x1,%edx
    3d5a:	84 db                	test   %bl,%bl
    3d5c:	88 5a ff             	mov    %bl,-0x1(%edx)
    3d5f:	75 ef                	jne    3d50 <strcpy+0x10>
    ;
  return os;
}
    3d61:	5b                   	pop    %ebx
    3d62:	5d                   	pop    %ebp
    3d63:	c3                   	ret    
    3d64:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3d6a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003d70 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3d70:	55                   	push   %ebp
    3d71:	89 e5                	mov    %esp,%ebp
    3d73:	8b 55 08             	mov    0x8(%ebp),%edx
    3d76:	53                   	push   %ebx
    3d77:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    3d7a:	0f b6 02             	movzbl (%edx),%eax
    3d7d:	84 c0                	test   %al,%al
    3d7f:	74 2d                	je     3dae <strcmp+0x3e>
    3d81:	0f b6 19             	movzbl (%ecx),%ebx
    3d84:	38 d8                	cmp    %bl,%al
    3d86:	74 0e                	je     3d96 <strcmp+0x26>
    3d88:	eb 2b                	jmp    3db5 <strcmp+0x45>
    3d8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3d90:	38 c8                	cmp    %cl,%al
    3d92:	75 15                	jne    3da9 <strcmp+0x39>
    p++, q++;
    3d94:	89 d9                	mov    %ebx,%ecx
    3d96:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    3d99:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3d9c:	8d 59 01             	lea    0x1(%ecx),%ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    3d9f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    3da3:	84 c0                	test   %al,%al
    3da5:	75 e9                	jne    3d90 <strcmp+0x20>
    3da7:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
    3da9:	29 c8                	sub    %ecx,%eax
}
    3dab:	5b                   	pop    %ebx
    3dac:	5d                   	pop    %ebp
    3dad:	c3                   	ret    
    3dae:	0f b6 09             	movzbl (%ecx),%ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    3db1:	31 c0                	xor    %eax,%eax
    3db3:	eb f4                	jmp    3da9 <strcmp+0x39>
    3db5:	0f b6 cb             	movzbl %bl,%ecx
    3db8:	eb ef                	jmp    3da9 <strcmp+0x39>
    3dba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003dc0 <strlen>:
  return (uchar)*p - (uchar)*q;
}

uint
strlen(char *s)
{
    3dc0:	55                   	push   %ebp
    3dc1:	89 e5                	mov    %esp,%ebp
    3dc3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    3dc6:	80 39 00             	cmpb   $0x0,(%ecx)
    3dc9:	74 12                	je     3ddd <strlen+0x1d>
    3dcb:	31 d2                	xor    %edx,%edx
    3dcd:	8d 76 00             	lea    0x0(%esi),%esi
    3dd0:	83 c2 01             	add    $0x1,%edx
    3dd3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3dd7:	89 d0                	mov    %edx,%eax
    3dd9:	75 f5                	jne    3dd0 <strlen+0x10>
    ;
  return n;
}
    3ddb:	5d                   	pop    %ebp
    3ddc:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
    3ddd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
    3ddf:	5d                   	pop    %ebp
    3de0:	c3                   	ret    
    3de1:	eb 0d                	jmp    3df0 <memset>
    3de3:	90                   	nop
    3de4:	90                   	nop
    3de5:	90                   	nop
    3de6:	90                   	nop
    3de7:	90                   	nop
    3de8:	90                   	nop
    3de9:	90                   	nop
    3dea:	90                   	nop
    3deb:	90                   	nop
    3dec:	90                   	nop
    3ded:	90                   	nop
    3dee:	90                   	nop
    3def:	90                   	nop

00003df0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3df0:	55                   	push   %ebp
    3df1:	89 e5                	mov    %esp,%ebp
    3df3:	8b 55 08             	mov    0x8(%ebp),%edx
    3df6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3df7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3dfa:	8b 45 0c             	mov    0xc(%ebp),%eax
    3dfd:	89 d7                	mov    %edx,%edi
    3dff:	fc                   	cld    
    3e00:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3e02:	89 d0                	mov    %edx,%eax
    3e04:	5f                   	pop    %edi
    3e05:	5d                   	pop    %ebp
    3e06:	c3                   	ret    
    3e07:	89 f6                	mov    %esi,%esi
    3e09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003e10 <strchr>:

char*
strchr(const char *s, char c)
{
    3e10:	55                   	push   %ebp
    3e11:	89 e5                	mov    %esp,%ebp
    3e13:	8b 45 08             	mov    0x8(%ebp),%eax
    3e16:	53                   	push   %ebx
    3e17:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    3e1a:	0f b6 18             	movzbl (%eax),%ebx
    3e1d:	84 db                	test   %bl,%bl
    3e1f:	74 1d                	je     3e3e <strchr+0x2e>
    if(*s == c)
    3e21:	38 d3                	cmp    %dl,%bl
    3e23:	89 d1                	mov    %edx,%ecx
    3e25:	75 0d                	jne    3e34 <strchr+0x24>
    3e27:	eb 17                	jmp    3e40 <strchr+0x30>
    3e29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3e30:	38 ca                	cmp    %cl,%dl
    3e32:	74 0c                	je     3e40 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
    3e34:	83 c0 01             	add    $0x1,%eax
    3e37:	0f b6 10             	movzbl (%eax),%edx
    3e3a:	84 d2                	test   %dl,%dl
    3e3c:	75 f2                	jne    3e30 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
    3e3e:	31 c0                	xor    %eax,%eax
}
    3e40:	5b                   	pop    %ebx
    3e41:	5d                   	pop    %ebp
    3e42:	c3                   	ret    
    3e43:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3e49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003e50 <gets>:

char*
gets(char *buf, int max)
{
    3e50:	55                   	push   %ebp
    3e51:	89 e5                	mov    %esp,%ebp
    3e53:	57                   	push   %edi
    3e54:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3e55:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
    3e57:	53                   	push   %ebx
    3e58:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    3e5b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3e5e:	eb 31                	jmp    3e91 <gets+0x41>
    cc = read(0, &c, 1);
    3e60:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3e67:	00 
    3e68:	89 7c 24 04          	mov    %edi,0x4(%esp)
    3e6c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e73:	e8 02 01 00 00       	call   3f7a <read>
    if(cc < 1)
    3e78:	85 c0                	test   %eax,%eax
    3e7a:	7e 1d                	jle    3e99 <gets+0x49>
      break;
    buf[i++] = c;
    3e7c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3e80:	89 de                	mov    %ebx,%esi
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    3e82:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    3e85:	3c 0d                	cmp    $0xd,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    3e87:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    3e8b:	74 0c                	je     3e99 <gets+0x49>
    3e8d:	3c 0a                	cmp    $0xa,%al
    3e8f:	74 08                	je     3e99 <gets+0x49>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3e91:	8d 5e 01             	lea    0x1(%esi),%ebx
    3e94:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3e97:	7c c7                	jl     3e60 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
    3e99:	8b 45 08             	mov    0x8(%ebp),%eax
    3e9c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3ea0:	83 c4 2c             	add    $0x2c,%esp
    3ea3:	5b                   	pop    %ebx
    3ea4:	5e                   	pop    %esi
    3ea5:	5f                   	pop    %edi
    3ea6:	5d                   	pop    %ebp
    3ea7:	c3                   	ret    
    3ea8:	90                   	nop
    3ea9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003eb0 <stat>:

int
stat(char *n, struct stat *st)
{
    3eb0:	55                   	push   %ebp
    3eb1:	89 e5                	mov    %esp,%ebp
    3eb3:	56                   	push   %esi
    3eb4:	53                   	push   %ebx
    3eb5:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3eb8:	8b 45 08             	mov    0x8(%ebp),%eax
    3ebb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3ec2:	00 
    3ec3:	89 04 24             	mov    %eax,(%esp)
    3ec6:	e8 d7 00 00 00       	call   3fa2 <open>
  if(fd < 0)
    3ecb:	85 c0                	test   %eax,%eax
stat(char *n, struct stat *st)
{
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3ecd:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
    3ecf:	78 27                	js     3ef8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    3ed1:	8b 45 0c             	mov    0xc(%ebp),%eax
    3ed4:	89 1c 24             	mov    %ebx,(%esp)
    3ed7:	89 44 24 04          	mov    %eax,0x4(%esp)
    3edb:	e8 da 00 00 00       	call   3fba <fstat>
  close(fd);
    3ee0:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
    3ee3:	89 c6                	mov    %eax,%esi
  close(fd);
    3ee5:	e8 a0 00 00 00       	call   3f8a <close>
  return r;
    3eea:	89 f0                	mov    %esi,%eax
}
    3eec:	83 c4 10             	add    $0x10,%esp
    3eef:	5b                   	pop    %ebx
    3ef0:	5e                   	pop    %esi
    3ef1:	5d                   	pop    %ebp
    3ef2:	c3                   	ret    
    3ef3:	90                   	nop
    3ef4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
    3ef8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3efd:	eb ed                	jmp    3eec <stat+0x3c>
    3eff:	90                   	nop

00003f00 <atoi>:
  return r;
}

int
atoi(const char *s)
{
    3f00:	55                   	push   %ebp
    3f01:	89 e5                	mov    %esp,%ebp
    3f03:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3f06:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3f07:	0f be 11             	movsbl (%ecx),%edx
    3f0a:	8d 42 d0             	lea    -0x30(%edx),%eax
    3f0d:	3c 09                	cmp    $0x9,%al
int
atoi(const char *s)
{
  int n;

  n = 0;
    3f0f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    3f14:	77 17                	ja     3f2d <atoi+0x2d>
    3f16:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3f18:	83 c1 01             	add    $0x1,%ecx
    3f1b:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3f1e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3f22:	0f be 11             	movsbl (%ecx),%edx
    3f25:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3f28:	80 fb 09             	cmp    $0x9,%bl
    3f2b:	76 eb                	jbe    3f18 <atoi+0x18>
    n = n*10 + *s++ - '0';
  return n;
}
    3f2d:	5b                   	pop    %ebx
    3f2e:	5d                   	pop    %ebp
    3f2f:	c3                   	ret    

00003f30 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    3f30:	55                   	push   %ebp
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3f31:	31 d2                	xor    %edx,%edx
  return n;
}

void*
memmove(void *vdst, void *vsrc, int n)
{
    3f33:	89 e5                	mov    %esp,%ebp
    3f35:	56                   	push   %esi
    3f36:	8b 45 08             	mov    0x8(%ebp),%eax
    3f39:	53                   	push   %ebx
    3f3a:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3f3d:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3f40:	85 db                	test   %ebx,%ebx
    3f42:	7e 12                	jle    3f56 <memmove+0x26>
    3f44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3f48:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    3f4c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    3f4f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3f52:	39 da                	cmp    %ebx,%edx
    3f54:	75 f2                	jne    3f48 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
    3f56:	5b                   	pop    %ebx
    3f57:	5e                   	pop    %esi
    3f58:	5d                   	pop    %ebp
    3f59:	c3                   	ret    

00003f5a <fork>:
    3f5a:	b8 01 00 00 00       	mov    $0x1,%eax
    3f5f:	cd 40                	int    $0x40
    3f61:	c3                   	ret    

00003f62 <exit>:
    3f62:	b8 02 00 00 00       	mov    $0x2,%eax
    3f67:	cd 40                	int    $0x40
    3f69:	c3                   	ret    

00003f6a <wait>:
    3f6a:	b8 03 00 00 00       	mov    $0x3,%eax
    3f6f:	cd 40                	int    $0x40
    3f71:	c3                   	ret    

00003f72 <pipe>:
    3f72:	b8 04 00 00 00       	mov    $0x4,%eax
    3f77:	cd 40                	int    $0x40
    3f79:	c3                   	ret    

00003f7a <read>:
    3f7a:	b8 05 00 00 00       	mov    $0x5,%eax
    3f7f:	cd 40                	int    $0x40
    3f81:	c3                   	ret    

00003f82 <write>:
    3f82:	b8 10 00 00 00       	mov    $0x10,%eax
    3f87:	cd 40                	int    $0x40
    3f89:	c3                   	ret    

00003f8a <close>:
    3f8a:	b8 15 00 00 00       	mov    $0x15,%eax
    3f8f:	cd 40                	int    $0x40
    3f91:	c3                   	ret    

00003f92 <kill>:
    3f92:	b8 06 00 00 00       	mov    $0x6,%eax
    3f97:	cd 40                	int    $0x40
    3f99:	c3                   	ret    

00003f9a <exec>:
    3f9a:	b8 07 00 00 00       	mov    $0x7,%eax
    3f9f:	cd 40                	int    $0x40
    3fa1:	c3                   	ret    

00003fa2 <open>:
    3fa2:	b8 0f 00 00 00       	mov    $0xf,%eax
    3fa7:	cd 40                	int    $0x40
    3fa9:	c3                   	ret    

00003faa <mknod>:
    3faa:	b8 11 00 00 00       	mov    $0x11,%eax
    3faf:	cd 40                	int    $0x40
    3fb1:	c3                   	ret    

00003fb2 <unlink>:
    3fb2:	b8 12 00 00 00       	mov    $0x12,%eax
    3fb7:	cd 40                	int    $0x40
    3fb9:	c3                   	ret    

00003fba <fstat>:
    3fba:	b8 08 00 00 00       	mov    $0x8,%eax
    3fbf:	cd 40                	int    $0x40
    3fc1:	c3                   	ret    

00003fc2 <link>:
    3fc2:	b8 13 00 00 00       	mov    $0x13,%eax
    3fc7:	cd 40                	int    $0x40
    3fc9:	c3                   	ret    

00003fca <mkdir>:
    3fca:	b8 14 00 00 00       	mov    $0x14,%eax
    3fcf:	cd 40                	int    $0x40
    3fd1:	c3                   	ret    

00003fd2 <chdir>:
    3fd2:	b8 09 00 00 00       	mov    $0x9,%eax
    3fd7:	cd 40                	int    $0x40
    3fd9:	c3                   	ret    

00003fda <dup>:
    3fda:	b8 0a 00 00 00       	mov    $0xa,%eax
    3fdf:	cd 40                	int    $0x40
    3fe1:	c3                   	ret    

00003fe2 <getpid>:
    3fe2:	b8 0b 00 00 00       	mov    $0xb,%eax
    3fe7:	cd 40                	int    $0x40
    3fe9:	c3                   	ret    

00003fea <sbrk>:
    3fea:	b8 0c 00 00 00       	mov    $0xc,%eax
    3fef:	cd 40                	int    $0x40
    3ff1:	c3                   	ret    

00003ff2 <sleep>:
    3ff2:	b8 0d 00 00 00       	mov    $0xd,%eax
    3ff7:	cd 40                	int    $0x40
    3ff9:	c3                   	ret    

00003ffa <uptime>:
    3ffa:	b8 0e 00 00 00       	mov    $0xe,%eax
    3fff:	cd 40                	int    $0x40
    4001:	c3                   	ret    

00004002 <waitpid>:
    4002:	b8 16 00 00 00       	mov    $0x16,%eax
    4007:	cd 40                	int    $0x40
    4009:	c3                   	ret    
    400a:	66 90                	xchg   %ax,%ax
    400c:	66 90                	xchg   %ax,%ax
    400e:	66 90                	xchg   %ax,%ax

00004010 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    4010:	55                   	push   %ebp
    4011:	89 e5                	mov    %esp,%ebp
    4013:	57                   	push   %edi
    4014:	56                   	push   %esi
    4015:	89 c6                	mov    %eax,%esi
    4017:	53                   	push   %ebx
    4018:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    401b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    401e:	85 db                	test   %ebx,%ebx
    4020:	74 09                	je     402b <printint+0x1b>
    4022:	89 d0                	mov    %edx,%eax
    4024:	c1 e8 1f             	shr    $0x1f,%eax
    4027:	84 c0                	test   %al,%al
    4029:	75 75                	jne    40a0 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    402b:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
    402d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    4034:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
    4037:	31 ff                	xor    %edi,%edi
    4039:	89 ce                	mov    %ecx,%esi
    403b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    403e:	eb 02                	jmp    4042 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    4040:	89 cf                	mov    %ecx,%edi
    4042:	31 d2                	xor    %edx,%edx
    4044:	f7 f6                	div    %esi
    4046:	8d 4f 01             	lea    0x1(%edi),%ecx
    4049:	0f b6 92 b7 5b 00 00 	movzbl 0x5bb7(%edx),%edx
  }while((x /= base) != 0);
    4050:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    4052:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    4055:	75 e9                	jne    4040 <printint+0x30>
  if(neg)
    4057:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
    405a:	89 c8                	mov    %ecx,%eax
    405c:	8b 75 c0             	mov    -0x40(%ebp),%esi
  }while((x /= base) != 0);
  if(neg)
    405f:	85 d2                	test   %edx,%edx
    4061:	74 08                	je     406b <printint+0x5b>
    buf[i++] = '-';
    4063:	8d 4f 02             	lea    0x2(%edi),%ecx
    4066:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    406b:	8d 79 ff             	lea    -0x1(%ecx),%edi
    406e:	66 90                	xchg   %ax,%ax
    4070:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    4075:	83 ef 01             	sub    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4078:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    407f:	00 
    4080:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    4084:	89 34 24             	mov    %esi,(%esp)
    4087:	88 45 d7             	mov    %al,-0x29(%ebp)
    408a:	e8 f3 fe ff ff       	call   3f82 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
    408f:	83 ff ff             	cmp    $0xffffffff,%edi
    4092:	75 dc                	jne    4070 <printint+0x60>
    putc(fd, buf[i]);
}
    4094:	83 c4 4c             	add    $0x4c,%esp
    4097:	5b                   	pop    %ebx
    4098:	5e                   	pop    %esi
    4099:	5f                   	pop    %edi
    409a:	5d                   	pop    %ebp
    409b:	c3                   	ret    
    409c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    40a0:	89 d0                	mov    %edx,%eax
    40a2:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    40a4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    40ab:	eb 87                	jmp    4034 <printint+0x24>
    40ad:	8d 76 00             	lea    0x0(%esi),%esi

000040b0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    40b0:	55                   	push   %ebp
    40b1:	89 e5                	mov    %esp,%ebp
    40b3:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    40b4:	31 ff                	xor    %edi,%edi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    40b6:	56                   	push   %esi
    40b7:	53                   	push   %ebx
    40b8:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    40bb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
    40be:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    40c1:	8b 75 08             	mov    0x8(%ebp),%esi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
    40c4:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    40c7:	0f b6 13             	movzbl (%ebx),%edx
    40ca:	83 c3 01             	add    $0x1,%ebx
    40cd:	84 d2                	test   %dl,%dl
    40cf:	75 39                	jne    410a <printf+0x5a>
    40d1:	e9 c2 00 00 00       	jmp    4198 <printf+0xe8>
    40d6:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    40d8:	83 fa 25             	cmp    $0x25,%edx
    40db:	0f 84 bf 00 00 00    	je     41a0 <printf+0xf0>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    40e1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    40e4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    40eb:	00 
    40ec:	89 44 24 04          	mov    %eax,0x4(%esp)
    40f0:	89 34 24             	mov    %esi,(%esp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
    40f3:	88 55 e2             	mov    %dl,-0x1e(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    40f6:	e8 87 fe ff ff       	call   3f82 <write>
    40fb:	83 c3 01             	add    $0x1,%ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    40fe:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    4102:	84 d2                	test   %dl,%dl
    4104:	0f 84 8e 00 00 00    	je     4198 <printf+0xe8>
    c = fmt[i] & 0xff;
    if(state == 0){
    410a:	85 ff                	test   %edi,%edi
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    410c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    410f:	74 c7                	je     40d8 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    4111:	83 ff 25             	cmp    $0x25,%edi
    4114:	75 e5                	jne    40fb <printf+0x4b>
      if(c == 'd'){
    4116:	83 fa 64             	cmp    $0x64,%edx
    4119:	0f 84 31 01 00 00    	je     4250 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    411f:	25 f7 00 00 00       	and    $0xf7,%eax
    4124:	83 f8 70             	cmp    $0x70,%eax
    4127:	0f 84 83 00 00 00    	je     41b0 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    412d:	83 fa 73             	cmp    $0x73,%edx
    4130:	0f 84 a2 00 00 00    	je     41d8 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    4136:	83 fa 63             	cmp    $0x63,%edx
    4139:	0f 84 35 01 00 00    	je     4274 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    413f:	83 fa 25             	cmp    $0x25,%edx
    4142:	0f 84 e0 00 00 00    	je     4228 <printf+0x178>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4148:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    414b:	83 c3 01             	add    $0x1,%ebx
    414e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4155:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    4156:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4158:	89 44 24 04          	mov    %eax,0x4(%esp)
    415c:	89 34 24             	mov    %esi,(%esp)
    415f:	89 55 d0             	mov    %edx,-0x30(%ebp)
    4162:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    4166:	e8 17 fe ff ff       	call   3f82 <write>
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    416b:	8b 55 d0             	mov    -0x30(%ebp),%edx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    416e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    4171:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4178:	00 
    4179:	89 44 24 04          	mov    %eax,0x4(%esp)
    417d:	89 34 24             	mov    %esi,(%esp)
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    4180:	88 55 e7             	mov    %dl,-0x19(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4183:	e8 fa fd ff ff       	call   3f82 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    4188:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    418c:	84 d2                	test   %dl,%dl
    418e:	0f 85 76 ff ff ff    	jne    410a <printf+0x5a>
    4194:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, c);
      }
      state = 0;
    }
  }
}
    4198:	83 c4 3c             	add    $0x3c,%esp
    419b:	5b                   	pop    %ebx
    419c:	5e                   	pop    %esi
    419d:	5f                   	pop    %edi
    419e:	5d                   	pop    %ebp
    419f:	c3                   	ret    
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    41a0:	bf 25 00 00 00       	mov    $0x25,%edi
    41a5:	e9 51 ff ff ff       	jmp    40fb <printf+0x4b>
    41aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    41b0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    41b3:	b9 10 00 00 00       	mov    $0x10,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    41b8:	31 ff                	xor    %edi,%edi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
    41ba:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    41c1:	8b 10                	mov    (%eax),%edx
    41c3:	89 f0                	mov    %esi,%eax
    41c5:	e8 46 fe ff ff       	call   4010 <printint>
        ap++;
    41ca:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    41ce:	e9 28 ff ff ff       	jmp    40fb <printf+0x4b>
    41d3:	90                   	nop
    41d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
    41d8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    41db:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
        s = (char*)*ap;
    41df:	8b 38                	mov    (%eax),%edi
        ap++;
        if(s == 0)
          s = "(null)";
    41e1:	b8 b0 5b 00 00       	mov    $0x5bb0,%eax
    41e6:	85 ff                	test   %edi,%edi
    41e8:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    41eb:	0f b6 07             	movzbl (%edi),%eax
    41ee:	84 c0                	test   %al,%al
    41f0:	74 2a                	je     421c <printf+0x16c>
    41f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    41f8:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    41fb:	8d 45 e3             	lea    -0x1d(%ebp),%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
    41fe:	83 c7 01             	add    $0x1,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4201:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4208:	00 
    4209:	89 44 24 04          	mov    %eax,0x4(%esp)
    420d:	89 34 24             	mov    %esi,(%esp)
    4210:	e8 6d fd ff ff       	call   3f82 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
    4215:	0f b6 07             	movzbl (%edi),%eax
    4218:	84 c0                	test   %al,%al
    421a:	75 dc                	jne    41f8 <printf+0x148>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    421c:	31 ff                	xor    %edi,%edi
    421e:	e9 d8 fe ff ff       	jmp    40fb <printf+0x4b>
    4223:	90                   	nop
    4224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4228:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    422b:	31 ff                	xor    %edi,%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    422d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4234:	00 
    4235:	89 44 24 04          	mov    %eax,0x4(%esp)
    4239:	89 34 24             	mov    %esi,(%esp)
    423c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    4240:	e8 3d fd ff ff       	call   3f82 <write>
    4245:	e9 b1 fe ff ff       	jmp    40fb <printf+0x4b>
    424a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    4250:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    4253:	b9 0a 00 00 00       	mov    $0xa,%ecx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    4258:	66 31 ff             	xor    %di,%di
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
    425b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    4262:	8b 10                	mov    (%eax),%edx
    4264:	89 f0                	mov    %esi,%eax
    4266:	e8 a5 fd ff ff       	call   4010 <printint>
        ap++;
    426b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    426f:	e9 87 fe ff ff       	jmp    40fb <printf+0x4b>
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    4274:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    4277:	31 ff                	xor    %edi,%edi
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    4279:	8b 00                	mov    (%eax),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    427b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4282:	00 
    4283:	89 34 24             	mov    %esi,(%esp)
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
    4286:	88 45 e4             	mov    %al,-0x1c(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
    4289:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    428c:	89 44 24 04          	mov    %eax,0x4(%esp)
    4290:	e8 ed fc ff ff       	call   3f82 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
    4295:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    4299:	e9 5d fe ff ff       	jmp    40fb <printf+0x4b>
    429e:	66 90                	xchg   %ax,%ax

000042a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    42a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    42a1:	a1 40 65 00 00       	mov    0x6540,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
    42a6:	89 e5                	mov    %esp,%ebp
    42a8:	57                   	push   %edi
    42a9:	56                   	push   %esi
    42aa:	53                   	push   %ebx
    42ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    42ae:	8b 08                	mov    (%eax),%ecx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
    42b0:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    42b3:	39 d0                	cmp    %edx,%eax
    42b5:	72 11                	jb     42c8 <free+0x28>
    42b7:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    42b8:	39 c8                	cmp    %ecx,%eax
    42ba:	72 04                	jb     42c0 <free+0x20>
    42bc:	39 ca                	cmp    %ecx,%edx
    42be:	72 10                	jb     42d0 <free+0x30>
    42c0:	89 c8                	mov    %ecx,%eax
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    42c2:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    42c4:	8b 08                	mov    (%eax),%ecx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    42c6:	73 f0                	jae    42b8 <free+0x18>
    42c8:	39 ca                	cmp    %ecx,%edx
    42ca:	72 04                	jb     42d0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    42cc:	39 c8                	cmp    %ecx,%eax
    42ce:	72 f0                	jb     42c0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    42d0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    42d3:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    42d6:	39 cf                	cmp    %ecx,%edi
    42d8:	74 1e                	je     42f8 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    42da:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    42dd:	8b 48 04             	mov    0x4(%eax),%ecx
    42e0:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    42e3:	39 f2                	cmp    %esi,%edx
    42e5:	74 28                	je     430f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    42e7:	89 10                	mov    %edx,(%eax)
  freep = p;
    42e9:	a3 40 65 00 00       	mov    %eax,0x6540
}
    42ee:	5b                   	pop    %ebx
    42ef:	5e                   	pop    %esi
    42f0:	5f                   	pop    %edi
    42f1:	5d                   	pop    %ebp
    42f2:	c3                   	ret    
    42f3:	90                   	nop
    42f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
    42f8:	03 71 04             	add    0x4(%ecx),%esi
    42fb:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    42fe:	8b 08                	mov    (%eax),%ecx
    4300:	8b 09                	mov    (%ecx),%ecx
    4302:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    4305:	8b 48 04             	mov    0x4(%eax),%ecx
    4308:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    430b:	39 f2                	cmp    %esi,%edx
    430d:	75 d8                	jne    42e7 <free+0x47>
    p->s.size += bp->s.size;
    430f:	03 4b fc             	add    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
    4312:	a3 40 65 00 00       	mov    %eax,0x6540
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    4317:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    431a:	8b 53 f8             	mov    -0x8(%ebx),%edx
    431d:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
    431f:	5b                   	pop    %ebx
    4320:	5e                   	pop    %esi
    4321:	5f                   	pop    %edi
    4322:	5d                   	pop    %ebp
    4323:	c3                   	ret    
    4324:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    432a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00004330 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4330:	55                   	push   %ebp
    4331:	89 e5                	mov    %esp,%ebp
    4333:	57                   	push   %edi
    4334:	56                   	push   %esi
    4335:	53                   	push   %ebx
    4336:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4339:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    433c:	8b 1d 40 65 00 00    	mov    0x6540,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4342:	8d 48 07             	lea    0x7(%eax),%ecx
    4345:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    4348:	85 db                	test   %ebx,%ebx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    434a:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    434d:	0f 84 9b 00 00 00    	je     43ee <malloc+0xbe>
    4353:	8b 13                	mov    (%ebx),%edx
    4355:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    4358:	39 fe                	cmp    %edi,%esi
    435a:	76 64                	jbe    43c0 <malloc+0x90>
    435c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    4363:	bb 00 80 00 00       	mov    $0x8000,%ebx
    4368:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    436b:	eb 0e                	jmp    437b <malloc+0x4b>
    436d:	8d 76 00             	lea    0x0(%esi),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4370:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    4372:	8b 78 04             	mov    0x4(%eax),%edi
    4375:	39 fe                	cmp    %edi,%esi
    4377:	76 4f                	jbe    43c8 <malloc+0x98>
    4379:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    437b:	3b 15 40 65 00 00    	cmp    0x6540,%edx
    4381:	75 ed                	jne    4370 <malloc+0x40>
morecore(uint nu)
{
  char *p;
  Header *hp;

  if(nu < 4096)
    4383:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4386:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    438c:	bf 00 10 00 00       	mov    $0x1000,%edi
    4391:	0f 43 fe             	cmovae %esi,%edi
    4394:	0f 42 c3             	cmovb  %ebx,%eax
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
    4397:	89 04 24             	mov    %eax,(%esp)
    439a:	e8 4b fc ff ff       	call   3fea <sbrk>
  if(p == (char*)-1)
    439f:	83 f8 ff             	cmp    $0xffffffff,%eax
    43a2:	74 18                	je     43bc <malloc+0x8c>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
    43a4:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    43a7:	83 c0 08             	add    $0x8,%eax
    43aa:	89 04 24             	mov    %eax,(%esp)
    43ad:	e8 ee fe ff ff       	call   42a0 <free>
  return freep;
    43b2:	8b 15 40 65 00 00    	mov    0x6540,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
    43b8:	85 d2                	test   %edx,%edx
    43ba:	75 b4                	jne    4370 <malloc+0x40>
        return 0;
    43bc:	31 c0                	xor    %eax,%eax
    43be:	eb 20                	jmp    43e0 <malloc+0xb0>
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    43c0:	89 d0                	mov    %edx,%eax
    43c2:	89 da                	mov    %ebx,%edx
    43c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    43c8:	39 fe                	cmp    %edi,%esi
    43ca:	74 1c                	je     43e8 <malloc+0xb8>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
    43cc:	29 f7                	sub    %esi,%edi
    43ce:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    43d1:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    43d4:	89 70 04             	mov    %esi,0x4(%eax)
      }
      freep = prevp;
    43d7:	89 15 40 65 00 00    	mov    %edx,0x6540
      return (void*)(p + 1);
    43dd:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
    43e0:	83 c4 1c             	add    $0x1c,%esp
    43e3:	5b                   	pop    %ebx
    43e4:	5e                   	pop    %esi
    43e5:	5f                   	pop    %edi
    43e6:	5d                   	pop    %ebp
    43e7:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
    43e8:	8b 08                	mov    (%eax),%ecx
    43ea:	89 0a                	mov    %ecx,(%edx)
    43ec:	eb e9                	jmp    43d7 <malloc+0xa7>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    43ee:	c7 05 40 65 00 00 44 	movl   $0x6544,0x6540
    43f5:	65 00 00 
    base.s.size = 0;
    43f8:	ba 44 65 00 00       	mov    $0x6544,%edx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    43fd:	c7 05 44 65 00 00 44 	movl   $0x6544,0x6544
    4404:	65 00 00 
    base.s.size = 0;
    4407:	c7 05 48 65 00 00 00 	movl   $0x0,0x6548
    440e:	00 00 00 
    4411:	e9 46 ff ff ff       	jmp    435c <malloc+0x2c>
