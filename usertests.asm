
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 3e 5a 00 00       	push   $0x5a3e
      16:	6a 01                	push   $0x1
      18:	e8 13 47 00 00       	call   4730 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	5a                   	pop    %edx
      1e:	59                   	pop    %ecx
      1f:	6a 00                	push   $0x0
      21:	68 52 5a 00 00       	push   $0x5a52
      26:	e8 f7 45 00 00       	call   4622 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 1d                	js     4f <main+0x4f>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	50                   	push   %eax
      33:	50                   	push   %eax
      34:	68 bc 61 00 00       	push   $0x61bc
      39:	6a 01                	push   $0x1
      3b:	e8 f0 46 00 00       	call   4730 <printf>
    exit(0);
      40:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      47:	e8 96 45 00 00       	call   45e2 <exit>
      4c:	83 c4 10             	add    $0x10,%esp
  }
  close(open("usertests.ran", O_CREATE));
      4f:	83 ec 08             	sub    $0x8,%esp
      52:	68 00 02 00 00       	push   $0x200
      57:	68 52 5a 00 00       	push   $0x5a52
      5c:	e8 c1 45 00 00       	call   4622 <open>
      61:	89 04 24             	mov    %eax,(%esp)
      64:	e8 a1 45 00 00       	call   460a <close>

  argptest();
      69:	e8 92 42 00 00       	call   4300 <argptest>
  createdelete();
      6e:	e8 fd 14 00 00       	call   1570 <createdelete>
  linkunlink();
      73:	e8 28 20 00 00       	call   20a0 <linkunlink>
  concreate();
      78:	e8 23 1c 00 00       	call   1ca0 <concreate>
  fourfiles();
      7d:	e8 8e 12 00 00       	call   1310 <fourfiles>
  sharedfd();
      82:	e8 b9 10 00 00       	call   1140 <sharedfd>

  bigargtest();
      87:	e8 b4 3e 00 00       	call   3f40 <bigargtest>
  bigwrite();
      8c:	e8 6f 2c 00 00       	call   2d00 <bigwrite>
  bigargtest();
      91:	e8 aa 3e 00 00       	call   3f40 <bigargtest>
  bsstest();
      96:	e8 25 3e 00 00       	call   3ec0 <bsstest>
  sbrktest();
      9b:	e8 60 38 00 00       	call   3900 <sbrktest>
  validatetest();
      a0:	e8 4b 3d 00 00       	call   3df0 <validatetest>

  opentest();
      a5:	e8 66 04 00 00       	call   510 <opentest>
  writetest();
      aa:	e8 21 05 00 00       	call   5d0 <writetest>
  writetest1();
      af:	e8 4c 07 00 00       	call   800 <writetest1>
  createtest();
      b4:	e8 67 09 00 00       	call   a20 <createtest>

  openiputtest();
      b9:	e8 02 03 00 00       	call   3c0 <openiputtest>
  exitiputtest();
      be:	e8 ad 01 00 00       	call   270 <exitiputtest>
  iputtest();
      c3:	e8 68 00 00 00       	call   130 <iputtest>

  mem();
      c8:	e8 83 0f 00 00       	call   1050 <mem>
  pipe1();
      cd:	e8 9e 0b 00 00       	call   c70 <pipe1>
  preempt();
      d2:	e8 79 0d 00 00       	call   e50 <preempt>
  exitwait();
      d7:	e8 c4 0e 00 00       	call   fa0 <exitwait>

  rmdot();
      dc:	e8 ff 30 00 00       	call   31e0 <rmdot>
  fourteen();
      e1:	e8 3a 2f 00 00       	call   3020 <fourteen>
  bigfile();
      e6:	e8 15 2d 00 00       	call   2e00 <bigfile>
  subdir();
      eb:	e8 70 22 00 00       	call   2360 <subdir>
  linktest();
      f0:	e8 1b 19 00 00       	call   1a10 <linktest>
  unlinkread();
      f5:	e8 26 17 00 00       	call   1820 <unlinkread>
  dirfile();
      fa:	e8 f1 32 00 00       	call   33f0 <dirfile>
  iref();
      ff:	e8 ac 35 00 00       	call   36b0 <iref>
  forktest();
     104:	e8 e7 36 00 00       	call   37f0 <forktest>
  bigdir(); // slow
     109:	e8 d2 20 00 00       	call   21e0 <bigdir>

  uio();
     10e:	e8 5d 41 00 00       	call   4270 <uio>

  exectest();
     113:	e8 f8 0a 00 00       	call   c10 <exectest>

  exit(0);
     118:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     11f:	e8 be 44 00 00       	call   45e2 <exit>
}
     124:	8b 4d fc             	mov    -0x4(%ebp),%ecx
     127:	31 c0                	xor    %eax,%eax
     129:	c9                   	leave  
     12a:	8d 61 fc             	lea    -0x4(%ecx),%esp
     12d:	c3                   	ret    
     12e:	66 90                	xchg   %ax,%ax

00000130 <iputtest>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     136:	68 e4 4a 00 00       	push   $0x4ae4
     13b:	ff 35 20 6b 00 00    	pushl  0x6b20
     141:	e8 ea 45 00 00       	call   4730 <printf>
  if(mkdir("iputdir") < 0){
     146:	c7 04 24 77 4a 00 00 	movl   $0x4a77,(%esp)
     14d:	e8 f8 44 00 00       	call   464a <mkdir>
     152:	83 c4 10             	add    $0x10,%esp
     155:	85 c0                	test   %eax,%eax
     157:	0f 88 8b 00 00 00    	js     1e8 <iputtest+0xb8>
  if(chdir("iputdir") < 0){
     15d:	83 ec 0c             	sub    $0xc,%esp
     160:	68 77 4a 00 00       	push   $0x4a77
     165:	e8 e8 44 00 00       	call   4652 <chdir>
     16a:	83 c4 10             	add    $0x10,%esp
     16d:	85 c0                	test   %eax,%eax
     16f:	0f 88 9b 00 00 00    	js     210 <iputtest+0xe0>
  if(unlink("../iputdir") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 74 4a 00 00       	push   $0x4a74
     17d:	e8 b0 44 00 00       	call   4632 <unlink>
     182:	83 c4 10             	add    $0x10,%esp
     185:	85 c0                	test   %eax,%eax
     187:	0f 88 b3 00 00 00    	js     240 <iputtest+0x110>
  if(chdir("/") < 0){
     18d:	83 ec 0c             	sub    $0xc,%esp
     190:	68 99 4a 00 00       	push   $0x4a99
     195:	e8 b8 44 00 00       	call   4652 <chdir>
     19a:	83 c4 10             	add    $0x10,%esp
     19d:	85 c0                	test   %eax,%eax
     19f:	78 1f                	js     1c0 <iputtest+0x90>
  printf(stdout, "iput test ok\n");
     1a1:	83 ec 08             	sub    $0x8,%esp
     1a4:	68 1c 4b 00 00       	push   $0x4b1c
     1a9:	ff 35 20 6b 00 00    	pushl  0x6b20
     1af:	e8 7c 45 00 00       	call   4730 <printf>
}
     1b4:	83 c4 10             	add    $0x10,%esp
     1b7:	c9                   	leave  
     1b8:	c3                   	ret    
     1b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "chdir / failed\n");
     1c0:	83 ec 08             	sub    $0x8,%esp
     1c3:	68 9b 4a 00 00       	push   $0x4a9b
     1c8:	ff 35 20 6b 00 00    	pushl  0x6b20
     1ce:	e8 5d 45 00 00       	call   4730 <printf>
    exit(0);
     1d3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     1da:	e8 03 44 00 00       	call   45e2 <exit>
     1df:	83 c4 10             	add    $0x10,%esp
     1e2:	eb bd                	jmp    1a1 <iputtest+0x71>
     1e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "mkdir failed\n");
     1e8:	83 ec 08             	sub    $0x8,%esp
     1eb:	68 50 4a 00 00       	push   $0x4a50
     1f0:	ff 35 20 6b 00 00    	pushl  0x6b20
     1f6:	e8 35 45 00 00       	call   4730 <printf>
    exit(0);
     1fb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     202:	e8 db 43 00 00       	call   45e2 <exit>
     207:	83 c4 10             	add    $0x10,%esp
     20a:	e9 4e ff ff ff       	jmp    15d <iputtest+0x2d>
     20f:	90                   	nop
    printf(stdout, "chdir iputdir failed\n");
     210:	83 ec 08             	sub    $0x8,%esp
     213:	68 5e 4a 00 00       	push   $0x4a5e
     218:	ff 35 20 6b 00 00    	pushl  0x6b20
     21e:	e8 0d 45 00 00       	call   4730 <printf>
    exit(0);
     223:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     22a:	e8 b3 43 00 00       	call   45e2 <exit>
     22f:	83 c4 10             	add    $0x10,%esp
     232:	e9 3e ff ff ff       	jmp    175 <iputtest+0x45>
     237:	89 f6                	mov    %esi,%esi
     239:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(stdout, "unlink ../iputdir failed\n");
     240:	83 ec 08             	sub    $0x8,%esp
     243:	68 7f 4a 00 00       	push   $0x4a7f
     248:	ff 35 20 6b 00 00    	pushl  0x6b20
     24e:	e8 dd 44 00 00       	call   4730 <printf>
    exit(0);
     253:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     25a:	e8 83 43 00 00       	call   45e2 <exit>
     25f:	83 c4 10             	add    $0x10,%esp
     262:	e9 26 ff ff ff       	jmp    18d <iputtest+0x5d>
     267:	89 f6                	mov    %esi,%esi
     269:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000270 <exitiputtest>:
{
     270:	55                   	push   %ebp
     271:	89 e5                	mov    %esp,%ebp
     273:	83 ec 20             	sub    $0x20,%esp
  printf(stdout, "exitiput test\n");
     276:	68 ab 4a 00 00       	push   $0x4aab
     27b:	ff 35 20 6b 00 00    	pushl  0x6b20
     281:	e8 aa 44 00 00       	call   4730 <printf>
  pid = fork();
     286:	e8 4f 43 00 00       	call   45da <fork>
  if(pid < 0){
     28b:	83 c4 10             	add    $0x10,%esp
     28e:	85 c0                	test   %eax,%eax
     290:	78 7e                	js     310 <exitiputtest+0xa0>
  if(pid == 0){
     292:	74 2c                	je     2c0 <exitiputtest+0x50>
  wait(&child_status);
     294:	8d 45 f4             	lea    -0xc(%ebp),%eax
     297:	83 ec 0c             	sub    $0xc,%esp
     29a:	50                   	push   %eax
     29b:	e8 4a 43 00 00       	call   45ea <wait>
  printf(stdout, "exitiput test ok\n");
     2a0:	58                   	pop    %eax
     2a1:	5a                   	pop    %edx
     2a2:	68 ce 4a 00 00       	push   $0x4ace
     2a7:	ff 35 20 6b 00 00    	pushl  0x6b20
     2ad:	e8 7e 44 00 00       	call   4730 <printf>
}
     2b2:	83 c4 10             	add    $0x10,%esp
     2b5:	c9                   	leave  
     2b6:	c3                   	ret    
     2b7:	89 f6                	mov    %esi,%esi
     2b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    if(mkdir("iputdir") < 0){
     2c0:	83 ec 0c             	sub    $0xc,%esp
     2c3:	68 77 4a 00 00       	push   $0x4a77
     2c8:	e8 7d 43 00 00       	call   464a <mkdir>
     2cd:	83 c4 10             	add    $0x10,%esp
     2d0:	85 c0                	test   %eax,%eax
     2d2:	0f 88 b8 00 00 00    	js     390 <exitiputtest+0x120>
    if(chdir("iputdir") < 0){
     2d8:	83 ec 0c             	sub    $0xc,%esp
     2db:	68 77 4a 00 00       	push   $0x4a77
     2e0:	e8 6d 43 00 00       	call   4652 <chdir>
     2e5:	83 c4 10             	add    $0x10,%esp
     2e8:	85 c0                	test   %eax,%eax
     2ea:	78 7c                	js     368 <exitiputtest+0xf8>
    if(unlink("../iputdir") < 0){
     2ec:	83 ec 0c             	sub    $0xc,%esp
     2ef:	68 74 4a 00 00       	push   $0x4a74
     2f4:	e8 39 43 00 00       	call   4632 <unlink>
     2f9:	83 c4 10             	add    $0x10,%esp
     2fc:	85 c0                	test   %eax,%eax
     2fe:	78 40                	js     340 <exitiputtest+0xd0>
    exit(0);
     300:	83 ec 0c             	sub    $0xc,%esp
     303:	6a 00                	push   $0x0
     305:	e8 d8 42 00 00       	call   45e2 <exit>
     30a:	83 c4 10             	add    $0x10,%esp
     30d:	eb 85                	jmp    294 <exitiputtest+0x24>
     30f:	90                   	nop
    printf(stdout, "fork failed\n");
     310:	83 ec 08             	sub    $0x8,%esp
     313:	68 91 59 00 00       	push   $0x5991
     318:	ff 35 20 6b 00 00    	pushl  0x6b20
     31e:	e8 0d 44 00 00       	call   4730 <printf>
    exit(0);
     323:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     32a:	e8 b3 42 00 00       	call   45e2 <exit>
     32f:	83 c4 10             	add    $0x10,%esp
     332:	e9 5d ff ff ff       	jmp    294 <exitiputtest+0x24>
     337:	89 f6                	mov    %esi,%esi
     339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(stdout, "unlink ../iputdir failed\n");
     340:	83 ec 08             	sub    $0x8,%esp
     343:	68 7f 4a 00 00       	push   $0x4a7f
     348:	ff 35 20 6b 00 00    	pushl  0x6b20
     34e:	e8 dd 43 00 00       	call   4730 <printf>
      exit(0);
     353:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     35a:	e8 83 42 00 00       	call   45e2 <exit>
     35f:	83 c4 10             	add    $0x10,%esp
     362:	eb 9c                	jmp    300 <exitiputtest+0x90>
     364:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "child chdir failed\n");
     368:	83 ec 08             	sub    $0x8,%esp
     36b:	68 ba 4a 00 00       	push   $0x4aba
     370:	ff 35 20 6b 00 00    	pushl  0x6b20
     376:	e8 b5 43 00 00       	call   4730 <printf>
      exit(0);
     37b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     382:	e8 5b 42 00 00       	call   45e2 <exit>
     387:	83 c4 10             	add    $0x10,%esp
     38a:	e9 5d ff ff ff       	jmp    2ec <exitiputtest+0x7c>
     38f:	90                   	nop
      printf(stdout, "mkdir failed\n");
     390:	83 ec 08             	sub    $0x8,%esp
     393:	68 50 4a 00 00       	push   $0x4a50
     398:	ff 35 20 6b 00 00    	pushl  0x6b20
     39e:	e8 8d 43 00 00       	call   4730 <printf>
      exit(0);
     3a3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3aa:	e8 33 42 00 00       	call   45e2 <exit>
     3af:	83 c4 10             	add    $0x10,%esp
     3b2:	e9 21 ff ff ff       	jmp    2d8 <exitiputtest+0x68>
     3b7:	89 f6                	mov    %esi,%esi
     3b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003c0 <openiputtest>:
{
     3c0:	55                   	push   %ebp
     3c1:	89 e5                	mov    %esp,%ebp
     3c3:	83 ec 20             	sub    $0x20,%esp
  printf(stdout, "openiput test\n");
     3c6:	68 e0 4a 00 00       	push   $0x4ae0
     3cb:	ff 35 20 6b 00 00    	pushl  0x6b20
     3d1:	e8 5a 43 00 00       	call   4730 <printf>
  if(mkdir("oidir") < 0){
     3d6:	c7 04 24 ef 4a 00 00 	movl   $0x4aef,(%esp)
     3dd:	e8 68 42 00 00       	call   464a <mkdir>
     3e2:	83 c4 10             	add    $0x10,%esp
     3e5:	85 c0                	test   %eax,%eax
     3e7:	0f 88 c3 00 00 00    	js     4b0 <openiputtest+0xf0>
  pid = fork();
     3ed:	e8 e8 41 00 00       	call   45da <fork>
  if(pid < 0){
     3f2:	85 c0                	test   %eax,%eax
     3f4:	0f 88 e6 00 00 00    	js     4e0 <openiputtest+0x120>
  if(pid == 0){
     3fa:	74 64                	je     460 <openiputtest+0xa0>
  sleep(1);
     3fc:	83 ec 0c             	sub    $0xc,%esp
     3ff:	6a 01                	push   $0x1
     401:	e8 6c 42 00 00       	call   4672 <sleep>
  if(unlink("oidir") != 0){
     406:	c7 04 24 ef 4a 00 00 	movl   $0x4aef,(%esp)
     40d:	e8 20 42 00 00       	call   4632 <unlink>
     412:	83 c4 10             	add    $0x10,%esp
     415:	85 c0                	test   %eax,%eax
     417:	74 22                	je     43b <openiputtest+0x7b>
    printf(stdout, "unlink failed\n");
     419:	83 ec 08             	sub    $0x8,%esp
     41c:	68 09 4b 00 00       	push   $0x4b09
     421:	ff 35 20 6b 00 00    	pushl  0x6b20
     427:	e8 04 43 00 00       	call   4730 <printf>
    exit(0);
     42c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     433:	e8 aa 41 00 00       	call   45e2 <exit>
     438:	83 c4 10             	add    $0x10,%esp
  wait(&child_status);
     43b:	8d 45 f4             	lea    -0xc(%ebp),%eax
     43e:	83 ec 0c             	sub    $0xc,%esp
     441:	50                   	push   %eax
     442:	e8 a3 41 00 00       	call   45ea <wait>
  printf(stdout, "openiput test ok\n");
     447:	58                   	pop    %eax
     448:	5a                   	pop    %edx
     449:	68 18 4b 00 00       	push   $0x4b18
     44e:	ff 35 20 6b 00 00    	pushl  0x6b20
     454:	e8 d7 42 00 00       	call   4730 <printf>
}
     459:	83 c4 10             	add    $0x10,%esp
     45c:	c9                   	leave  
     45d:	c3                   	ret    
     45e:	66 90                	xchg   %ax,%ax
    int fd = open("oidir", O_RDWR);
     460:	83 ec 08             	sub    $0x8,%esp
     463:	6a 02                	push   $0x2
     465:	68 ef 4a 00 00       	push   $0x4aef
     46a:	e8 b3 41 00 00       	call   4622 <open>
    if(fd >= 0){
     46f:	83 c4 10             	add    $0x10,%esp
     472:	85 c0                	test   %eax,%eax
     474:	78 22                	js     498 <openiputtest+0xd8>
      printf(stdout, "open directory for write succeeded\n");
     476:	83 ec 08             	sub    $0x8,%esp
     479:	68 74 5a 00 00       	push   $0x5a74
     47e:	ff 35 20 6b 00 00    	pushl  0x6b20
     484:	e8 a7 42 00 00       	call   4730 <printf>
      exit(0);
     489:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     490:	e8 4d 41 00 00       	call   45e2 <exit>
     495:	83 c4 10             	add    $0x10,%esp
    exit(0);
     498:	83 ec 0c             	sub    $0xc,%esp
     49b:	6a 00                	push   $0x0
     49d:	e8 40 41 00 00       	call   45e2 <exit>
     4a2:	83 c4 10             	add    $0x10,%esp
     4a5:	e9 52 ff ff ff       	jmp    3fc <openiputtest+0x3c>
     4aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(stdout, "mkdir oidir failed\n");
     4b0:	83 ec 08             	sub    $0x8,%esp
     4b3:	68 f5 4a 00 00       	push   $0x4af5
     4b8:	ff 35 20 6b 00 00    	pushl  0x6b20
     4be:	e8 6d 42 00 00       	call   4730 <printf>
    exit(0);
     4c3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4ca:	e8 13 41 00 00       	call   45e2 <exit>
     4cf:	83 c4 10             	add    $0x10,%esp
  pid = fork();
     4d2:	e8 03 41 00 00       	call   45da <fork>
  if(pid < 0){
     4d7:	85 c0                	test   %eax,%eax
     4d9:	0f 89 1b ff ff ff    	jns    3fa <openiputtest+0x3a>
     4df:	90                   	nop
    printf(stdout, "fork failed\n");
     4e0:	83 ec 08             	sub    $0x8,%esp
     4e3:	68 91 59 00 00       	push   $0x5991
     4e8:	ff 35 20 6b 00 00    	pushl  0x6b20
     4ee:	e8 3d 42 00 00       	call   4730 <printf>
    exit(0);
     4f3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4fa:	e8 e3 40 00 00       	call   45e2 <exit>
     4ff:	83 c4 10             	add    $0x10,%esp
     502:	e9 f5 fe ff ff       	jmp    3fc <openiputtest+0x3c>
     507:	89 f6                	mov    %esi,%esi
     509:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000510 <opentest>:
{
     510:	55                   	push   %ebp
     511:	89 e5                	mov    %esp,%ebp
     513:	83 ec 20             	sub    $0x20,%esp
  printf(stdout, "open test\n");
     516:	68 2a 4b 00 00       	push   $0x4b2a
     51b:	ff 35 20 6b 00 00    	pushl  0x6b20
     521:	e8 0a 42 00 00       	call   4730 <printf>
  fd = open("echo", 0);
     526:	59                   	pop    %ecx
     527:	58                   	pop    %eax
     528:	6a 00                	push   $0x0
     52a:	68 35 4b 00 00       	push   $0x4b35
     52f:	e8 ee 40 00 00       	call   4622 <open>
  if(fd < 0){
     534:	83 c4 10             	add    $0x10,%esp
     537:	85 c0                	test   %eax,%eax
     539:	78 5d                	js     598 <opentest+0x88>
  close(fd);
     53b:	83 ec 0c             	sub    $0xc,%esp
     53e:	50                   	push   %eax
     53f:	e8 c6 40 00 00       	call   460a <close>
  fd = open("doesnotexist", 0);
     544:	58                   	pop    %eax
     545:	5a                   	pop    %edx
     546:	6a 00                	push   $0x0
     548:	68 4d 4b 00 00       	push   $0x4b4d
     54d:	e8 d0 40 00 00       	call   4622 <open>
  if(fd >= 0){
     552:	83 c4 10             	add    $0x10,%esp
     555:	85 c0                	test   %eax,%eax
     557:	78 22                	js     57b <opentest+0x6b>
    printf(stdout, "open doesnotexist succeeded!\n");
     559:	83 ec 08             	sub    $0x8,%esp
     55c:	68 5a 4b 00 00       	push   $0x4b5a
     561:	ff 35 20 6b 00 00    	pushl  0x6b20
     567:	e8 c4 41 00 00       	call   4730 <printf>
    exit(0);
     56c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     573:	e8 6a 40 00 00       	call   45e2 <exit>
     578:	83 c4 10             	add    $0x10,%esp
  printf(stdout, "open test ok\n");
     57b:	83 ec 08             	sub    $0x8,%esp
     57e:	68 78 4b 00 00       	push   $0x4b78
     583:	ff 35 20 6b 00 00    	pushl  0x6b20
     589:	e8 a2 41 00 00       	call   4730 <printf>
}
     58e:	83 c4 10             	add    $0x10,%esp
     591:	c9                   	leave  
     592:	c3                   	ret    
     593:	90                   	nop
     594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "open echo failed!\n");
     598:	83 ec 08             	sub    $0x8,%esp
     59b:	89 45 f4             	mov    %eax,-0xc(%ebp)
     59e:	68 3a 4b 00 00       	push   $0x4b3a
     5a3:	ff 35 20 6b 00 00    	pushl  0x6b20
     5a9:	e8 82 41 00 00       	call   4730 <printf>
    exit(0);
     5ae:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     5b5:	e8 28 40 00 00       	call   45e2 <exit>
     5ba:	83 c4 10             	add    $0x10,%esp
     5bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
     5c0:	e9 76 ff ff ff       	jmp    53b <opentest+0x2b>
     5c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     5c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005d0 <writetest>:
{
     5d0:	55                   	push   %ebp
     5d1:	89 e5                	mov    %esp,%ebp
     5d3:	56                   	push   %esi
     5d4:	53                   	push   %ebx
  printf(stdout, "small file test\n");
     5d5:	83 ec 08             	sub    $0x8,%esp
     5d8:	68 86 4b 00 00       	push   $0x4b86
     5dd:	ff 35 20 6b 00 00    	pushl  0x6b20
     5e3:	e8 48 41 00 00       	call   4730 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     5e8:	59                   	pop    %ecx
     5e9:	5b                   	pop    %ebx
     5ea:	68 02 02 00 00       	push   $0x202
     5ef:	68 97 4b 00 00       	push   $0x4b97
     5f4:	e8 29 40 00 00       	call   4622 <open>
  if(fd >= 0){
     5f9:	83 c4 10             	add    $0x10,%esp
     5fc:	85 c0                	test   %eax,%eax
  fd = open("small", O_CREATE|O_RDWR);
     5fe:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     600:	0f 88 9f 01 00 00    	js     7a5 <writetest+0x1d5>
    printf(stdout, "creat small succeeded; ok\n");
     606:	83 ec 08             	sub    $0x8,%esp
     609:	68 9d 4b 00 00       	push   $0x4b9d
     60e:	ff 35 20 6b 00 00    	pushl  0x6b20
     614:	e8 17 41 00 00       	call   4730 <printf>
     619:	83 c4 10             	add    $0x10,%esp
{
     61c:	31 db                	xor    %ebx,%ebx
     61e:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     620:	83 ec 04             	sub    $0x4,%esp
     623:	6a 0a                	push   $0xa
     625:	68 d4 4b 00 00       	push   $0x4bd4
     62a:	56                   	push   %esi
     62b:	e8 d2 3f 00 00       	call   4602 <write>
     630:	83 c4 10             	add    $0x10,%esp
     633:	83 f8 0a             	cmp    $0xa,%eax
     636:	74 23                	je     65b <writetest+0x8b>
      printf(stdout, "error: write aa %d new file failed\n", i);
     638:	83 ec 04             	sub    $0x4,%esp
     63b:	53                   	push   %ebx
     63c:	68 98 5a 00 00       	push   $0x5a98
     641:	ff 35 20 6b 00 00    	pushl  0x6b20
     647:	e8 e4 40 00 00       	call   4730 <printf>
      exit(0);
     64c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     653:	e8 8a 3f 00 00       	call   45e2 <exit>
     658:	83 c4 10             	add    $0x10,%esp
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     65b:	83 ec 04             	sub    $0x4,%esp
     65e:	6a 0a                	push   $0xa
     660:	68 df 4b 00 00       	push   $0x4bdf
     665:	56                   	push   %esi
     666:	e8 97 3f 00 00       	call   4602 <write>
     66b:	83 c4 10             	add    $0x10,%esp
     66e:	83 f8 0a             	cmp    $0xa,%eax
     671:	74 23                	je     696 <writetest+0xc6>
      printf(stdout, "error: write bb %d new file failed\n", i);
     673:	83 ec 04             	sub    $0x4,%esp
     676:	53                   	push   %ebx
     677:	68 bc 5a 00 00       	push   $0x5abc
     67c:	ff 35 20 6b 00 00    	pushl  0x6b20
     682:	e8 a9 40 00 00       	call   4730 <printf>
      exit(0);
     687:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     68e:	e8 4f 3f 00 00       	call   45e2 <exit>
     693:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
     696:	83 c3 01             	add    $0x1,%ebx
     699:	83 fb 64             	cmp    $0x64,%ebx
     69c:	75 82                	jne    620 <writetest+0x50>
  printf(stdout, "writes ok\n");
     69e:	83 ec 08             	sub    $0x8,%esp
     6a1:	68 ea 4b 00 00       	push   $0x4bea
     6a6:	ff 35 20 6b 00 00    	pushl  0x6b20
     6ac:	e8 7f 40 00 00       	call   4730 <printf>
  close(fd);
     6b1:	89 34 24             	mov    %esi,(%esp)
     6b4:	e8 51 3f 00 00       	call   460a <close>
  fd = open("small", O_RDONLY);
     6b9:	58                   	pop    %eax
     6ba:	5a                   	pop    %edx
     6bb:	6a 00                	push   $0x0
     6bd:	68 97 4b 00 00       	push   $0x4b97
     6c2:	e8 5b 3f 00 00       	call   4622 <open>
  if(fd >= 0){
     6c7:	83 c4 10             	add    $0x10,%esp
     6ca:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
     6cc:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     6ce:	0f 88 aa 00 00 00    	js     77e <writetest+0x1ae>
    printf(stdout, "open small succeeded ok\n");
     6d4:	83 ec 08             	sub    $0x8,%esp
     6d7:	68 f5 4b 00 00       	push   $0x4bf5
     6dc:	ff 35 20 6b 00 00    	pushl  0x6b20
     6e2:	e8 49 40 00 00       	call   4730 <printf>
     6e7:	83 c4 10             	add    $0x10,%esp
  i = read(fd, buf, 2000);
     6ea:	83 ec 04             	sub    $0x4,%esp
     6ed:	68 d0 07 00 00       	push   $0x7d0
     6f2:	68 00 93 00 00       	push   $0x9300
     6f7:	53                   	push   %ebx
     6f8:	e8 fd 3e 00 00       	call   45fa <read>
  if(i == 2000){
     6fd:	83 c4 10             	add    $0x10,%esp
     700:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     705:	74 5f                	je     766 <writetest+0x196>
    printf(stdout, "read failed\n");
     707:	83 ec 08             	sub    $0x8,%esp
     70a:	68 55 4f 00 00       	push   $0x4f55
     70f:	ff 35 20 6b 00 00    	pushl  0x6b20
     715:	e8 16 40 00 00       	call   4730 <printf>
    exit(0);
     71a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     721:	e8 bc 3e 00 00       	call   45e2 <exit>
     726:	83 c4 10             	add    $0x10,%esp
  close(fd);
     729:	83 ec 0c             	sub    $0xc,%esp
     72c:	53                   	push   %ebx
     72d:	e8 d8 3e 00 00       	call   460a <close>
  if(unlink("small") < 0){
     732:	c7 04 24 97 4b 00 00 	movl   $0x4b97,(%esp)
     739:	e8 f4 3e 00 00       	call   4632 <unlink>
     73e:	83 c4 10             	add    $0x10,%esp
     741:	85 c0                	test   %eax,%eax
     743:	0f 88 83 00 00 00    	js     7cc <writetest+0x1fc>
  printf(stdout, "small file test ok\n");
     749:	83 ec 08             	sub    $0x8,%esp
     74c:	68 51 4c 00 00       	push   $0x4c51
     751:	ff 35 20 6b 00 00    	pushl  0x6b20
     757:	e8 d4 3f 00 00       	call   4730 <printf>
}
     75c:	83 c4 10             	add    $0x10,%esp
     75f:	8d 65 f8             	lea    -0x8(%ebp),%esp
     762:	5b                   	pop    %ebx
     763:	5e                   	pop    %esi
     764:	5d                   	pop    %ebp
     765:	c3                   	ret    
    printf(stdout, "read succeeded ok\n");
     766:	83 ec 08             	sub    $0x8,%esp
     769:	68 29 4c 00 00       	push   $0x4c29
     76e:	ff 35 20 6b 00 00    	pushl  0x6b20
     774:	e8 b7 3f 00 00       	call   4730 <printf>
     779:	83 c4 10             	add    $0x10,%esp
     77c:	eb ab                	jmp    729 <writetest+0x159>
    printf(stdout, "error: open small failed!\n");
     77e:	83 ec 08             	sub    $0x8,%esp
     781:	68 0e 4c 00 00       	push   $0x4c0e
     786:	ff 35 20 6b 00 00    	pushl  0x6b20
     78c:	e8 9f 3f 00 00       	call   4730 <printf>
    exit(0);
     791:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     798:	e8 45 3e 00 00       	call   45e2 <exit>
     79d:	83 c4 10             	add    $0x10,%esp
     7a0:	e9 45 ff ff ff       	jmp    6ea <writetest+0x11a>
    printf(stdout, "error: creat small failed!\n");
     7a5:	83 ec 08             	sub    $0x8,%esp
     7a8:	68 b8 4b 00 00       	push   $0x4bb8
     7ad:	ff 35 20 6b 00 00    	pushl  0x6b20
     7b3:	e8 78 3f 00 00       	call   4730 <printf>
    exit(0);
     7b8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7bf:	e8 1e 3e 00 00       	call   45e2 <exit>
     7c4:	83 c4 10             	add    $0x10,%esp
     7c7:	e9 50 fe ff ff       	jmp    61c <writetest+0x4c>
    printf(stdout, "unlink small failed\n");
     7cc:	83 ec 08             	sub    $0x8,%esp
     7cf:	68 3c 4c 00 00       	push   $0x4c3c
     7d4:	ff 35 20 6b 00 00    	pushl  0x6b20
     7da:	e8 51 3f 00 00       	call   4730 <printf>
    exit(0);
     7df:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7e6:	e8 f7 3d 00 00       	call   45e2 <exit>
     7eb:	83 c4 10             	add    $0x10,%esp
     7ee:	e9 56 ff ff ff       	jmp    749 <writetest+0x179>
     7f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     7f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000800 <writetest1>:
{
     800:	55                   	push   %ebp
     801:	89 e5                	mov    %esp,%ebp
     803:	56                   	push   %esi
     804:	53                   	push   %ebx
  printf(stdout, "big files test\n");
     805:	83 ec 08             	sub    $0x8,%esp
     808:	68 65 4c 00 00       	push   $0x4c65
     80d:	ff 35 20 6b 00 00    	pushl  0x6b20
     813:	e8 18 3f 00 00       	call   4730 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     818:	59                   	pop    %ecx
     819:	5b                   	pop    %ebx
     81a:	68 02 02 00 00       	push   $0x202
     81f:	68 df 4c 00 00       	push   $0x4cdf
     824:	e8 f9 3d 00 00       	call   4622 <open>
  if(fd < 0){
     829:	83 c4 10             	add    $0x10,%esp
     82c:	85 c0                	test   %eax,%eax
  fd = open("big", O_CREATE|O_RDWR);
     82e:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     830:	0f 88 67 01 00 00    	js     99d <writetest1+0x19d>
{
     836:	31 db                	xor    %ebx,%ebx
     838:	90                   	nop
     839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(write(fd, buf, 512) != 512){
     840:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
     843:	89 1d 00 93 00 00    	mov    %ebx,0x9300
    if(write(fd, buf, 512) != 512){
     849:	68 00 02 00 00       	push   $0x200
     84e:	68 00 93 00 00       	push   $0x9300
     853:	56                   	push   %esi
     854:	e8 a9 3d 00 00       	call   4602 <write>
     859:	83 c4 10             	add    $0x10,%esp
     85c:	3d 00 02 00 00       	cmp    $0x200,%eax
     861:	74 23                	je     886 <writetest1+0x86>
      printf(stdout, "error: write big file failed\n", i);
     863:	83 ec 04             	sub    $0x4,%esp
     866:	53                   	push   %ebx
     867:	68 8f 4c 00 00       	push   $0x4c8f
     86c:	ff 35 20 6b 00 00    	pushl  0x6b20
     872:	e8 b9 3e 00 00       	call   4730 <printf>
      exit(0);
     877:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     87e:	e8 5f 3d 00 00       	call   45e2 <exit>
     883:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < MAXFILE; i++){
     886:	83 c3 01             	add    $0x1,%ebx
     889:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     88f:	75 af                	jne    840 <writetest1+0x40>
  close(fd);
     891:	83 ec 0c             	sub    $0xc,%esp
     894:	56                   	push   %esi
     895:	e8 70 3d 00 00       	call   460a <close>
  fd = open("big", O_RDONLY);
     89a:	58                   	pop    %eax
     89b:	5a                   	pop    %edx
     89c:	6a 00                	push   $0x0
     89e:	68 df 4c 00 00       	push   $0x4cdf
     8a3:	e8 7a 3d 00 00       	call   4622 <open>
  if(fd < 0){
     8a8:	83 c4 10             	add    $0x10,%esp
     8ab:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
     8ad:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     8af:	0f 88 c1 00 00 00    	js     976 <writetest1+0x176>
{
     8b5:	31 db                	xor    %ebx,%ebx
     8b7:	eb 5e                	jmp    917 <writetest1+0x117>
     8b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    } else if(i != 512){
     8c0:	3d 00 02 00 00       	cmp    $0x200,%eax
     8c5:	74 23                	je     8ea <writetest1+0xea>
      printf(stdout, "read failed %d\n", i);
     8c7:	83 ec 04             	sub    $0x4,%esp
     8ca:	50                   	push   %eax
     8cb:	68 e3 4c 00 00       	push   $0x4ce3
     8d0:	ff 35 20 6b 00 00    	pushl  0x6b20
     8d6:	e8 55 3e 00 00       	call   4730 <printf>
      exit(0);
     8db:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     8e2:	e8 fb 3c 00 00       	call   45e2 <exit>
     8e7:	83 c4 10             	add    $0x10,%esp
    if(((int*)buf)[0] != n){
     8ea:	a1 00 93 00 00       	mov    0x9300,%eax
     8ef:	39 c3                	cmp    %eax,%ebx
     8f1:	74 21                	je     914 <writetest1+0x114>
      printf(stdout, "read content of block %d is %d\n",
     8f3:	50                   	push   %eax
     8f4:	53                   	push   %ebx
     8f5:	68 e0 5a 00 00       	push   $0x5ae0
     8fa:	ff 35 20 6b 00 00    	pushl  0x6b20
     900:	e8 2b 3e 00 00       	call   4730 <printf>
      exit(0);
     905:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     90c:	e8 d1 3c 00 00       	call   45e2 <exit>
     911:	83 c4 10             	add    $0x10,%esp
    n++;
     914:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     917:	83 ec 04             	sub    $0x4,%esp
     91a:	68 00 02 00 00       	push   $0x200
     91f:	68 00 93 00 00       	push   $0x9300
     924:	56                   	push   %esi
     925:	e8 d0 3c 00 00       	call   45fa <read>
    if(i == 0){
     92a:	83 c4 10             	add    $0x10,%esp
     92d:	85 c0                	test   %eax,%eax
     92f:	75 8f                	jne    8c0 <writetest1+0xc0>
      if(n == MAXFILE - 1){
     931:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     937:	0f 84 ae 00 00 00    	je     9eb <writetest1+0x1eb>
  close(fd);
     93d:	83 ec 0c             	sub    $0xc,%esp
     940:	56                   	push   %esi
     941:	e8 c4 3c 00 00       	call   460a <close>
  if(unlink("big") < 0){
     946:	c7 04 24 df 4c 00 00 	movl   $0x4cdf,(%esp)
     94d:	e8 e0 3c 00 00       	call   4632 <unlink>
     952:	83 c4 10             	add    $0x10,%esp
     955:	85 c0                	test   %eax,%eax
     957:	78 6b                	js     9c4 <writetest1+0x1c4>
  printf(stdout, "big files ok\n");
     959:	83 ec 08             	sub    $0x8,%esp
     95c:	68 06 4d 00 00       	push   $0x4d06
     961:	ff 35 20 6b 00 00    	pushl  0x6b20
     967:	e8 c4 3d 00 00       	call   4730 <printf>
}
     96c:	83 c4 10             	add    $0x10,%esp
     96f:	8d 65 f8             	lea    -0x8(%ebp),%esp
     972:	5b                   	pop    %ebx
     973:	5e                   	pop    %esi
     974:	5d                   	pop    %ebp
     975:	c3                   	ret    
    printf(stdout, "error: open big failed!\n");
     976:	83 ec 08             	sub    $0x8,%esp
     979:	68 ad 4c 00 00       	push   $0x4cad
     97e:	ff 35 20 6b 00 00    	pushl  0x6b20
     984:	e8 a7 3d 00 00       	call   4730 <printf>
    exit(0);
     989:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     990:	e8 4d 3c 00 00       	call   45e2 <exit>
     995:	83 c4 10             	add    $0x10,%esp
     998:	e9 18 ff ff ff       	jmp    8b5 <writetest1+0xb5>
    printf(stdout, "error: creat big failed!\n");
     99d:	83 ec 08             	sub    $0x8,%esp
     9a0:	68 75 4c 00 00       	push   $0x4c75
     9a5:	ff 35 20 6b 00 00    	pushl  0x6b20
     9ab:	e8 80 3d 00 00       	call   4730 <printf>
    exit(0);
     9b0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9b7:	e8 26 3c 00 00       	call   45e2 <exit>
     9bc:	83 c4 10             	add    $0x10,%esp
     9bf:	e9 72 fe ff ff       	jmp    836 <writetest1+0x36>
    printf(stdout, "unlink big failed\n");
     9c4:	83 ec 08             	sub    $0x8,%esp
     9c7:	68 f3 4c 00 00       	push   $0x4cf3
     9cc:	ff 35 20 6b 00 00    	pushl  0x6b20
     9d2:	e8 59 3d 00 00       	call   4730 <printf>
    exit(0);
     9d7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     9de:	e8 ff 3b 00 00       	call   45e2 <exit>
     9e3:	83 c4 10             	add    $0x10,%esp
     9e6:	e9 6e ff ff ff       	jmp    959 <writetest1+0x159>
        printf(stdout, "read only %d blocks from big", n);
     9eb:	83 ec 04             	sub    $0x4,%esp
     9ee:	68 8b 00 00 00       	push   $0x8b
     9f3:	68 c6 4c 00 00       	push   $0x4cc6
     9f8:	ff 35 20 6b 00 00    	pushl  0x6b20
     9fe:	e8 2d 3d 00 00       	call   4730 <printf>
        exit(0);
     a03:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     a0a:	e8 d3 3b 00 00       	call   45e2 <exit>
     a0f:	83 c4 10             	add    $0x10,%esp
     a12:	e9 26 ff ff ff       	jmp    93d <writetest1+0x13d>
     a17:	89 f6                	mov    %esi,%esi
     a19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a20 <createtest>:
{
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	53                   	push   %ebx
  name[2] = '\0';
     a24:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     a29:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     a2c:	68 00 5b 00 00       	push   $0x5b00
     a31:	ff 35 20 6b 00 00    	pushl  0x6b20
     a37:	e8 f4 3c 00 00       	call   4730 <printf>
  name[0] = 'a';
     a3c:	c6 05 00 b3 00 00 61 	movb   $0x61,0xb300
  name[2] = '\0';
     a43:	c6 05 02 b3 00 00 00 	movb   $0x0,0xb302
     a4a:	83 c4 10             	add    $0x10,%esp
     a4d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
     a50:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
     a53:	88 1d 01 b3 00 00    	mov    %bl,0xb301
     a59:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     a5c:	68 02 02 00 00       	push   $0x202
     a61:	68 00 b3 00 00       	push   $0xb300
     a66:	e8 b7 3b 00 00       	call   4622 <open>
    close(fd);
     a6b:	89 04 24             	mov    %eax,(%esp)
     a6e:	e8 97 3b 00 00       	call   460a <close>
  for(i = 0; i < 52; i++){
     a73:	83 c4 10             	add    $0x10,%esp
     a76:	80 fb 64             	cmp    $0x64,%bl
     a79:	75 d5                	jne    a50 <createtest+0x30>
  name[0] = 'a';
     a7b:	c6 05 00 b3 00 00 61 	movb   $0x61,0xb300
  name[2] = '\0';
     a82:	c6 05 02 b3 00 00 00 	movb   $0x0,0xb302
     a89:	bb 30 00 00 00       	mov    $0x30,%ebx
     a8e:	66 90                	xchg   %ax,%ax
    unlink(name);
     a90:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
     a93:	88 1d 01 b3 00 00    	mov    %bl,0xb301
     a99:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     a9c:	68 00 b3 00 00       	push   $0xb300
     aa1:	e8 8c 3b 00 00       	call   4632 <unlink>
  for(i = 0; i < 52; i++){
     aa6:	83 c4 10             	add    $0x10,%esp
     aa9:	80 fb 64             	cmp    $0x64,%bl
     aac:	75 e2                	jne    a90 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     aae:	83 ec 08             	sub    $0x8,%esp
     ab1:	68 28 5b 00 00       	push   $0x5b28
     ab6:	ff 35 20 6b 00 00    	pushl  0x6b20
     abc:	e8 6f 3c 00 00       	call   4730 <printf>
}
     ac1:	83 c4 10             	add    $0x10,%esp
     ac4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     ac7:	c9                   	leave  
     ac8:	c3                   	ret    
     ac9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ad0 <dirtest>:
{
     ad0:	55                   	push   %ebp
     ad1:	89 e5                	mov    %esp,%ebp
     ad3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     ad6:	68 14 4d 00 00       	push   $0x4d14
     adb:	ff 35 20 6b 00 00    	pushl  0x6b20
     ae1:	e8 4a 3c 00 00       	call   4730 <printf>
  if(mkdir("dir0") < 0){
     ae6:	c7 04 24 20 4d 00 00 	movl   $0x4d20,(%esp)
     aed:	e8 58 3b 00 00       	call   464a <mkdir>
     af2:	83 c4 10             	add    $0x10,%esp
     af5:	85 c0                	test   %eax,%eax
     af7:	0f 88 8b 00 00 00    	js     b88 <dirtest+0xb8>
  if(chdir("dir0") < 0){
     afd:	83 ec 0c             	sub    $0xc,%esp
     b00:	68 20 4d 00 00       	push   $0x4d20
     b05:	e8 48 3b 00 00       	call   4652 <chdir>
     b0a:	83 c4 10             	add    $0x10,%esp
     b0d:	85 c0                	test   %eax,%eax
     b0f:	0f 88 9b 00 00 00    	js     bb0 <dirtest+0xe0>
  if(chdir("..") < 0){
     b15:	83 ec 0c             	sub    $0xc,%esp
     b18:	68 c5 52 00 00       	push   $0x52c5
     b1d:	e8 30 3b 00 00       	call   4652 <chdir>
     b22:	83 c4 10             	add    $0x10,%esp
     b25:	85 c0                	test   %eax,%eax
     b27:	0f 88 b3 00 00 00    	js     be0 <dirtest+0x110>
  if(unlink("dir0") < 0){
     b2d:	83 ec 0c             	sub    $0xc,%esp
     b30:	68 20 4d 00 00       	push   $0x4d20
     b35:	e8 f8 3a 00 00       	call   4632 <unlink>
     b3a:	83 c4 10             	add    $0x10,%esp
     b3d:	85 c0                	test   %eax,%eax
     b3f:	78 1f                	js     b60 <dirtest+0x90>
  printf(stdout, "mkdir test ok\n");
     b41:	83 ec 08             	sub    $0x8,%esp
     b44:	68 5d 4d 00 00       	push   $0x4d5d
     b49:	ff 35 20 6b 00 00    	pushl  0x6b20
     b4f:	e8 dc 3b 00 00       	call   4730 <printf>
}
     b54:	83 c4 10             	add    $0x10,%esp
     b57:	c9                   	leave  
     b58:	c3                   	ret    
     b59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "unlink dir0 failed\n");
     b60:	83 ec 08             	sub    $0x8,%esp
     b63:	68 49 4d 00 00       	push   $0x4d49
     b68:	ff 35 20 6b 00 00    	pushl  0x6b20
     b6e:	e8 bd 3b 00 00       	call   4730 <printf>
    exit(0);
     b73:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b7a:	e8 63 3a 00 00       	call   45e2 <exit>
     b7f:	83 c4 10             	add    $0x10,%esp
     b82:	eb bd                	jmp    b41 <dirtest+0x71>
     b84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(stdout, "mkdir failed\n");
     b88:	83 ec 08             	sub    $0x8,%esp
     b8b:	68 50 4a 00 00       	push   $0x4a50
     b90:	ff 35 20 6b 00 00    	pushl  0x6b20
     b96:	e8 95 3b 00 00       	call   4730 <printf>
    exit(0);
     b9b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ba2:	e8 3b 3a 00 00       	call   45e2 <exit>
     ba7:	83 c4 10             	add    $0x10,%esp
     baa:	e9 4e ff ff ff       	jmp    afd <dirtest+0x2d>
     baf:	90                   	nop
    printf(stdout, "chdir dir0 failed\n");
     bb0:	83 ec 08             	sub    $0x8,%esp
     bb3:	68 25 4d 00 00       	push   $0x4d25
     bb8:	ff 35 20 6b 00 00    	pushl  0x6b20
     bbe:	e8 6d 3b 00 00       	call   4730 <printf>
    exit(0);
     bc3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bca:	e8 13 3a 00 00       	call   45e2 <exit>
     bcf:	83 c4 10             	add    $0x10,%esp
     bd2:	e9 3e ff ff ff       	jmp    b15 <dirtest+0x45>
     bd7:	89 f6                	mov    %esi,%esi
     bd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(stdout, "chdir .. failed\n");
     be0:	83 ec 08             	sub    $0x8,%esp
     be3:	68 38 4d 00 00       	push   $0x4d38
     be8:	ff 35 20 6b 00 00    	pushl  0x6b20
     bee:	e8 3d 3b 00 00       	call   4730 <printf>
    exit(0);
     bf3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     bfa:	e8 e3 39 00 00       	call   45e2 <exit>
     bff:	83 c4 10             	add    $0x10,%esp
     c02:	e9 26 ff ff ff       	jmp    b2d <dirtest+0x5d>
     c07:	89 f6                	mov    %esi,%esi
     c09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c10 <exectest>:
{
     c10:	55                   	push   %ebp
     c11:	89 e5                	mov    %esp,%ebp
     c13:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     c16:	68 6c 4d 00 00       	push   $0x4d6c
     c1b:	ff 35 20 6b 00 00    	pushl  0x6b20
     c21:	e8 0a 3b 00 00       	call   4730 <printf>
  if(exec("echo", echoargv) < 0){
     c26:	58                   	pop    %eax
     c27:	5a                   	pop    %edx
     c28:	68 24 6b 00 00       	push   $0x6b24
     c2d:	68 35 4b 00 00       	push   $0x4b35
     c32:	e8 e3 39 00 00       	call   461a <exec>
     c37:	83 c4 10             	add    $0x10,%esp
     c3a:	85 c0                	test   %eax,%eax
     c3c:	78 02                	js     c40 <exectest+0x30>
}
     c3e:	c9                   	leave  
     c3f:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     c40:	83 ec 08             	sub    $0x8,%esp
     c43:	68 77 4d 00 00       	push   $0x4d77
     c48:	ff 35 20 6b 00 00    	pushl  0x6b20
     c4e:	e8 dd 3a 00 00       	call   4730 <printf>
    exit(0);
     c53:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c5a:	e8 83 39 00 00       	call   45e2 <exit>
     c5f:	83 c4 10             	add    $0x10,%esp
}
     c62:	c9                   	leave  
     c63:	c3                   	ret    
     c64:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c6a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000c70 <pipe1>:
{
     c70:	55                   	push   %ebp
     c71:	89 e5                	mov    %esp,%ebp
     c73:	57                   	push   %edi
     c74:	56                   	push   %esi
     c75:	53                   	push   %ebx
  if(pipe(fds) != 0){
     c76:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     c79:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
     c7c:	50                   	push   %eax
     c7d:	e8 70 39 00 00       	call   45f2 <pipe>
     c82:	83 c4 10             	add    $0x10,%esp
     c85:	85 c0                	test   %eax,%eax
     c87:	0f 85 37 01 00 00    	jne    dc4 <pipe1+0x154>
  pid = fork();
     c8d:	e8 48 39 00 00       	call   45da <fork>
  if(pid == 0){
     c92:	83 f8 00             	cmp    $0x0,%eax
  pid = fork();
     c95:	89 c3                	mov    %eax,%ebx
  if(pid == 0){
     c97:	0f 84 8c 00 00 00    	je     d29 <pipe1+0xb9>
  } else if(pid > 0){
     c9d:	0f 8e 44 01 00 00    	jle    de7 <pipe1+0x177>
    close(fds[1]);
     ca3:	83 ec 0c             	sub    $0xc,%esp
     ca6:	ff 75 e4             	pushl  -0x1c(%ebp)
    cc = 1;
     ca9:	bf 01 00 00 00       	mov    $0x1,%edi
  seq = 0;
     cae:	31 db                	xor    %ebx,%ebx
    close(fds[1]);
     cb0:	e8 55 39 00 00       	call   460a <close>
    while((n = read(fds[0], buf, cc)) > 0){
     cb5:	83 c4 10             	add    $0x10,%esp
    total = 0;
     cb8:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     cbf:	83 ec 04             	sub    $0x4,%esp
     cc2:	57                   	push   %edi
     cc3:	68 00 93 00 00       	push   $0x9300
     cc8:	ff 75 e0             	pushl  -0x20(%ebp)
     ccb:	e8 2a 39 00 00       	call   45fa <read>
     cd0:	83 c4 10             	add    $0x10,%esp
     cd3:	85 c0                	test   %eax,%eax
     cd5:	0f 8e 2c 01 00 00    	jle    e07 <pipe1+0x197>
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     cdb:	89 d9                	mov    %ebx,%ecx
     cdd:	8d 34 18             	lea    (%eax,%ebx,1),%esi
     ce0:	f7 d9                	neg    %ecx
     ce2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     ce8:	38 9c 0b 00 93 00 00 	cmp    %bl,0x9300(%ebx,%ecx,1)
     cef:	8d 53 01             	lea    0x1(%ebx),%edx
     cf2:	75 1b                	jne    d0f <pipe1+0x9f>
      for(i = 0; i < n; i++){
     cf4:	39 f2                	cmp    %esi,%edx
     cf6:	89 d3                	mov    %edx,%ebx
     cf8:	75 ee                	jne    ce8 <pipe1+0x78>
      cc = cc * 2;
     cfa:	01 ff                	add    %edi,%edi
      total += n;
     cfc:	01 45 d4             	add    %eax,-0x2c(%ebp)
     cff:	b8 00 20 00 00       	mov    $0x2000,%eax
     d04:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
     d0a:	0f 4f f8             	cmovg  %eax,%edi
     d0d:	eb b0                	jmp    cbf <pipe1+0x4f>
          printf(1, "pipe1 oops 2\n");
     d0f:	83 ec 08             	sub    $0x8,%esp
     d12:	68 a6 4d 00 00       	push   $0x4da6
     d17:	6a 01                	push   $0x1
     d19:	e8 12 3a 00 00       	call   4730 <printf>
          return;
     d1e:	83 c4 10             	add    $0x10,%esp
}
     d21:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d24:	5b                   	pop    %ebx
     d25:	5e                   	pop    %esi
     d26:	5f                   	pop    %edi
     d27:	5d                   	pop    %ebp
     d28:	c3                   	ret    
    close(fds[0]);
     d29:	83 ec 0c             	sub    $0xc,%esp
     d2c:	ff 75 e0             	pushl  -0x20(%ebp)
     d2f:	e8 d6 38 00 00       	call   460a <close>
     d34:	83 c4 10             	add    $0x10,%esp
        buf[i] = seq++;
     d37:	89 da                	mov    %ebx,%edx
     d39:	8d b3 09 04 00 00    	lea    0x409(%ebx),%esi
     d3f:	f7 da                	neg    %edx
     d41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d48:	88 9c 1a 00 93 00 00 	mov    %bl,0x9300(%edx,%ebx,1)
     d4f:	83 c3 01             	add    $0x1,%ebx
      for(i = 0; i < 1033; i++)
     d52:	39 f3                	cmp    %esi,%ebx
     d54:	75 f2                	jne    d48 <pipe1+0xd8>
      if(write(fds[1], buf, 1033) != 1033){
     d56:	83 ec 04             	sub    $0x4,%esp
     d59:	89 f3                	mov    %esi,%ebx
     d5b:	68 09 04 00 00       	push   $0x409
     d60:	68 00 93 00 00       	push   $0x9300
     d65:	ff 75 e4             	pushl  -0x1c(%ebp)
     d68:	e8 95 38 00 00       	call   4602 <write>
     d6d:	83 c4 10             	add    $0x10,%esp
     d70:	3d 09 04 00 00       	cmp    $0x409,%eax
     d75:	74 1e                	je     d95 <pipe1+0x125>
        printf(1, "pipe1 oops 1\n");
     d77:	83 ec 08             	sub    $0x8,%esp
     d7a:	68 98 4d 00 00       	push   $0x4d98
     d7f:	6a 01                	push   $0x1
     d81:	e8 aa 39 00 00       	call   4730 <printf>
        exit(0);
     d86:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d8d:	e8 50 38 00 00       	call   45e2 <exit>
     d92:	83 c4 10             	add    $0x10,%esp
    for(n = 0; n < 5; n++){
     d95:	81 fe 2d 14 00 00    	cmp    $0x142d,%esi
     d9b:	75 9a                	jne    d37 <pipe1+0xc7>
    exit(0);
     d9d:	83 ec 0c             	sub    $0xc,%esp
     da0:	6a 00                	push   $0x0
     da2:	e8 3b 38 00 00       	call   45e2 <exit>
     da7:	83 c4 10             	add    $0x10,%esp
  printf(1, "pipe1 ok\n");
     daa:	83 ec 08             	sub    $0x8,%esp
     dad:	68 da 4d 00 00       	push   $0x4dda
     db2:	6a 01                	push   $0x1
     db4:	e8 77 39 00 00       	call   4730 <printf>
     db9:	83 c4 10             	add    $0x10,%esp
}
     dbc:	8d 65 f4             	lea    -0xc(%ebp),%esp
     dbf:	5b                   	pop    %ebx
     dc0:	5e                   	pop    %esi
     dc1:	5f                   	pop    %edi
     dc2:	5d                   	pop    %ebp
     dc3:	c3                   	ret    
    printf(1, "pipe() failed\n");
     dc4:	83 ec 08             	sub    $0x8,%esp
     dc7:	68 89 4d 00 00       	push   $0x4d89
     dcc:	6a 01                	push   $0x1
     dce:	e8 5d 39 00 00       	call   4730 <printf>
    exit(0);
     dd3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     dda:	e8 03 38 00 00       	call   45e2 <exit>
     ddf:	83 c4 10             	add    $0x10,%esp
     de2:	e9 a6 fe ff ff       	jmp    c8d <pipe1+0x1d>
    printf(1, "fork() failed\n");
     de7:	83 ec 08             	sub    $0x8,%esp
     dea:	68 cb 4d 00 00       	push   $0x4dcb
     def:	6a 01                	push   $0x1
     df1:	e8 3a 39 00 00       	call   4730 <printf>
    exit(0);
     df6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     dfd:	e8 e0 37 00 00       	call   45e2 <exit>
     e02:	83 c4 10             	add    $0x10,%esp
     e05:	eb a3                	jmp    daa <pipe1+0x13a>
    if(total != 5 * 1033){
     e07:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     e0a:	3d 2d 14 00 00       	cmp    $0x142d,%eax
     e0f:	74 1f                	je     e30 <pipe1+0x1c0>
      printf(1, "pipe1 oops 3 total %d\n", total);
     e11:	83 ec 04             	sub    $0x4,%esp
     e14:	50                   	push   %eax
     e15:	68 b4 4d 00 00       	push   $0x4db4
     e1a:	6a 01                	push   $0x1
     e1c:	e8 0f 39 00 00       	call   4730 <printf>
      exit(0);
     e21:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e28:	e8 b5 37 00 00       	call   45e2 <exit>
     e2d:	83 c4 10             	add    $0x10,%esp
    close(fds[0]);
     e30:	83 ec 0c             	sub    $0xc,%esp
     e33:	ff 75 e0             	pushl  -0x20(%ebp)
     e36:	e8 cf 37 00 00       	call   460a <close>
    wait(&child_status);
     e3b:	8d 45 dc             	lea    -0x24(%ebp),%eax
     e3e:	89 04 24             	mov    %eax,(%esp)
     e41:	e8 a4 37 00 00       	call   45ea <wait>
     e46:	83 c4 10             	add    $0x10,%esp
     e49:	e9 5c ff ff ff       	jmp    daa <pipe1+0x13a>
     e4e:	66 90                	xchg   %ax,%ax

00000e50 <preempt>:
{
     e50:	55                   	push   %ebp
     e51:	89 e5                	mov    %esp,%ebp
     e53:	57                   	push   %edi
     e54:	56                   	push   %esi
     e55:	53                   	push   %ebx
     e56:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
     e59:	68 e4 4d 00 00       	push   $0x4de4
     e5e:	6a 01                	push   $0x1
     e60:	e8 cb 38 00 00       	call   4730 <printf>
  pid1 = fork();
     e65:	e8 70 37 00 00       	call   45da <fork>
  if(pid1 == 0)
     e6a:	83 c4 10             	add    $0x10,%esp
     e6d:	85 c0                	test   %eax,%eax
     e6f:	75 02                	jne    e73 <preempt+0x23>
     e71:	eb fe                	jmp    e71 <preempt+0x21>
     e73:	89 c7                	mov    %eax,%edi
  pid2 = fork();
     e75:	e8 60 37 00 00       	call   45da <fork>
  if(pid2 == 0)
     e7a:	85 c0                	test   %eax,%eax
  pid2 = fork();
     e7c:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     e7e:	75 02                	jne    e82 <preempt+0x32>
     e80:	eb fe                	jmp    e80 <preempt+0x30>
  pipe(pfds);
     e82:	8d 45 e0             	lea    -0x20(%ebp),%eax
     e85:	83 ec 0c             	sub    $0xc,%esp
     e88:	50                   	push   %eax
     e89:	e8 64 37 00 00       	call   45f2 <pipe>
  pid3 = fork();
     e8e:	e8 47 37 00 00       	call   45da <fork>
  if(pid3 == 0){
     e93:	83 c4 10             	add    $0x10,%esp
     e96:	85 c0                	test   %eax,%eax
  pid3 = fork();
     e98:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     e9a:	75 47                	jne    ee3 <preempt+0x93>
    close(pfds[0]);
     e9c:	83 ec 0c             	sub    $0xc,%esp
     e9f:	ff 75 e0             	pushl  -0x20(%ebp)
     ea2:	e8 63 37 00 00       	call   460a <close>
    if(write(pfds[1], "x", 1) != 1)
     ea7:	83 c4 0c             	add    $0xc,%esp
     eaa:	6a 01                	push   $0x1
     eac:	68 a9 53 00 00       	push   $0x53a9
     eb1:	ff 75 e4             	pushl  -0x1c(%ebp)
     eb4:	e8 49 37 00 00       	call   4602 <write>
     eb9:	83 c4 10             	add    $0x10,%esp
     ebc:	83 f8 01             	cmp    $0x1,%eax
     ebf:	74 12                	je     ed3 <preempt+0x83>
      printf(1, "preempt write error");
     ec1:	83 ec 08             	sub    $0x8,%esp
     ec4:	68 ee 4d 00 00       	push   $0x4dee
     ec9:	6a 01                	push   $0x1
     ecb:	e8 60 38 00 00       	call   4730 <printf>
     ed0:	83 c4 10             	add    $0x10,%esp
    close(pfds[1]);
     ed3:	83 ec 0c             	sub    $0xc,%esp
     ed6:	ff 75 e4             	pushl  -0x1c(%ebp)
     ed9:	e8 2c 37 00 00       	call   460a <close>
     ede:	83 c4 10             	add    $0x10,%esp
     ee1:	eb fe                	jmp    ee1 <preempt+0x91>
  close(pfds[1]);
     ee3:	83 ec 0c             	sub    $0xc,%esp
     ee6:	ff 75 e4             	pushl  -0x1c(%ebp)
     ee9:	e8 1c 37 00 00       	call   460a <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     eee:	83 c4 0c             	add    $0xc,%esp
     ef1:	68 00 20 00 00       	push   $0x2000
     ef6:	68 00 93 00 00       	push   $0x9300
     efb:	ff 75 e0             	pushl  -0x20(%ebp)
     efe:	e8 f7 36 00 00       	call   45fa <read>
     f03:	83 c4 10             	add    $0x10,%esp
     f06:	83 f8 01             	cmp    $0x1,%eax
     f09:	74 1a                	je     f25 <preempt+0xd5>
    printf(1, "preempt read error");
     f0b:	83 ec 08             	sub    $0x8,%esp
     f0e:	68 02 4e 00 00       	push   $0x4e02
     f13:	6a 01                	push   $0x1
     f15:	e8 16 38 00 00       	call   4730 <printf>
    return;
     f1a:	83 c4 10             	add    $0x10,%esp
}
     f1d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f20:	5b                   	pop    %ebx
     f21:	5e                   	pop    %esi
     f22:	5f                   	pop    %edi
     f23:	5d                   	pop    %ebp
     f24:	c3                   	ret    
  close(pfds[0]);
     f25:	83 ec 0c             	sub    $0xc,%esp
     f28:	ff 75 e0             	pushl  -0x20(%ebp)
     f2b:	e8 da 36 00 00       	call   460a <close>
  printf(1, "kill... ");
     f30:	58                   	pop    %eax
     f31:	5a                   	pop    %edx
     f32:	68 15 4e 00 00       	push   $0x4e15
     f37:	6a 01                	push   $0x1
     f39:	e8 f2 37 00 00       	call   4730 <printf>
  kill(pid1);
     f3e:	89 3c 24             	mov    %edi,(%esp)
     f41:	e8 cc 36 00 00       	call   4612 <kill>
  kill(pid2);
     f46:	89 34 24             	mov    %esi,(%esp)
     f49:	e8 c4 36 00 00       	call   4612 <kill>
  kill(pid3);
     f4e:	89 1c 24             	mov    %ebx,(%esp)
     f51:	e8 bc 36 00 00       	call   4612 <kill>
  printf(1, "wait... ");
     f56:	59                   	pop    %ecx
     f57:	5b                   	pop    %ebx
  wait(&child_status);
     f58:	8d 5d dc             	lea    -0x24(%ebp),%ebx
  printf(1, "wait... ");
     f5b:	68 1e 4e 00 00       	push   $0x4e1e
     f60:	6a 01                	push   $0x1
     f62:	e8 c9 37 00 00       	call   4730 <printf>
  wait(&child_status);
     f67:	89 1c 24             	mov    %ebx,(%esp)
     f6a:	e8 7b 36 00 00       	call   45ea <wait>
  wait(&child_status);
     f6f:	89 1c 24             	mov    %ebx,(%esp)
     f72:	e8 73 36 00 00       	call   45ea <wait>
  wait(&child_status);
     f77:	89 1c 24             	mov    %ebx,(%esp)
     f7a:	e8 6b 36 00 00       	call   45ea <wait>
  printf(1, "preempt ok\n");
     f7f:	5e                   	pop    %esi
     f80:	5f                   	pop    %edi
     f81:	68 27 4e 00 00       	push   $0x4e27
     f86:	6a 01                	push   $0x1
     f88:	e8 a3 37 00 00       	call   4730 <printf>
     f8d:	83 c4 10             	add    $0x10,%esp
     f90:	eb 8b                	jmp    f1d <preempt+0xcd>
     f92:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000fa0 <exitwait>:
{
     fa0:	55                   	push   %ebp
     fa1:	89 e5                	mov    %esp,%ebp
     fa3:	57                   	push   %edi
     fa4:	56                   	push   %esi
     fa5:	53                   	push   %ebx
      if(wait(&child_status) != pid){
     fa6:	8d 7d e4             	lea    -0x1c(%ebp),%edi
{
     fa9:	bb 64 00 00 00       	mov    $0x64,%ebx
     fae:	83 ec 1c             	sub    $0x1c,%esp
     fb1:	eb 1a                	jmp    fcd <exitwait+0x2d>
     fb3:	90                   	nop
     fb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(wait(&child_status) != pid){
     fb8:	83 ec 0c             	sub    $0xc,%esp
     fbb:	57                   	push   %edi
     fbc:	e8 29 36 00 00       	call   45ea <wait>
     fc1:	83 c4 10             	add    $0x10,%esp
     fc4:	39 c6                	cmp    %eax,%esi
     fc6:	75 68                	jne    1030 <exitwait+0x90>
  for(i = 0; i < 100; i++){
     fc8:	83 eb 01             	sub    $0x1,%ebx
     fcb:	74 1f                	je     fec <exitwait+0x4c>
    pid = fork();
     fcd:	e8 08 36 00 00       	call   45da <fork>
    if(pid < 0){
     fd2:	85 c0                	test   %eax,%eax
    pid = fork();
     fd4:	89 c6                	mov    %eax,%esi
    if(pid < 0){
     fd6:	78 38                	js     1010 <exitwait+0x70>
    if(pid){
     fd8:	75 de                	jne    fb8 <exitwait+0x18>
      exit(0);
     fda:	83 ec 0c             	sub    $0xc,%esp
     fdd:	6a 00                	push   $0x0
     fdf:	e8 fe 35 00 00       	call   45e2 <exit>
     fe4:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
     fe7:	83 eb 01             	sub    $0x1,%ebx
     fea:	75 e1                	jne    fcd <exitwait+0x2d>
  printf(1, "exitwait ok\n");
     fec:	83 ec 08             	sub    $0x8,%esp
     fef:	68 43 4e 00 00       	push   $0x4e43
     ff4:	6a 01                	push   $0x1
     ff6:	e8 35 37 00 00       	call   4730 <printf>
     ffb:	83 c4 10             	add    $0x10,%esp
}
     ffe:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1001:	5b                   	pop    %ebx
    1002:	5e                   	pop    %esi
    1003:	5f                   	pop    %edi
    1004:	5d                   	pop    %ebp
    1005:	c3                   	ret    
    1006:	8d 76 00             	lea    0x0(%esi),%esi
    1009:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(1, "fork failed\n");
    1010:	83 ec 08             	sub    $0x8,%esp
    1013:	68 91 59 00 00       	push   $0x5991
    1018:	6a 01                	push   $0x1
    101a:	e8 11 37 00 00       	call   4730 <printf>
      return;
    101f:	83 c4 10             	add    $0x10,%esp
}
    1022:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1025:	5b                   	pop    %ebx
    1026:	5e                   	pop    %esi
    1027:	5f                   	pop    %edi
    1028:	5d                   	pop    %ebp
    1029:	c3                   	ret    
    102a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printf(1, "wait wrong pid\n");
    1030:	83 ec 08             	sub    $0x8,%esp
    1033:	68 33 4e 00 00       	push   $0x4e33
    1038:	6a 01                	push   $0x1
    103a:	e8 f1 36 00 00       	call   4730 <printf>
        return;
    103f:	83 c4 10             	add    $0x10,%esp
}
    1042:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1045:	5b                   	pop    %ebx
    1046:	5e                   	pop    %esi
    1047:	5f                   	pop    %edi
    1048:	5d                   	pop    %ebp
    1049:	c3                   	ret    
    104a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001050 <mem>:
{
    1050:	55                   	push   %ebp
    1051:	89 e5                	mov    %esp,%ebp
    1053:	57                   	push   %edi
    1054:	56                   	push   %esi
    1055:	53                   	push   %ebx
    1056:	31 db                	xor    %ebx,%ebx
    1058:	83 ec 24             	sub    $0x24,%esp
  printf(1, "mem test\n");
    105b:	68 50 4e 00 00       	push   $0x4e50
    1060:	6a 01                	push   $0x1
    1062:	e8 c9 36 00 00       	call   4730 <printf>
  ppid = getpid();
    1067:	e8 f6 35 00 00       	call   4662 <getpid>
    106c:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
    106e:	e8 67 35 00 00       	call   45da <fork>
    1073:	83 c4 10             	add    $0x10,%esp
    1076:	85 c0                	test   %eax,%eax
    1078:	74 0a                	je     1084 <mem+0x34>
    107a:	e9 81 00 00 00       	jmp    1100 <mem+0xb0>
    107f:	90                   	nop
      *(char**)m2 = m1;
    1080:	89 18                	mov    %ebx,(%eax)
    1082:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
    1084:	83 ec 0c             	sub    $0xc,%esp
    1087:	68 11 27 00 00       	push   $0x2711
    108c:	e8 df 38 00 00       	call   4970 <malloc>
    1091:	83 c4 10             	add    $0x10,%esp
    1094:	85 c0                	test   %eax,%eax
    1096:	75 e8                	jne    1080 <mem+0x30>
    while(m1){
    1098:	85 db                	test   %ebx,%ebx
    109a:	74 18                	je     10b4 <mem+0x64>
    109c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
    10a0:	8b 3b                	mov    (%ebx),%edi
      free(m1);
    10a2:	83 ec 0c             	sub    $0xc,%esp
    10a5:	53                   	push   %ebx
    10a6:	89 fb                	mov    %edi,%ebx
    10a8:	e8 33 38 00 00       	call   48e0 <free>
    while(m1){
    10ad:	83 c4 10             	add    $0x10,%esp
    10b0:	85 db                	test   %ebx,%ebx
    10b2:	75 ec                	jne    10a0 <mem+0x50>
    m1 = malloc(1024*20);
    10b4:	83 ec 0c             	sub    $0xc,%esp
    10b7:	68 00 50 00 00       	push   $0x5000
    10bc:	e8 af 38 00 00       	call   4970 <malloc>
    if(m1 == 0){
    10c1:	83 c4 10             	add    $0x10,%esp
    10c4:	85 c0                	test   %eax,%eax
    m1 = malloc(1024*20);
    10c6:	89 c3                	mov    %eax,%ebx
    if(m1 == 0){
    10c8:	74 4d                	je     1117 <mem+0xc7>
    free(m1);
    10ca:	83 ec 0c             	sub    $0xc,%esp
    10cd:	53                   	push   %ebx
    10ce:	e8 0d 38 00 00       	call   48e0 <free>
    printf(1, "mem ok\n");
    10d3:	58                   	pop    %eax
    10d4:	5a                   	pop    %edx
    10d5:	68 74 4e 00 00       	push   $0x4e74
    10da:	6a 01                	push   $0x1
    10dc:	e8 4f 36 00 00       	call   4730 <printf>
    exit(0);
    10e1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    10e8:	e8 f5 34 00 00       	call   45e2 <exit>
    10ed:	83 c4 10             	add    $0x10,%esp
}
    10f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    10f3:	5b                   	pop    %ebx
    10f4:	5e                   	pop    %esi
    10f5:	5f                   	pop    %edi
    10f6:	5d                   	pop    %ebp
    10f7:	c3                   	ret    
    10f8:	90                   	nop
    10f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    wait(&child_status);
    1100:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1103:	83 ec 0c             	sub    $0xc,%esp
    1106:	50                   	push   %eax
    1107:	e8 de 34 00 00       	call   45ea <wait>
    110c:	83 c4 10             	add    $0x10,%esp
}
    110f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1112:	5b                   	pop    %ebx
    1113:	5e                   	pop    %esi
    1114:	5f                   	pop    %edi
    1115:	5d                   	pop    %ebp
    1116:	c3                   	ret    
      printf(1, "couldn't allocate mem?!!\n");
    1117:	83 ec 08             	sub    $0x8,%esp
    111a:	68 5a 4e 00 00       	push   $0x4e5a
    111f:	6a 01                	push   $0x1
    1121:	e8 0a 36 00 00       	call   4730 <printf>
      kill(ppid);
    1126:	89 34 24             	mov    %esi,(%esp)
    1129:	e8 e4 34 00 00       	call   4612 <kill>
      exit(0);
    112e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1135:	e8 a8 34 00 00       	call   45e2 <exit>
    113a:	83 c4 10             	add    $0x10,%esp
    113d:	eb 8b                	jmp    10ca <mem+0x7a>
    113f:	90                   	nop

00001140 <sharedfd>:
{
    1140:	55                   	push   %ebp
    1141:	89 e5                	mov    %esp,%ebp
    1143:	57                   	push   %edi
    1144:	56                   	push   %esi
    1145:	53                   	push   %ebx
    1146:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
    1149:	68 7c 4e 00 00       	push   $0x4e7c
    114e:	6a 01                	push   $0x1
    1150:	e8 db 35 00 00       	call   4730 <printf>
  unlink("sharedfd");
    1155:	c7 04 24 8b 4e 00 00 	movl   $0x4e8b,(%esp)
    115c:	e8 d1 34 00 00       	call   4632 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
    1161:	5b                   	pop    %ebx
    1162:	5e                   	pop    %esi
    1163:	68 02 02 00 00       	push   $0x202
    1168:	68 8b 4e 00 00       	push   $0x4e8b
    116d:	e8 b0 34 00 00       	call   4622 <open>
  if(fd < 0){
    1172:	83 c4 10             	add    $0x10,%esp
    1175:	85 c0                	test   %eax,%eax
    1177:	0f 88 5d 01 00 00    	js     12da <sharedfd+0x19a>
    117d:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
    117f:	8d 75 de             	lea    -0x22(%ebp),%esi
    1182:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
    1187:	e8 4e 34 00 00       	call   45da <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
    118c:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
    118f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1192:	19 c0                	sbb    %eax,%eax
    1194:	83 ec 04             	sub    $0x4,%esp
    1197:	83 e0 f3             	and    $0xfffffff3,%eax
    119a:	6a 0a                	push   $0xa
    119c:	83 c0 70             	add    $0x70,%eax
    119f:	50                   	push   %eax
    11a0:	56                   	push   %esi
    11a1:	e8 aa 32 00 00       	call   4450 <memset>
    11a6:	83 c4 10             	add    $0x10,%esp
    11a9:	eb 0a                	jmp    11b5 <sharedfd+0x75>
    11ab:	90                   	nop
    11ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 1000; i++){
    11b0:	83 eb 01             	sub    $0x1,%ebx
    11b3:	74 26                	je     11db <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
    11b5:	83 ec 04             	sub    $0x4,%esp
    11b8:	6a 0a                	push   $0xa
    11ba:	56                   	push   %esi
    11bb:	57                   	push   %edi
    11bc:	e8 41 34 00 00       	call   4602 <write>
    11c1:	83 c4 10             	add    $0x10,%esp
    11c4:	83 f8 0a             	cmp    $0xa,%eax
    11c7:	74 e7                	je     11b0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
    11c9:	83 ec 08             	sub    $0x8,%esp
    11cc:	68 7c 5b 00 00       	push   $0x5b7c
    11d1:	6a 01                	push   $0x1
    11d3:	e8 58 35 00 00       	call   4730 <printf>
      break;
    11d8:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
    11db:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    11de:	85 c9                	test   %ecx,%ecx
    11e0:	74 7d                	je     125f <sharedfd+0x11f>
    wait(&child_status);
    11e2:	8d 45 d8             	lea    -0x28(%ebp),%eax
    11e5:	83 ec 0c             	sub    $0xc,%esp
    11e8:	50                   	push   %eax
    11e9:	e8 fc 33 00 00       	call   45ea <wait>
    11ee:	83 c4 10             	add    $0x10,%esp
  close(fd);
    11f1:	83 ec 0c             	sub    $0xc,%esp
    11f4:	31 db                	xor    %ebx,%ebx
    11f6:	57                   	push   %edi
    11f7:	8d 7d e8             	lea    -0x18(%ebp),%edi
    11fa:	e8 0b 34 00 00       	call   460a <close>
  fd = open("sharedfd", 0);
    11ff:	58                   	pop    %eax
    1200:	5a                   	pop    %edx
    1201:	6a 00                	push   $0x0
    1203:	68 8b 4e 00 00       	push   $0x4e8b
    1208:	e8 15 34 00 00       	call   4622 <open>
  if(fd < 0){
    120d:	83 c4 10             	add    $0x10,%esp
    1210:	31 d2                	xor    %edx,%edx
    1212:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
    1214:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
    1217:	0f 88 d7 00 00 00    	js     12f4 <sharedfd+0x1b4>
    121d:	8d 76 00             	lea    0x0(%esi),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
    1220:	83 ec 04             	sub    $0x4,%esp
    1223:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1226:	6a 0a                	push   $0xa
    1228:	56                   	push   %esi
    1229:	ff 75 d0             	pushl  -0x30(%ebp)
    122c:	e8 c9 33 00 00       	call   45fa <read>
    1231:	83 c4 10             	add    $0x10,%esp
    1234:	85 c0                	test   %eax,%eax
    1236:	7e 36                	jle    126e <sharedfd+0x12e>
    1238:	89 f0                	mov    %esi,%eax
    123a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    123d:	eb 13                	jmp    1252 <sharedfd+0x112>
    123f:	90                   	nop
        np++;
    1240:	80 f9 70             	cmp    $0x70,%cl
    1243:	0f 94 c1             	sete   %cl
    1246:	0f b6 c9             	movzbl %cl,%ecx
    1249:	01 cb                	add    %ecx,%ebx
    124b:	83 c0 01             	add    $0x1,%eax
    for(i = 0; i < sizeof(buf); i++){
    124e:	39 f8                	cmp    %edi,%eax
    1250:	74 ce                	je     1220 <sharedfd+0xe0>
      if(buf[i] == 'c')
    1252:	0f b6 08             	movzbl (%eax),%ecx
    1255:	80 f9 63             	cmp    $0x63,%cl
    1258:	75 e6                	jne    1240 <sharedfd+0x100>
        nc++;
    125a:	83 c2 01             	add    $0x1,%edx
    125d:	eb ec                	jmp    124b <sharedfd+0x10b>
    exit(0);
    125f:	83 ec 0c             	sub    $0xc,%esp
    1262:	6a 00                	push   $0x0
    1264:	e8 79 33 00 00       	call   45e2 <exit>
    1269:	83 c4 10             	add    $0x10,%esp
    126c:	eb 83                	jmp    11f1 <sharedfd+0xb1>
  close(fd);
    126e:	83 ec 0c             	sub    $0xc,%esp
    1271:	ff 75 d0             	pushl  -0x30(%ebp)
    1274:	e8 91 33 00 00       	call   460a <close>
  unlink("sharedfd");
    1279:	c7 04 24 8b 4e 00 00 	movl   $0x4e8b,(%esp)
    1280:	e8 ad 33 00 00       	call   4632 <unlink>
  if(nc == 10000 && np == 10000){
    1285:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1288:	83 c4 10             	add    $0x10,%esp
    128b:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1291:	75 22                	jne    12b5 <sharedfd+0x175>
    1293:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    1299:	75 1a                	jne    12b5 <sharedfd+0x175>
    printf(1, "sharedfd ok\n");
    129b:	83 ec 08             	sub    $0x8,%esp
    129e:	68 94 4e 00 00       	push   $0x4e94
    12a3:	6a 01                	push   $0x1
    12a5:	e8 86 34 00 00       	call   4730 <printf>
    12aa:	83 c4 10             	add    $0x10,%esp
}
    12ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12b0:	5b                   	pop    %ebx
    12b1:	5e                   	pop    %esi
    12b2:	5f                   	pop    %edi
    12b3:	5d                   	pop    %ebp
    12b4:	c3                   	ret    
    printf(1, "sharedfd oops %d %d\n", nc, np);
    12b5:	53                   	push   %ebx
    12b6:	52                   	push   %edx
    12b7:	68 a1 4e 00 00       	push   $0x4ea1
    12bc:	6a 01                	push   $0x1
    12be:	e8 6d 34 00 00       	call   4730 <printf>
    exit(0);
    12c3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    12ca:	e8 13 33 00 00       	call   45e2 <exit>
    12cf:	83 c4 10             	add    $0x10,%esp
}
    12d2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12d5:	5b                   	pop    %ebx
    12d6:	5e                   	pop    %esi
    12d7:	5f                   	pop    %edi
    12d8:	5d                   	pop    %ebp
    12d9:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
    12da:	83 ec 08             	sub    $0x8,%esp
    12dd:	68 50 5b 00 00       	push   $0x5b50
    12e2:	6a 01                	push   $0x1
    12e4:	e8 47 34 00 00       	call   4730 <printf>
    return;
    12e9:	83 c4 10             	add    $0x10,%esp
}
    12ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12ef:	5b                   	pop    %ebx
    12f0:	5e                   	pop    %esi
    12f1:	5f                   	pop    %edi
    12f2:	5d                   	pop    %ebp
    12f3:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    12f4:	83 ec 08             	sub    $0x8,%esp
    12f7:	68 9c 5b 00 00       	push   $0x5b9c
    12fc:	6a 01                	push   $0x1
    12fe:	e8 2d 34 00 00       	call   4730 <printf>
    return;
    1303:	83 c4 10             	add    $0x10,%esp
}
    1306:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1309:	5b                   	pop    %ebx
    130a:	5e                   	pop    %esi
    130b:	5f                   	pop    %edi
    130c:	5d                   	pop    %ebp
    130d:	c3                   	ret    
    130e:	66 90                	xchg   %ax,%ax

00001310 <fourfiles>:
{
    1310:	55                   	push   %ebp
    1311:	89 e5                	mov    %esp,%ebp
    1313:	57                   	push   %edi
    1314:	56                   	push   %esi
    1315:	53                   	push   %ebx
  printf(1, "fourfiles test\n");
    1316:	be 30 00 00 00       	mov    $0x30,%esi
    131b:	bb b6 4e 00 00       	mov    $0x4eb6,%ebx
{
    1320:	83 ec 44             	sub    $0x44,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    1323:	c7 45 d8 b6 4e 00 00 	movl   $0x4eb6,-0x28(%ebp)
    132a:	c7 45 dc ff 4f 00 00 	movl   $0x4fff,-0x24(%ebp)
  printf(1, "fourfiles test\n");
    1331:	68 bc 4e 00 00       	push   $0x4ebc
    1336:	6a 01                	push   $0x1
  char *names[] = { "f0", "f1", "f2", "f3" };
    1338:	c7 45 e0 03 50 00 00 	movl   $0x5003,-0x20(%ebp)
    133f:	c7 45 e4 b9 4e 00 00 	movl   $0x4eb9,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    1346:	e8 e5 33 00 00       	call   4730 <printf>
    134b:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    134e:	83 ec 0c             	sub    $0xc,%esp
    1351:	53                   	push   %ebx
    1352:	e8 db 32 00 00       	call   4632 <unlink>
    pid = fork();
    1357:	e8 7e 32 00 00       	call   45da <fork>
    if(pid < 0){
    135c:	83 c4 10             	add    $0x10,%esp
    135f:	85 c0                	test   %eax,%eax
    1361:	0f 88 c0 01 00 00    	js     1527 <fourfiles+0x217>
    if(pid == 0){
    1367:	74 15                	je     137e <fourfiles+0x6e>
    1369:	83 c6 01             	add    $0x1,%esi
  for(pi = 0; pi < 4; pi++){
    136c:	83 fe 34             	cmp    $0x34,%esi
    136f:	0f 84 99 00 00 00    	je     140e <fourfiles+0xfe>
    1375:	8b 9c b5 18 ff ff ff 	mov    -0xe8(%ebp,%esi,4),%ebx
    137c:	eb d0                	jmp    134e <fourfiles+0x3e>
      fd = open(fname, O_CREATE | O_RDWR);
    137e:	83 ec 08             	sub    $0x8,%esp
    1381:	68 02 02 00 00       	push   $0x202
    1386:	53                   	push   %ebx
    1387:	e8 96 32 00 00       	call   4622 <open>
      if(fd < 0){
    138c:	83 c4 10             	add    $0x10,%esp
    138f:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    1391:	89 c7                	mov    %eax,%edi
      if(fd < 0){
    1393:	0f 88 b1 01 00 00    	js     154a <fourfiles+0x23a>
      memset(buf, '0'+pi, 512);
    1399:	83 ec 04             	sub    $0x4,%esp
    139c:	bb 0c 00 00 00       	mov    $0xc,%ebx
    13a1:	68 00 02 00 00       	push   $0x200
    13a6:	56                   	push   %esi
    13a7:	68 00 93 00 00       	push   $0x9300
    13ac:	e8 9f 30 00 00       	call   4450 <memset>
    13b1:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    13b4:	83 ec 04             	sub    $0x4,%esp
    13b7:	68 f4 01 00 00       	push   $0x1f4
    13bc:	68 00 93 00 00       	push   $0x9300
    13c1:	57                   	push   %edi
    13c2:	e8 3b 32 00 00       	call   4602 <write>
    13c7:	83 c4 10             	add    $0x10,%esp
    13ca:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    13cf:	74 1f                	je     13f0 <fourfiles+0xe0>
          printf(1, "write failed %d\n", n);
    13d1:	83 ec 04             	sub    $0x4,%esp
    13d4:	50                   	push   %eax
    13d5:	68 cc 4e 00 00       	push   $0x4ecc
    13da:	6a 01                	push   $0x1
    13dc:	e8 4f 33 00 00       	call   4730 <printf>
          exit(0);
    13e1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13e8:	e8 f5 31 00 00       	call   45e2 <exit>
    13ed:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 12; i++){
    13f0:	83 eb 01             	sub    $0x1,%ebx
    13f3:	75 bf                	jne    13b4 <fourfiles+0xa4>
      exit(0);
    13f5:	83 ec 0c             	sub    $0xc,%esp
    13f8:	83 c6 01             	add    $0x1,%esi
    13fb:	6a 00                	push   $0x0
    13fd:	e8 e0 31 00 00       	call   45e2 <exit>
    1402:	83 c4 10             	add    $0x10,%esp
  for(pi = 0; pi < 4; pi++){
    1405:	83 fe 34             	cmp    $0x34,%esi
    1408:	0f 85 67 ff ff ff    	jne    1375 <fourfiles+0x65>
    wait(&child_status);
    140e:	8d 5d d4             	lea    -0x2c(%ebp),%ebx
    1411:	83 ec 0c             	sub    $0xc,%esp
    1414:	be 30 00 00 00       	mov    $0x30,%esi
    1419:	53                   	push   %ebx
    141a:	e8 cb 31 00 00       	call   45ea <wait>
    141f:	89 1c 24             	mov    %ebx,(%esp)
    1422:	e8 c3 31 00 00       	call   45ea <wait>
    1427:	89 1c 24             	mov    %ebx,(%esp)
    142a:	e8 bb 31 00 00       	call   45ea <wait>
    142f:	89 1c 24             	mov    %ebx,(%esp)
    1432:	e8 b3 31 00 00       	call   45ea <wait>
    1437:	83 c4 10             	add    $0x10,%esp
    143a:	c7 45 bc b6 4e 00 00 	movl   $0x4eb6,-0x44(%ebp)
    fd = open(fname, 0);
    1441:	83 ec 08             	sub    $0x8,%esp
    1444:	6a 00                	push   $0x0
    1446:	ff 75 bc             	pushl  -0x44(%ebp)
    1449:	e8 d4 31 00 00       	call   4622 <open>
    while((n = read(fd, buf, sizeof(buf))) > 0){
    144e:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    1451:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    total = 0;
    1454:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
    145b:	90                   	nop
    145c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1460:	83 ec 04             	sub    $0x4,%esp
    1463:	68 00 20 00 00       	push   $0x2000
    1468:	68 00 93 00 00       	push   $0x9300
    146d:	ff 75 c4             	pushl  -0x3c(%ebp)
    1470:	e8 85 31 00 00       	call   45fa <read>
    1475:	83 c4 10             	add    $0x10,%esp
    1478:	85 c0                	test   %eax,%eax
    147a:	89 c3                	mov    %eax,%ebx
    147c:	7e 37                	jle    14b5 <fourfiles+0x1a5>
    147e:	31 ff                	xor    %edi,%edi
        if(buf[j] != '0'+i){
    1480:	0f be 87 00 93 00 00 	movsbl 0x9300(%edi),%eax
    1487:	39 f0                	cmp    %esi,%eax
    1489:	74 1e                	je     14a9 <fourfiles+0x199>
          printf(1, "wrong char\n");
    148b:	83 ec 08             	sub    $0x8,%esp
    148e:	68 dd 4e 00 00       	push   $0x4edd
    1493:	6a 01                	push   $0x1
    1495:	e8 96 32 00 00       	call   4730 <printf>
          exit(0);
    149a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14a1:	e8 3c 31 00 00       	call   45e2 <exit>
    14a6:	83 c4 10             	add    $0x10,%esp
      for(j = 0; j < n; j++){
    14a9:	83 c7 01             	add    $0x1,%edi
    14ac:	39 fb                	cmp    %edi,%ebx
    14ae:	75 d0                	jne    1480 <fourfiles+0x170>
      total += n;
    14b0:	01 5d c0             	add    %ebx,-0x40(%ebp)
    14b3:	eb ab                	jmp    1460 <fourfiles+0x150>
    close(fd);
    14b5:	83 ec 0c             	sub    $0xc,%esp
    14b8:	ff 75 c4             	pushl  -0x3c(%ebp)
    14bb:	e8 4a 31 00 00       	call   460a <close>
    if(total != 12*500){
    14c0:	8b 45 c0             	mov    -0x40(%ebp),%eax
    14c3:	83 c4 10             	add    $0x10,%esp
    14c6:	3d 70 17 00 00       	cmp    $0x1770,%eax
    14cb:	74 1f                	je     14ec <fourfiles+0x1dc>
      printf(1, "wrong length %d\n", total);
    14cd:	83 ec 04             	sub    $0x4,%esp
    14d0:	50                   	push   %eax
    14d1:	68 e9 4e 00 00       	push   $0x4ee9
    14d6:	6a 01                	push   $0x1
    14d8:	e8 53 32 00 00       	call   4730 <printf>
      exit(0);
    14dd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    14e4:	e8 f9 30 00 00       	call   45e2 <exit>
    14e9:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    14ec:	83 ec 0c             	sub    $0xc,%esp
    14ef:	ff 75 bc             	pushl  -0x44(%ebp)
    14f2:	83 c6 01             	add    $0x1,%esi
    14f5:	e8 38 31 00 00       	call   4632 <unlink>
  for(i = 0; i < 2; i++){
    14fa:	83 c4 10             	add    $0x10,%esp
    14fd:	83 fe 32             	cmp    $0x32,%esi
    1500:	74 0b                	je     150d <fourfiles+0x1fd>
    1502:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1505:	89 45 bc             	mov    %eax,-0x44(%ebp)
    1508:	e9 34 ff ff ff       	jmp    1441 <fourfiles+0x131>
  printf(1, "fourfiles ok\n");
    150d:	83 ec 08             	sub    $0x8,%esp
    1510:	68 fa 4e 00 00       	push   $0x4efa
    1515:	6a 01                	push   $0x1
    1517:	e8 14 32 00 00       	call   4730 <printf>
}
    151c:	83 c4 10             	add    $0x10,%esp
    151f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1522:	5b                   	pop    %ebx
    1523:	5e                   	pop    %esi
    1524:	5f                   	pop    %edi
    1525:	5d                   	pop    %ebp
    1526:	c3                   	ret    
      printf(1, "fork failed\n");
    1527:	83 ec 08             	sub    $0x8,%esp
    152a:	68 91 59 00 00       	push   $0x5991
    152f:	6a 01                	push   $0x1
    1531:	e8 fa 31 00 00       	call   4730 <printf>
      exit(0);
    1536:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    153d:	e8 a0 30 00 00       	call   45e2 <exit>
    1542:	83 c4 10             	add    $0x10,%esp
    1545:	e9 1f fe ff ff       	jmp    1369 <fourfiles+0x59>
        printf(1, "create failed\n");
    154a:	83 ec 08             	sub    $0x8,%esp
    154d:	68 57 51 00 00       	push   $0x5157
    1552:	6a 01                	push   $0x1
    1554:	e8 d7 31 00 00       	call   4730 <printf>
        exit(0);
    1559:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1560:	e8 7d 30 00 00       	call   45e2 <exit>
    1565:	83 c4 10             	add    $0x10,%esp
    1568:	e9 2c fe ff ff       	jmp    1399 <fourfiles+0x89>
    156d:	8d 76 00             	lea    0x0(%esi),%esi

00001570 <createdelete>:
{
    1570:	55                   	push   %ebp
    1571:	89 e5                	mov    %esp,%ebp
    1573:	57                   	push   %edi
    1574:	56                   	push   %esi
    1575:	53                   	push   %ebx
    1576:	8d 7d c8             	lea    -0x38(%ebp),%edi
    1579:	83 ec 54             	sub    $0x54,%esp
  printf(1, "createdelete test\n");
    157c:	68 08 4f 00 00       	push   $0x4f08
    1581:	6a 01                	push   $0x1
    1583:	e8 a8 31 00 00       	call   4730 <printf>
    1588:	83 c4 10             	add    $0x10,%esp
    158b:	c6 45 b7 70          	movb   $0x70,-0x49(%ebp)
    pid = fork();
    158f:	e8 46 30 00 00       	call   45da <fork>
    if(pid < 0){
    1594:	85 c0                	test   %eax,%eax
    1596:	0f 88 18 02 00 00    	js     17b4 <createdelete+0x244>
    if(pid == 0){
    159c:	0f 85 ab 00 00 00    	jne    164d <createdelete+0xdd>
      name[0] = 'p' + pi;
    15a2:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
      name[2] = '\0';
    15a6:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    15aa:	be 01 00 00 00       	mov    $0x1,%esi
    15af:	31 db                	xor    %ebx,%ebx
      name[0] = 'p' + pi;
    15b1:	88 45 c8             	mov    %al,-0x38(%ebp)
    15b4:	eb 15                	jmp    15cb <createdelete+0x5b>
    15b6:	8d 76 00             	lea    0x0(%esi),%esi
    15b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      for(i = 0; i < N; i++){
    15c0:	83 fe 14             	cmp    $0x14,%esi
    15c3:	74 7b                	je     1640 <createdelete+0xd0>
    15c5:	83 c3 01             	add    $0x1,%ebx
    15c8:	83 c6 01             	add    $0x1,%esi
        fd = open(name, O_CREATE | O_RDWR);
    15cb:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    15ce:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    15d1:	68 02 02 00 00       	push   $0x202
    15d6:	57                   	push   %edi
        name[1] = '0' + i;
    15d7:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    15da:	e8 43 30 00 00       	call   4622 <open>
        if(fd < 0){
    15df:	83 c4 10             	add    $0x10,%esp
    15e2:	85 c0                	test   %eax,%eax
    15e4:	0f 88 76 01 00 00    	js     1760 <createdelete+0x1f0>
        close(fd);
    15ea:	83 ec 0c             	sub    $0xc,%esp
    15ed:	50                   	push   %eax
    15ee:	e8 17 30 00 00       	call   460a <close>
        if(i > 0 && (i % 2 ) == 0){
    15f3:	83 c4 10             	add    $0x10,%esp
    15f6:	85 db                	test   %ebx,%ebx
    15f8:	74 cb                	je     15c5 <createdelete+0x55>
    15fa:	f6 c3 01             	test   $0x1,%bl
    15fd:	75 c1                	jne    15c0 <createdelete+0x50>
          if(unlink(name) < 0){
    15ff:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    1602:	89 d8                	mov    %ebx,%eax
    1604:	d1 f8                	sar    %eax
          if(unlink(name) < 0){
    1606:	57                   	push   %edi
          name[1] = '0' + (i / 2);
    1607:	83 c0 30             	add    $0x30,%eax
    160a:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    160d:	e8 20 30 00 00       	call   4632 <unlink>
    1612:	83 c4 10             	add    $0x10,%esp
    1615:	85 c0                	test   %eax,%eax
    1617:	79 a7                	jns    15c0 <createdelete+0x50>
            printf(1, "unlink failed\n");
    1619:	83 ec 08             	sub    $0x8,%esp
    161c:	68 09 4b 00 00       	push   $0x4b09
    1621:	6a 01                	push   $0x1
    1623:	e8 08 31 00 00       	call   4730 <printf>
            exit(0);
    1628:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    162f:	e8 ae 2f 00 00       	call   45e2 <exit>
    1634:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < N; i++){
    1637:	83 fe 14             	cmp    $0x14,%esi
    163a:	75 89                	jne    15c5 <createdelete+0x55>
    163c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      exit(0);
    1640:	83 ec 0c             	sub    $0xc,%esp
    1643:	6a 00                	push   $0x0
    1645:	e8 98 2f 00 00       	call   45e2 <exit>
    164a:	83 c4 10             	add    $0x10,%esp
    164d:	80 45 b7 01          	addb   $0x1,-0x49(%ebp)
    1651:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
  for(pi = 0; pi < 4; pi++){
    1655:	3c 74                	cmp    $0x74,%al
    1657:	0f 85 32 ff ff ff    	jne    158f <createdelete+0x1f>
    wait(&child_status);
    165d:	8d 5d c4             	lea    -0x3c(%ebp),%ebx
    1660:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < N; i++){
    1663:	31 f6                	xor    %esi,%esi
    wait(&child_status);
    1665:	53                   	push   %ebx
    1666:	e8 7f 2f 00 00       	call   45ea <wait>
    166b:	89 1c 24             	mov    %ebx,(%esp)
    166e:	e8 77 2f 00 00       	call   45ea <wait>
    1673:	89 1c 24             	mov    %ebx,(%esp)
    1676:	e8 6f 2f 00 00       	call   45ea <wait>
    167b:	89 1c 24             	mov    %ebx,(%esp)
    167e:	e8 67 2f 00 00       	call   45ea <wait>
  name[0] = name[1] = name[2] = 0;
    1683:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1687:	83 c4 10             	add    $0x10,%esp
    168a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1690:	8d 46 30             	lea    0x30(%esi),%eax
    1693:	83 fe 09             	cmp    $0x9,%esi
      name[2] = '\0';
    1696:	bb 70 00 00 00       	mov    $0x70,%ebx
    169b:	0f 9f c2             	setg   %dl
    169e:	85 f6                	test   %esi,%esi
    16a0:	88 45 b7             	mov    %al,-0x49(%ebp)
    16a3:	0f 94 c0             	sete   %al
    16a6:	09 c2                	or     %eax,%edx
      } else if((i >= 1 && i < N/2) && fd >= 0){
    16a8:	8d 46 ff             	lea    -0x1(%esi),%eax
    16ab:	88 55 b6             	mov    %dl,-0x4a(%ebp)
    16ae:	89 45 b0             	mov    %eax,-0x50(%ebp)
      name[1] = '0' + i;
    16b1:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
      fd = open(name, 0);
    16b5:	83 ec 08             	sub    $0x8,%esp
      name[0] = 'p' + pi;
    16b8:	88 5d c8             	mov    %bl,-0x38(%ebp)
      fd = open(name, 0);
    16bb:	6a 00                	push   $0x0
    16bd:	57                   	push   %edi
      name[1] = '0' + i;
    16be:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    16c1:	e8 5c 2f 00 00       	call   4622 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    16c6:	89 c1                	mov    %eax,%ecx
    16c8:	83 c4 10             	add    $0x10,%esp
    16cb:	c1 e9 1f             	shr    $0x1f,%ecx
    16ce:	84 c9                	test   %cl,%cl
    16d0:	74 0a                	je     16dc <createdelete+0x16c>
    16d2:	80 7d b6 00          	cmpb   $0x0,-0x4a(%ebp)
    16d6:	0f 85 b4 00 00 00    	jne    1790 <createdelete+0x220>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    16dc:	83 7d b0 08          	cmpl   $0x8,-0x50(%ebp)
    16e0:	0f 86 01 01 00 00    	jbe    17e7 <createdelete+0x277>
      if(fd >= 0)
    16e6:	85 c0                	test   %eax,%eax
    16e8:	78 0c                	js     16f6 <createdelete+0x186>
        close(fd);
    16ea:	83 ec 0c             	sub    $0xc,%esp
    16ed:	50                   	push   %eax
    16ee:	e8 17 2f 00 00       	call   460a <close>
    16f3:	83 c4 10             	add    $0x10,%esp
    16f6:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    16f9:	80 fb 74             	cmp    $0x74,%bl
    16fc:	75 b3                	jne    16b1 <createdelete+0x141>
  for(i = 0; i < N; i++){
    16fe:	83 c6 01             	add    $0x1,%esi
    1701:	83 fe 14             	cmp    $0x14,%esi
    1704:	75 8a                	jne    1690 <createdelete+0x120>
    1706:	be 70 00 00 00       	mov    $0x70,%esi
    170b:	90                   	nop
    170c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1710:	8d 46 c0             	lea    -0x40(%esi),%eax
    1713:	bb 04 00 00 00       	mov    $0x4,%ebx
    1718:	88 45 b7             	mov    %al,-0x49(%ebp)
      name[0] = 'p' + i;
    171b:	89 f0                	mov    %esi,%eax
      unlink(name);
    171d:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    1720:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    1723:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
      unlink(name);
    1727:	57                   	push   %edi
      name[1] = '0' + i;
    1728:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    172b:	e8 02 2f 00 00       	call   4632 <unlink>
    for(pi = 0; pi < 4; pi++){
    1730:	83 c4 10             	add    $0x10,%esp
    1733:	83 eb 01             	sub    $0x1,%ebx
    1736:	75 e3                	jne    171b <createdelete+0x1ab>
    1738:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    173b:	89 f0                	mov    %esi,%eax
    173d:	3c 84                	cmp    $0x84,%al
    173f:	75 cf                	jne    1710 <createdelete+0x1a0>
  printf(1, "createdelete ok\n");
    1741:	83 ec 08             	sub    $0x8,%esp
    1744:	68 1b 4f 00 00       	push   $0x4f1b
    1749:	6a 01                	push   $0x1
    174b:	e8 e0 2f 00 00       	call   4730 <printf>
}
    1750:	83 c4 10             	add    $0x10,%esp
    1753:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1756:	5b                   	pop    %ebx
    1757:	5e                   	pop    %esi
    1758:	5f                   	pop    %edi
    1759:	5d                   	pop    %ebp
    175a:	c3                   	ret    
    175b:	90                   	nop
    175c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
          printf(1, "create failed\n");
    1760:	83 ec 08             	sub    $0x8,%esp
    1763:	89 45 b0             	mov    %eax,-0x50(%ebp)
    1766:	68 57 51 00 00       	push   $0x5157
    176b:	6a 01                	push   $0x1
    176d:	e8 be 2f 00 00       	call   4730 <printf>
          exit(0);
    1772:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1779:	e8 64 2e 00 00       	call   45e2 <exit>
    177e:	83 c4 10             	add    $0x10,%esp
    1781:	8b 45 b0             	mov    -0x50(%ebp),%eax
    1784:	e9 61 fe ff ff       	jmp    15ea <createdelete+0x7a>
    1789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "oops createdelete %s didn't exist\n", name);
    1790:	83 ec 04             	sub    $0x4,%esp
    1793:	57                   	push   %edi
    1794:	68 c8 5b 00 00       	push   $0x5bc8
    1799:	6a 01                	push   $0x1
    179b:	e8 90 2f 00 00       	call   4730 <printf>
        exit(0);
    17a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17a7:	e8 36 2e 00 00       	call   45e2 <exit>
    17ac:	83 c4 10             	add    $0x10,%esp
    17af:	e9 42 ff ff ff       	jmp    16f6 <createdelete+0x186>
      printf(1, "fork failed\n");
    17b4:	83 ec 08             	sub    $0x8,%esp
    17b7:	68 91 59 00 00       	push   $0x5991
    17bc:	6a 01                	push   $0x1
    17be:	e8 6d 2f 00 00       	call   4730 <printf>
      exit(0);
    17c3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17ca:	e8 13 2e 00 00       	call   45e2 <exit>
    17cf:	80 45 b7 01          	addb   $0x1,-0x49(%ebp)
    17d3:	83 c4 10             	add    $0x10,%esp
    17d6:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
  for(pi = 0; pi < 4; pi++){
    17da:	3c 74                	cmp    $0x74,%al
    17dc:	0f 85 ad fd ff ff    	jne    158f <createdelete+0x1f>
    17e2:	e9 76 fe ff ff       	jmp    165d <createdelete+0xed>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    17e7:	85 c0                	test   %eax,%eax
    17e9:	89 45 ac             	mov    %eax,-0x54(%ebp)
    17ec:	0f 88 04 ff ff ff    	js     16f6 <createdelete+0x186>
        printf(1, "oops createdelete %s did exist\n", name);
    17f2:	83 ec 04             	sub    $0x4,%esp
    17f5:	57                   	push   %edi
    17f6:	68 ec 5b 00 00       	push   $0x5bec
    17fb:	6a 01                	push   $0x1
    17fd:	e8 2e 2f 00 00       	call   4730 <printf>
        exit(0);
    1802:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1809:	e8 d4 2d 00 00       	call   45e2 <exit>
    180e:	83 c4 10             	add    $0x10,%esp
    1811:	8b 45 ac             	mov    -0x54(%ebp),%eax
    1814:	e9 d1 fe ff ff       	jmp    16ea <createdelete+0x17a>
    1819:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001820 <unlinkread>:
{
    1820:	55                   	push   %ebp
    1821:	89 e5                	mov    %esp,%ebp
    1823:	56                   	push   %esi
    1824:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    1825:	83 ec 08             	sub    $0x8,%esp
    1828:	68 2c 4f 00 00       	push   $0x4f2c
    182d:	6a 01                	push   $0x1
    182f:	e8 fc 2e 00 00       	call   4730 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1834:	5e                   	pop    %esi
    1835:	58                   	pop    %eax
    1836:	68 02 02 00 00       	push   $0x202
    183b:	68 3d 4f 00 00       	push   $0x4f3d
    1840:	e8 dd 2d 00 00       	call   4622 <open>
  if(fd < 0){
    1845:	83 c4 10             	add    $0x10,%esp
    1848:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_CREATE | O_RDWR);
    184a:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    184c:	0f 88 8e 01 00 00    	js     19e0 <unlinkread+0x1c0>
  write(fd, "hello", 5);
    1852:	83 ec 04             	sub    $0x4,%esp
    1855:	6a 05                	push   $0x5
    1857:	68 62 4f 00 00       	push   $0x4f62
    185c:	53                   	push   %ebx
    185d:	e8 a0 2d 00 00       	call   4602 <write>
  close(fd);
    1862:	89 1c 24             	mov    %ebx,(%esp)
    1865:	e8 a0 2d 00 00       	call   460a <close>
  fd = open("unlinkread", O_RDWR);
    186a:	59                   	pop    %ecx
    186b:	5b                   	pop    %ebx
    186c:	6a 02                	push   $0x2
    186e:	68 3d 4f 00 00       	push   $0x4f3d
    1873:	e8 aa 2d 00 00       	call   4622 <open>
  if(fd < 0){
    1878:	83 c4 10             	add    $0x10,%esp
    187b:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    187d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    187f:	0f 88 33 01 00 00    	js     19b8 <unlinkread+0x198>
  if(unlink("unlinkread") != 0){
    1885:	83 ec 0c             	sub    $0xc,%esp
    1888:	68 3d 4f 00 00       	push   $0x4f3d
    188d:	e8 a0 2d 00 00       	call   4632 <unlink>
    1892:	83 c4 10             	add    $0x10,%esp
    1895:	85 c0                	test   %eax,%eax
    1897:	0f 85 f3 00 00 00    	jne    1990 <unlinkread+0x170>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    189d:	83 ec 08             	sub    $0x8,%esp
    18a0:	68 02 02 00 00       	push   $0x202
    18a5:	68 3d 4f 00 00       	push   $0x4f3d
    18aa:	e8 73 2d 00 00       	call   4622 <open>
  write(fd1, "yyy", 3);
    18af:	83 c4 0c             	add    $0xc,%esp
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    18b2:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    18b4:	6a 03                	push   $0x3
    18b6:	68 9a 4f 00 00       	push   $0x4f9a
    18bb:	50                   	push   %eax
    18bc:	e8 41 2d 00 00       	call   4602 <write>
  close(fd1);
    18c1:	89 34 24             	mov    %esi,(%esp)
    18c4:	e8 41 2d 00 00       	call   460a <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    18c9:	83 c4 0c             	add    $0xc,%esp
    18cc:	68 00 20 00 00       	push   $0x2000
    18d1:	68 00 93 00 00       	push   $0x9300
    18d6:	53                   	push   %ebx
    18d7:	e8 1e 2d 00 00       	call   45fa <read>
    18dc:	83 c4 10             	add    $0x10,%esp
    18df:	83 f8 05             	cmp    $0x5,%eax
    18e2:	74 1e                	je     1902 <unlinkread+0xe2>
    printf(1, "unlinkread read failed");
    18e4:	83 ec 08             	sub    $0x8,%esp
    18e7:	68 9e 4f 00 00       	push   $0x4f9e
    18ec:	6a 01                	push   $0x1
    18ee:	e8 3d 2e 00 00       	call   4730 <printf>
    exit(0);
    18f3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    18fa:	e8 e3 2c 00 00       	call   45e2 <exit>
    18ff:	83 c4 10             	add    $0x10,%esp
  if(buf[0] != 'h'){
    1902:	80 3d 00 93 00 00 68 	cmpb   $0x68,0x9300
    1909:	74 1e                	je     1929 <unlinkread+0x109>
    printf(1, "unlinkread wrong data\n");
    190b:	83 ec 08             	sub    $0x8,%esp
    190e:	68 b5 4f 00 00       	push   $0x4fb5
    1913:	6a 01                	push   $0x1
    1915:	e8 16 2e 00 00       	call   4730 <printf>
    exit(0);
    191a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1921:	e8 bc 2c 00 00       	call   45e2 <exit>
    1926:	83 c4 10             	add    $0x10,%esp
  if(write(fd, buf, 10) != 10){
    1929:	83 ec 04             	sub    $0x4,%esp
    192c:	6a 0a                	push   $0xa
    192e:	68 00 93 00 00       	push   $0x9300
    1933:	53                   	push   %ebx
    1934:	e8 c9 2c 00 00       	call   4602 <write>
    1939:	83 c4 10             	add    $0x10,%esp
    193c:	83 f8 0a             	cmp    $0xa,%eax
    193f:	74 1e                	je     195f <unlinkread+0x13f>
    printf(1, "unlinkread write failed\n");
    1941:	83 ec 08             	sub    $0x8,%esp
    1944:	68 cc 4f 00 00       	push   $0x4fcc
    1949:	6a 01                	push   $0x1
    194b:	e8 e0 2d 00 00       	call   4730 <printf>
    exit(0);
    1950:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1957:	e8 86 2c 00 00       	call   45e2 <exit>
    195c:	83 c4 10             	add    $0x10,%esp
  close(fd);
    195f:	83 ec 0c             	sub    $0xc,%esp
    1962:	53                   	push   %ebx
    1963:	e8 a2 2c 00 00       	call   460a <close>
  unlink("unlinkread");
    1968:	c7 04 24 3d 4f 00 00 	movl   $0x4f3d,(%esp)
    196f:	e8 be 2c 00 00       	call   4632 <unlink>
  printf(1, "unlinkread ok\n");
    1974:	58                   	pop    %eax
    1975:	5a                   	pop    %edx
    1976:	68 e5 4f 00 00       	push   $0x4fe5
    197b:	6a 01                	push   $0x1
    197d:	e8 ae 2d 00 00       	call   4730 <printf>
}
    1982:	83 c4 10             	add    $0x10,%esp
    1985:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1988:	5b                   	pop    %ebx
    1989:	5e                   	pop    %esi
    198a:	5d                   	pop    %ebp
    198b:	c3                   	ret    
    198c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink unlinkread failed\n");
    1990:	83 ec 08             	sub    $0x8,%esp
    1993:	68 80 4f 00 00       	push   $0x4f80
    1998:	6a 01                	push   $0x1
    199a:	e8 91 2d 00 00       	call   4730 <printf>
    exit(0);
    199f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19a6:	e8 37 2c 00 00       	call   45e2 <exit>
    19ab:	83 c4 10             	add    $0x10,%esp
    19ae:	e9 ea fe ff ff       	jmp    189d <unlinkread+0x7d>
    19b3:	90                   	nop
    19b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "open unlinkread failed\n");
    19b8:	83 ec 08             	sub    $0x8,%esp
    19bb:	68 68 4f 00 00       	push   $0x4f68
    19c0:	6a 01                	push   $0x1
    19c2:	e8 69 2d 00 00       	call   4730 <printf>
    exit(0);
    19c7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19ce:	e8 0f 2c 00 00       	call   45e2 <exit>
    19d3:	83 c4 10             	add    $0x10,%esp
    19d6:	e9 aa fe ff ff       	jmp    1885 <unlinkread+0x65>
    19db:	90                   	nop
    19dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create unlinkread failed\n");
    19e0:	83 ec 08             	sub    $0x8,%esp
    19e3:	68 48 4f 00 00       	push   $0x4f48
    19e8:	6a 01                	push   $0x1
    19ea:	e8 41 2d 00 00       	call   4730 <printf>
    exit(0);
    19ef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19f6:	e8 e7 2b 00 00       	call   45e2 <exit>
    19fb:	83 c4 10             	add    $0x10,%esp
    19fe:	e9 4f fe ff ff       	jmp    1852 <unlinkread+0x32>
    1a03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001a10 <linktest>:
{
    1a10:	55                   	push   %ebp
    1a11:	89 e5                	mov    %esp,%ebp
    1a13:	53                   	push   %ebx
    1a14:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    1a17:	68 f4 4f 00 00       	push   $0x4ff4
    1a1c:	6a 01                	push   $0x1
    1a1e:	e8 0d 2d 00 00       	call   4730 <printf>
  unlink("lf1");
    1a23:	c7 04 24 fe 4f 00 00 	movl   $0x4ffe,(%esp)
    1a2a:	e8 03 2c 00 00       	call   4632 <unlink>
  unlink("lf2");
    1a2f:	c7 04 24 02 50 00 00 	movl   $0x5002,(%esp)
    1a36:	e8 f7 2b 00 00       	call   4632 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    1a3b:	58                   	pop    %eax
    1a3c:	5a                   	pop    %edx
    1a3d:	68 02 02 00 00       	push   $0x202
    1a42:	68 fe 4f 00 00       	push   $0x4ffe
    1a47:	e8 d6 2b 00 00       	call   4622 <open>
  if(fd < 0){
    1a4c:	83 c4 10             	add    $0x10,%esp
    1a4f:	85 c0                	test   %eax,%eax
  fd = open("lf1", O_CREATE|O_RDWR);
    1a51:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1a53:	0f 88 c7 01 00 00    	js     1c20 <linktest+0x210>
  if(write(fd, "hello", 5) != 5){
    1a59:	83 ec 04             	sub    $0x4,%esp
    1a5c:	6a 05                	push   $0x5
    1a5e:	68 62 4f 00 00       	push   $0x4f62
    1a63:	53                   	push   %ebx
    1a64:	e8 99 2b 00 00       	call   4602 <write>
    1a69:	83 c4 10             	add    $0x10,%esp
    1a6c:	83 f8 05             	cmp    $0x5,%eax
    1a6f:	74 1e                	je     1a8f <linktest+0x7f>
    printf(1, "write lf1 failed\n");
    1a71:	83 ec 08             	sub    $0x8,%esp
    1a74:	68 19 50 00 00       	push   $0x5019
    1a79:	6a 01                	push   $0x1
    1a7b:	e8 b0 2c 00 00       	call   4730 <printf>
    exit(0);
    1a80:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a87:	e8 56 2b 00 00       	call   45e2 <exit>
    1a8c:	83 c4 10             	add    $0x10,%esp
  close(fd);
    1a8f:	83 ec 0c             	sub    $0xc,%esp
    1a92:	53                   	push   %ebx
    1a93:	e8 72 2b 00 00       	call   460a <close>
  if(link("lf1", "lf2") < 0){
    1a98:	59                   	pop    %ecx
    1a99:	5b                   	pop    %ebx
    1a9a:	68 02 50 00 00       	push   $0x5002
    1a9f:	68 fe 4f 00 00       	push   $0x4ffe
    1aa4:	e8 99 2b 00 00       	call   4642 <link>
    1aa9:	83 c4 10             	add    $0x10,%esp
    1aac:	85 c0                	test   %eax,%eax
    1aae:	0f 88 94 01 00 00    	js     1c48 <linktest+0x238>
  unlink("lf1");
    1ab4:	83 ec 0c             	sub    $0xc,%esp
    1ab7:	68 fe 4f 00 00       	push   $0x4ffe
    1abc:	e8 71 2b 00 00       	call   4632 <unlink>
  if(open("lf1", 0) >= 0){
    1ac1:	58                   	pop    %eax
    1ac2:	5a                   	pop    %edx
    1ac3:	6a 00                	push   $0x0
    1ac5:	68 fe 4f 00 00       	push   $0x4ffe
    1aca:	e8 53 2b 00 00       	call   4622 <open>
    1acf:	83 c4 10             	add    $0x10,%esp
    1ad2:	85 c0                	test   %eax,%eax
    1ad4:	78 1e                	js     1af4 <linktest+0xe4>
    printf(1, "unlinked lf1 but it is still there!\n");
    1ad6:	83 ec 08             	sub    $0x8,%esp
    1ad9:	68 0c 5c 00 00       	push   $0x5c0c
    1ade:	6a 01                	push   $0x1
    1ae0:	e8 4b 2c 00 00       	call   4730 <printf>
    exit(0);
    1ae5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1aec:	e8 f1 2a 00 00       	call   45e2 <exit>
    1af1:	83 c4 10             	add    $0x10,%esp
  fd = open("lf2", 0);
    1af4:	83 ec 08             	sub    $0x8,%esp
    1af7:	6a 00                	push   $0x0
    1af9:	68 02 50 00 00       	push   $0x5002
    1afe:	e8 1f 2b 00 00       	call   4622 <open>
  if(fd < 0){
    1b03:	83 c4 10             	add    $0x10,%esp
    1b06:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    1b08:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1b0a:	0f 88 60 01 00 00    	js     1c70 <linktest+0x260>
  if(read(fd, buf, sizeof(buf)) != 5){
    1b10:	83 ec 04             	sub    $0x4,%esp
    1b13:	68 00 20 00 00       	push   $0x2000
    1b18:	68 00 93 00 00       	push   $0x9300
    1b1d:	53                   	push   %ebx
    1b1e:	e8 d7 2a 00 00       	call   45fa <read>
    1b23:	83 c4 10             	add    $0x10,%esp
    1b26:	83 f8 05             	cmp    $0x5,%eax
    1b29:	74 1e                	je     1b49 <linktest+0x139>
    printf(1, "read lf2 failed\n");
    1b2b:	83 ec 08             	sub    $0x8,%esp
    1b2e:	68 51 50 00 00       	push   $0x5051
    1b33:	6a 01                	push   $0x1
    1b35:	e8 f6 2b 00 00       	call   4730 <printf>
    exit(0);
    1b3a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b41:	e8 9c 2a 00 00       	call   45e2 <exit>
    1b46:	83 c4 10             	add    $0x10,%esp
  close(fd);
    1b49:	83 ec 0c             	sub    $0xc,%esp
    1b4c:	53                   	push   %ebx
    1b4d:	e8 b8 2a 00 00       	call   460a <close>
  if(link("lf2", "lf2") >= 0){
    1b52:	59                   	pop    %ecx
    1b53:	5b                   	pop    %ebx
    1b54:	68 02 50 00 00       	push   $0x5002
    1b59:	68 02 50 00 00       	push   $0x5002
    1b5e:	e8 df 2a 00 00       	call   4642 <link>
    1b63:	83 c4 10             	add    $0x10,%esp
    1b66:	85 c0                	test   %eax,%eax
    1b68:	78 1e                	js     1b88 <linktest+0x178>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1b6a:	83 ec 08             	sub    $0x8,%esp
    1b6d:	68 62 50 00 00       	push   $0x5062
    1b72:	6a 01                	push   $0x1
    1b74:	e8 b7 2b 00 00       	call   4730 <printf>
    exit(0);
    1b79:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b80:	e8 5d 2a 00 00       	call   45e2 <exit>
    1b85:	83 c4 10             	add    $0x10,%esp
  unlink("lf2");
    1b88:	83 ec 0c             	sub    $0xc,%esp
    1b8b:	68 02 50 00 00       	push   $0x5002
    1b90:	e8 9d 2a 00 00       	call   4632 <unlink>
  if(link("lf2", "lf1") >= 0){
    1b95:	58                   	pop    %eax
    1b96:	5a                   	pop    %edx
    1b97:	68 fe 4f 00 00       	push   $0x4ffe
    1b9c:	68 02 50 00 00       	push   $0x5002
    1ba1:	e8 9c 2a 00 00       	call   4642 <link>
    1ba6:	83 c4 10             	add    $0x10,%esp
    1ba9:	85 c0                	test   %eax,%eax
    1bab:	78 1e                	js     1bcb <linktest+0x1bb>
    printf(1, "link non-existant succeeded! oops\n");
    1bad:	83 ec 08             	sub    $0x8,%esp
    1bb0:	68 34 5c 00 00       	push   $0x5c34
    1bb5:	6a 01                	push   $0x1
    1bb7:	e8 74 2b 00 00       	call   4730 <printf>
    exit(0);
    1bbc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1bc3:	e8 1a 2a 00 00       	call   45e2 <exit>
    1bc8:	83 c4 10             	add    $0x10,%esp
  if(link(".", "lf1") >= 0){
    1bcb:	83 ec 08             	sub    $0x8,%esp
    1bce:	68 fe 4f 00 00       	push   $0x4ffe
    1bd3:	68 c6 52 00 00       	push   $0x52c6
    1bd8:	e8 65 2a 00 00       	call   4642 <link>
    1bdd:	83 c4 10             	add    $0x10,%esp
    1be0:	85 c0                	test   %eax,%eax
    1be2:	78 1e                	js     1c02 <linktest+0x1f2>
    printf(1, "link . lf1 succeeded! oops\n");
    1be4:	83 ec 08             	sub    $0x8,%esp
    1be7:	68 80 50 00 00       	push   $0x5080
    1bec:	6a 01                	push   $0x1
    1bee:	e8 3d 2b 00 00       	call   4730 <printf>
    exit(0);
    1bf3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1bfa:	e8 e3 29 00 00       	call   45e2 <exit>
    1bff:	83 c4 10             	add    $0x10,%esp
  printf(1, "linktest ok\n");
    1c02:	83 ec 08             	sub    $0x8,%esp
    1c05:	68 9c 50 00 00       	push   $0x509c
    1c0a:	6a 01                	push   $0x1
    1c0c:	e8 1f 2b 00 00       	call   4730 <printf>
}
    1c11:	83 c4 10             	add    $0x10,%esp
    1c14:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1c17:	c9                   	leave  
    1c18:	c3                   	ret    
    1c19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create lf1 failed\n");
    1c20:	83 ec 08             	sub    $0x8,%esp
    1c23:	68 06 50 00 00       	push   $0x5006
    1c28:	6a 01                	push   $0x1
    1c2a:	e8 01 2b 00 00       	call   4730 <printf>
    exit(0);
    1c2f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c36:	e8 a7 29 00 00       	call   45e2 <exit>
    1c3b:	83 c4 10             	add    $0x10,%esp
    1c3e:	e9 16 fe ff ff       	jmp    1a59 <linktest+0x49>
    1c43:	90                   	nop
    1c44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link lf1 lf2 failed\n");
    1c48:	83 ec 08             	sub    $0x8,%esp
    1c4b:	68 2b 50 00 00       	push   $0x502b
    1c50:	6a 01                	push   $0x1
    1c52:	e8 d9 2a 00 00       	call   4730 <printf>
    exit(0);
    1c57:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c5e:	e8 7f 29 00 00       	call   45e2 <exit>
    1c63:	83 c4 10             	add    $0x10,%esp
    1c66:	e9 49 fe ff ff       	jmp    1ab4 <linktest+0xa4>
    1c6b:	90                   	nop
    1c6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "open lf2 failed\n");
    1c70:	83 ec 08             	sub    $0x8,%esp
    1c73:	68 40 50 00 00       	push   $0x5040
    1c78:	6a 01                	push   $0x1
    1c7a:	e8 b1 2a 00 00       	call   4730 <printf>
    exit(0);
    1c7f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1c86:	e8 57 29 00 00       	call   45e2 <exit>
    1c8b:	83 c4 10             	add    $0x10,%esp
    1c8e:	e9 7d fe ff ff       	jmp    1b10 <linktest+0x100>
    1c93:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1c99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001ca0 <concreate>:
{
    1ca0:	55                   	push   %ebp
    1ca1:	89 e5                	mov    %esp,%ebp
    1ca3:	57                   	push   %edi
    1ca4:	56                   	push   %esi
    1ca5:	53                   	push   %ebx
    1ca6:	8d 75 a9             	lea    -0x57(%ebp),%esi
  for(i = 0; i < 40; i++){
    1ca9:	31 db                	xor    %ebx,%ebx
      wait(&child_status);
    1cab:	8d 7d ac             	lea    -0x54(%ebp),%edi
{
    1cae:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    1cb1:	68 a9 50 00 00       	push   $0x50a9
    1cb6:	6a 01                	push   $0x1
    1cb8:	e8 73 2a 00 00       	call   4730 <printf>
  file[0] = 'C';
    1cbd:	c6 45 a9 43          	movb   $0x43,-0x57(%ebp)
  file[2] = '\0';
    1cc1:	c6 45 ab 00          	movb   $0x0,-0x55(%ebp)
    1cc5:	83 c4 10             	add    $0x10,%esp
    1cc8:	eb 5f                	jmp    1d29 <concreate+0x89>
    1cca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid && (i % 3) == 1){
    1cd0:	89 d8                	mov    %ebx,%eax
    1cd2:	ba 56 55 55 55       	mov    $0x55555556,%edx
    1cd7:	89 d9                	mov    %ebx,%ecx
    1cd9:	f7 ea                	imul   %edx
    1cdb:	89 d8                	mov    %ebx,%eax
    1cdd:	c1 f8 1f             	sar    $0x1f,%eax
    1ce0:	29 c2                	sub    %eax,%edx
    1ce2:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1ce5:	29 c1                	sub    %eax,%ecx
    1ce7:	83 f9 01             	cmp    $0x1,%ecx
    1cea:	0f 84 80 01 00 00    	je     1e70 <concreate+0x1d0>
      fd = open(file, O_CREATE | O_RDWR);
    1cf0:	83 ec 08             	sub    $0x8,%esp
    1cf3:	68 02 02 00 00       	push   $0x202
    1cf8:	56                   	push   %esi
    1cf9:	e8 24 29 00 00       	call   4622 <open>
      if(fd < 0){
    1cfe:	83 c4 10             	add    $0x10,%esp
    1d01:	85 c0                	test   %eax,%eax
    1d03:	0f 88 5a 03 00 00    	js     2063 <concreate+0x3c3>
      close(fd);
    1d09:	83 ec 0c             	sub    $0xc,%esp
    1d0c:	50                   	push   %eax
    1d0d:	e8 f8 28 00 00       	call   460a <close>
    1d12:	83 c4 10             	add    $0x10,%esp
      wait(&child_status);
    1d15:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1d18:	83 c3 01             	add    $0x1,%ebx
      wait(&child_status);
    1d1b:	57                   	push   %edi
    1d1c:	e8 c9 28 00 00       	call   45ea <wait>
    1d21:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 40; i++){
    1d24:	83 fb 28             	cmp    $0x28,%ebx
    1d27:	74 75                	je     1d9e <concreate+0xfe>
    unlink(file);
    1d29:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    1d2c:	8d 43 30             	lea    0x30(%ebx),%eax
    unlink(file);
    1d2f:	56                   	push   %esi
    file[1] = '0' + i;
    1d30:	88 45 aa             	mov    %al,-0x56(%ebp)
    unlink(file);
    1d33:	e8 fa 28 00 00       	call   4632 <unlink>
    pid = fork();
    1d38:	e8 9d 28 00 00       	call   45da <fork>
    if(pid && (i % 3) == 1){
    1d3d:	83 c4 10             	add    $0x10,%esp
    1d40:	85 c0                	test   %eax,%eax
    1d42:	75 8c                	jne    1cd0 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    1d44:	b8 67 66 66 66       	mov    $0x66666667,%eax
    1d49:	89 d9                	mov    %ebx,%ecx
    1d4b:	f7 eb                	imul   %ebx
    1d4d:	89 d8                	mov    %ebx,%eax
    1d4f:	c1 f8 1f             	sar    $0x1f,%eax
    1d52:	d1 fa                	sar    %edx
    1d54:	29 c2                	sub    %eax,%edx
    1d56:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1d59:	29 c1                	sub    %eax,%ecx
    1d5b:	83 f9 01             	cmp    $0x1,%ecx
    1d5e:	0f 84 f4 00 00 00    	je     1e58 <concreate+0x1b8>
      fd = open(file, O_CREATE | O_RDWR);
    1d64:	83 ec 08             	sub    $0x8,%esp
    1d67:	68 02 02 00 00       	push   $0x202
    1d6c:	56                   	push   %esi
    1d6d:	e8 b0 28 00 00       	call   4622 <open>
      if(fd < 0){
    1d72:	83 c4 10             	add    $0x10,%esp
    1d75:	85 c0                	test   %eax,%eax
    1d77:	0f 88 a3 00 00 00    	js     1e20 <concreate+0x180>
      close(fd);
    1d7d:	83 ec 0c             	sub    $0xc,%esp
    1d80:	50                   	push   %eax
    1d81:	e8 84 28 00 00       	call   460a <close>
    1d86:	83 c4 10             	add    $0x10,%esp
      exit(0);
    1d89:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1d8c:	83 c3 01             	add    $0x1,%ebx
      exit(0);
    1d8f:	6a 00                	push   $0x0
    1d91:	e8 4c 28 00 00       	call   45e2 <exit>
    1d96:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 40; i++){
    1d99:	83 fb 28             	cmp    $0x28,%ebx
    1d9c:	75 8b                	jne    1d29 <concreate+0x89>
  memset(fa, 0, sizeof(fa));
    1d9e:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1da1:	83 ec 04             	sub    $0x4,%esp
    1da4:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1da7:	6a 28                	push   $0x28
    1da9:	6a 00                	push   $0x0
    1dab:	50                   	push   %eax
    1dac:	e8 9f 26 00 00       	call   4450 <memset>
  fd = open(".", 0);
    1db1:	59                   	pop    %ecx
    1db2:	5b                   	pop    %ebx
    1db3:	6a 00                	push   $0x0
    1db5:	68 c6 52 00 00       	push   $0x52c6
    1dba:	e8 63 28 00 00       	call   4622 <open>
  while(read(fd, &de, sizeof(de)) > 0){
    1dbf:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    1dc2:	89 c3                	mov    %eax,%ebx
  n = 0;
    1dc4:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    1dcb:	90                   	nop
    1dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1dd0:	83 ec 04             	sub    $0x4,%esp
    1dd3:	6a 10                	push   $0x10
    1dd5:	57                   	push   %edi
    1dd6:	53                   	push   %ebx
    1dd7:	e8 1e 28 00 00       	call   45fa <read>
    1ddc:	83 c4 10             	add    $0x10,%esp
    1ddf:	85 c0                	test   %eax,%eax
    1de1:	0f 8e a9 00 00 00    	jle    1e90 <concreate+0x1f0>
    if(de.inum == 0)
    1de7:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1dec:	74 e2                	je     1dd0 <concreate+0x130>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1dee:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1df2:	75 dc                	jne    1dd0 <concreate+0x130>
    1df4:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1df8:	75 d6                	jne    1dd0 <concreate+0x130>
      i = de.name[1] - '0';
    1dfa:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1dfe:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1e01:	83 f8 27             	cmp    $0x27,%eax
    1e04:	0f 87 f9 01 00 00    	ja     2003 <concreate+0x363>
      if(fa[i]){
    1e0a:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1e0f:	0f 85 21 02 00 00    	jne    2036 <concreate+0x396>
      fa[i] = 1;
    1e15:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1e1a:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1e1e:	eb b0                	jmp    1dd0 <concreate+0x130>
        printf(1, "concreate create %s failed\n", file);
    1e20:	83 ec 04             	sub    $0x4,%esp
    1e23:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    1e26:	56                   	push   %esi
    1e27:	68 00 51 00 00       	push   $0x5100
    1e2c:	6a 01                	push   $0x1
    1e2e:	e8 fd 28 00 00       	call   4730 <printf>
        exit(0);
    1e33:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1e3a:	e8 a3 27 00 00       	call   45e2 <exit>
      close(fd);
    1e3f:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    1e42:	89 04 24             	mov    %eax,(%esp)
    1e45:	e8 c0 27 00 00       	call   460a <close>
    1e4a:	83 c4 10             	add    $0x10,%esp
    1e4d:	e9 37 ff ff ff       	jmp    1d89 <concreate+0xe9>
    1e52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      link("C0", file);
    1e58:	83 ec 08             	sub    $0x8,%esp
    1e5b:	56                   	push   %esi
    1e5c:	68 b9 50 00 00       	push   $0x50b9
    1e61:	e8 dc 27 00 00       	call   4642 <link>
    1e66:	83 c4 10             	add    $0x10,%esp
    1e69:	e9 1b ff ff ff       	jmp    1d89 <concreate+0xe9>
    1e6e:	66 90                	xchg   %ax,%ax
      link("C0", file);
    1e70:	83 ec 08             	sub    $0x8,%esp
    1e73:	56                   	push   %esi
    1e74:	68 b9 50 00 00       	push   $0x50b9
    1e79:	e8 c4 27 00 00       	call   4642 <link>
    1e7e:	83 c4 10             	add    $0x10,%esp
    1e81:	e9 8f fe ff ff       	jmp    1d15 <concreate+0x75>
    1e86:	8d 76 00             	lea    0x0(%esi),%esi
    1e89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  close(fd);
    1e90:	83 ec 0c             	sub    $0xc,%esp
    1e93:	53                   	push   %ebx
    1e94:	e8 71 27 00 00       	call   460a <close>
  if(n != 40){
    1e99:	83 c4 10             	add    $0x10,%esp
    1e9c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1ea0:	74 1e                	je     1ec0 <concreate+0x220>
    printf(1, "concreate not enough files in directory listing\n");
    1ea2:	83 ec 08             	sub    $0x8,%esp
    1ea5:	68 58 5c 00 00       	push   $0x5c58
    1eaa:	6a 01                	push   $0x1
    1eac:	e8 7f 28 00 00       	call   4730 <printf>
    exit(0);
    1eb1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1eb8:	e8 25 27 00 00       	call   45e2 <exit>
    1ebd:	83 c4 10             	add    $0x10,%esp
  n = 0;
    1ec0:	31 db                	xor    %ebx,%ebx
    1ec2:	eb 1d                	jmp    1ee1 <concreate+0x241>
    1ec4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      exit(0);
    1ec8:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1ecb:	83 c3 01             	add    $0x1,%ebx
      exit(0);
    1ece:	6a 00                	push   $0x0
    1ed0:	e8 0d 27 00 00       	call   45e2 <exit>
    1ed5:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 40; i++){
    1ed8:	83 fb 28             	cmp    $0x28,%ebx
    1edb:	0f 84 b0 00 00 00    	je     1f91 <concreate+0x2f1>
    file[1] = '0' + i;
    1ee1:	8d 43 30             	lea    0x30(%ebx),%eax
    1ee4:	88 45 aa             	mov    %al,-0x56(%ebp)
    pid = fork();
    1ee7:	e8 ee 26 00 00       	call   45da <fork>
    if(pid < 0){
    1eec:	85 c0                	test   %eax,%eax
    pid = fork();
    1eee:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1ef0:	0f 88 ea 00 00 00    	js     1fe0 <concreate+0x340>
    if(((i % 3) == 0 && pid == 0) ||
    1ef6:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1efb:	f7 eb                	imul   %ebx
    1efd:	89 d8                	mov    %ebx,%eax
    1eff:	c1 f8 1f             	sar    $0x1f,%eax
    1f02:	29 c2                	sub    %eax,%edx
    1f04:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1f07:	89 da                	mov    %ebx,%edx
    1f09:	29 c2                	sub    %eax,%edx
    1f0b:	89 f8                	mov    %edi,%eax
    1f0d:	09 d0                	or     %edx,%eax
    1f0f:	74 11                	je     1f22 <concreate+0x282>
       ((i % 3) == 1 && pid != 0)){
    1f11:	83 fa 01             	cmp    $0x1,%edx
    1f14:	0f 85 96 00 00 00    	jne    1fb0 <concreate+0x310>
    1f1a:	85 ff                	test   %edi,%edi
    1f1c:	0f 84 8e 00 00 00    	je     1fb0 <concreate+0x310>
      close(open(file, 0));
    1f22:	83 ec 08             	sub    $0x8,%esp
    1f25:	6a 00                	push   $0x0
    1f27:	56                   	push   %esi
    1f28:	e8 f5 26 00 00       	call   4622 <open>
    1f2d:	89 04 24             	mov    %eax,(%esp)
    1f30:	e8 d5 26 00 00       	call   460a <close>
      close(open(file, 0));
    1f35:	58                   	pop    %eax
    1f36:	5a                   	pop    %edx
    1f37:	6a 00                	push   $0x0
    1f39:	56                   	push   %esi
    1f3a:	e8 e3 26 00 00       	call   4622 <open>
    1f3f:	89 04 24             	mov    %eax,(%esp)
    1f42:	e8 c3 26 00 00       	call   460a <close>
      close(open(file, 0));
    1f47:	59                   	pop    %ecx
    1f48:	58                   	pop    %eax
    1f49:	6a 00                	push   $0x0
    1f4b:	56                   	push   %esi
    1f4c:	e8 d1 26 00 00       	call   4622 <open>
    1f51:	89 04 24             	mov    %eax,(%esp)
    1f54:	e8 b1 26 00 00       	call   460a <close>
      close(open(file, 0));
    1f59:	58                   	pop    %eax
    1f5a:	5a                   	pop    %edx
    1f5b:	6a 00                	push   $0x0
    1f5d:	56                   	push   %esi
    1f5e:	e8 bf 26 00 00       	call   4622 <open>
    1f63:	89 04 24             	mov    %eax,(%esp)
    1f66:	e8 9f 26 00 00       	call   460a <close>
    1f6b:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    1f6e:	85 ff                	test   %edi,%edi
    1f70:	0f 84 52 ff ff ff    	je     1ec8 <concreate+0x228>
      wait(&child_status);
    1f76:	8d 45 ac             	lea    -0x54(%ebp),%eax
    1f79:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1f7c:	83 c3 01             	add    $0x1,%ebx
      wait(&child_status);
    1f7f:	50                   	push   %eax
    1f80:	e8 65 26 00 00       	call   45ea <wait>
    1f85:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 40; i++){
    1f88:	83 fb 28             	cmp    $0x28,%ebx
    1f8b:	0f 85 50 ff ff ff    	jne    1ee1 <concreate+0x241>
  printf(1, "concreate ok\n");
    1f91:	83 ec 08             	sub    $0x8,%esp
    1f94:	68 f2 50 00 00       	push   $0x50f2
    1f99:	6a 01                	push   $0x1
    1f9b:	e8 90 27 00 00       	call   4730 <printf>
}
    1fa0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1fa3:	5b                   	pop    %ebx
    1fa4:	5e                   	pop    %esi
    1fa5:	5f                   	pop    %edi
    1fa6:	5d                   	pop    %ebp
    1fa7:	c3                   	ret    
    1fa8:	90                   	nop
    1fa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      unlink(file);
    1fb0:	83 ec 0c             	sub    $0xc,%esp
    1fb3:	56                   	push   %esi
    1fb4:	e8 79 26 00 00       	call   4632 <unlink>
      unlink(file);
    1fb9:	89 34 24             	mov    %esi,(%esp)
    1fbc:	e8 71 26 00 00       	call   4632 <unlink>
      unlink(file);
    1fc1:	89 34 24             	mov    %esi,(%esp)
    1fc4:	e8 69 26 00 00       	call   4632 <unlink>
      unlink(file);
    1fc9:	89 34 24             	mov    %esi,(%esp)
    1fcc:	e8 61 26 00 00       	call   4632 <unlink>
    1fd1:	83 c4 10             	add    $0x10,%esp
    1fd4:	eb 98                	jmp    1f6e <concreate+0x2ce>
    1fd6:	8d 76 00             	lea    0x0(%esi),%esi
    1fd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(1, "fork failed\n");
    1fe0:	83 ec 08             	sub    $0x8,%esp
    1fe3:	68 91 59 00 00       	push   $0x5991
    1fe8:	6a 01                	push   $0x1
    1fea:	e8 41 27 00 00       	call   4730 <printf>
      exit(0);
    1fef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1ff6:	e8 e7 25 00 00       	call   45e2 <exit>
    1ffb:	83 c4 10             	add    $0x10,%esp
    1ffe:	e9 f3 fe ff ff       	jmp    1ef6 <concreate+0x256>
    2003:	89 45 a0             	mov    %eax,-0x60(%ebp)
        printf(1, "concreate weird file %s\n", de.name);
    2006:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    2009:	83 ec 04             	sub    $0x4,%esp
    200c:	50                   	push   %eax
    200d:	68 bc 50 00 00       	push   $0x50bc
    2012:	6a 01                	push   $0x1
    2014:	e8 17 27 00 00       	call   4730 <printf>
        exit(0);
    2019:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2020:	e8 bd 25 00 00       	call   45e2 <exit>
    2025:	8b 45 a0             	mov    -0x60(%ebp),%eax
    2028:	83 c4 10             	add    $0x10,%esp
      if(fa[i]){
    202b:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    2030:	0f 84 df fd ff ff    	je     1e15 <concreate+0x175>
    2036:	89 45 a0             	mov    %eax,-0x60(%ebp)
        printf(1, "concreate duplicate file %s\n", de.name);
    2039:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    203c:	83 ec 04             	sub    $0x4,%esp
    203f:	50                   	push   %eax
    2040:	68 d5 50 00 00       	push   $0x50d5
    2045:	6a 01                	push   $0x1
    2047:	e8 e4 26 00 00       	call   4730 <printf>
        exit(0);
    204c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2053:	e8 8a 25 00 00       	call   45e2 <exit>
    2058:	83 c4 10             	add    $0x10,%esp
    205b:	8b 45 a0             	mov    -0x60(%ebp),%eax
    205e:	e9 b2 fd ff ff       	jmp    1e15 <concreate+0x175>
        printf(1, "concreate create %s failed\n", file);
    2063:	83 ec 04             	sub    $0x4,%esp
    2066:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    2069:	56                   	push   %esi
    206a:	68 00 51 00 00       	push   $0x5100
    206f:	6a 01                	push   $0x1
    2071:	e8 ba 26 00 00       	call   4730 <printf>
        exit(0);
    2076:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    207d:	e8 60 25 00 00       	call   45e2 <exit>
      close(fd);
    2082:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    2085:	89 04 24             	mov    %eax,(%esp)
    2088:	e8 7d 25 00 00       	call   460a <close>
    208d:	83 c4 10             	add    $0x10,%esp
    2090:	e9 80 fc ff ff       	jmp    1d15 <concreate+0x75>
    2095:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2099:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000020a0 <linkunlink>:
{
    20a0:	55                   	push   %ebp
    20a1:	89 e5                	mov    %esp,%ebp
    20a3:	57                   	push   %edi
    20a4:	56                   	push   %esi
    20a5:	53                   	push   %ebx
    20a6:	83 ec 34             	sub    $0x34,%esp
  printf(1, "linkunlink test\n");
    20a9:	68 1c 51 00 00       	push   $0x511c
    20ae:	6a 01                	push   $0x1
    20b0:	e8 7b 26 00 00       	call   4730 <printf>
  unlink("x");
    20b5:	c7 04 24 a9 53 00 00 	movl   $0x53a9,(%esp)
    20bc:	e8 71 25 00 00       	call   4632 <unlink>
  pid = fork();
    20c1:	e8 14 25 00 00       	call   45da <fork>
  if(pid < 0){
    20c6:	83 c4 10             	add    $0x10,%esp
    20c9:	85 c0                	test   %eax,%eax
  pid = fork();
    20cb:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  if(pid < 0){
    20ce:	0f 88 d7 00 00 00    	js     21ab <linkunlink+0x10b>
  unsigned int x = (pid ? 1 : 97);
    20d4:	83 7d d4 01          	cmpl   $0x1,-0x2c(%ebp)
    20d8:	19 ff                	sbb    %edi,%edi
    20da:	83 e7 60             	and    $0x60,%edi
    20dd:	83 c7 01             	add    $0x1,%edi
    20e0:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    20e5:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
    20ea:	eb 22                	jmp    210e <linkunlink+0x6e>
    20ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    20f0:	83 fa 01             	cmp    $0x1,%edx
    20f3:	0f 84 87 00 00 00    	je     2180 <linkunlink+0xe0>
      unlink("x");
    20f9:	83 ec 0c             	sub    $0xc,%esp
    20fc:	68 a9 53 00 00       	push   $0x53a9
    2101:	e8 2c 25 00 00       	call   4632 <unlink>
    2106:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    2109:	83 eb 01             	sub    $0x1,%ebx
    210c:	74 3d                	je     214b <linkunlink+0xab>
    x = x * 1103515245 + 12345;
    210e:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    2114:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    211a:	89 f8                	mov    %edi,%eax
    211c:	f7 e6                	mul    %esi
    211e:	d1 ea                	shr    %edx
    2120:	8d 04 52             	lea    (%edx,%edx,2),%eax
    2123:	89 fa                	mov    %edi,%edx
    2125:	29 c2                	sub    %eax,%edx
    2127:	75 c7                	jne    20f0 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    2129:	83 ec 08             	sub    $0x8,%esp
    212c:	68 02 02 00 00       	push   $0x202
    2131:	68 a9 53 00 00       	push   $0x53a9
    2136:	e8 e7 24 00 00       	call   4622 <open>
    213b:	89 04 24             	mov    %eax,(%esp)
    213e:	e8 c7 24 00 00       	call   460a <close>
    2143:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    2146:	83 eb 01             	sub    $0x1,%ebx
    2149:	75 c3                	jne    210e <linkunlink+0x6e>
  if(pid)
    214b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    214e:	85 c0                	test   %eax,%eax
    2150:	75 48                	jne    219a <linkunlink+0xfa>
    exit(0);
    2152:	83 ec 0c             	sub    $0xc,%esp
    2155:	6a 00                	push   $0x0
    2157:	e8 86 24 00 00       	call   45e2 <exit>
    215c:	83 c4 10             	add    $0x10,%esp
  printf(1, "linkunlink ok\n");
    215f:	83 ec 08             	sub    $0x8,%esp
    2162:	68 31 51 00 00       	push   $0x5131
    2167:	6a 01                	push   $0x1
    2169:	e8 c2 25 00 00       	call   4730 <printf>
}
    216e:	83 c4 10             	add    $0x10,%esp
    2171:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2174:	5b                   	pop    %ebx
    2175:	5e                   	pop    %esi
    2176:	5f                   	pop    %edi
    2177:	5d                   	pop    %ebp
    2178:	c3                   	ret    
    2179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      link("cat", "x");
    2180:	83 ec 08             	sub    $0x8,%esp
    2183:	68 a9 53 00 00       	push   $0x53a9
    2188:	68 2d 51 00 00       	push   $0x512d
    218d:	e8 b0 24 00 00       	call   4642 <link>
    2192:	83 c4 10             	add    $0x10,%esp
    2195:	e9 6f ff ff ff       	jmp    2109 <linkunlink+0x69>
    wait(&child_status);
    219a:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    219d:	83 ec 0c             	sub    $0xc,%esp
    21a0:	50                   	push   %eax
    21a1:	e8 44 24 00 00       	call   45ea <wait>
    21a6:	83 c4 10             	add    $0x10,%esp
    21a9:	eb b4                	jmp    215f <linkunlink+0xbf>
    printf(1, "fork failed\n");
    21ab:	83 ec 08             	sub    $0x8,%esp
  unsigned int x = (pid ? 1 : 97);
    21ae:	bf 01 00 00 00       	mov    $0x1,%edi
    printf(1, "fork failed\n");
    21b3:	68 91 59 00 00       	push   $0x5991
    21b8:	6a 01                	push   $0x1
    21ba:	e8 71 25 00 00       	call   4730 <printf>
    exit(0);
    21bf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    21c6:	e8 17 24 00 00       	call   45e2 <exit>
    21cb:	83 c4 10             	add    $0x10,%esp
    21ce:	e9 0d ff ff ff       	jmp    20e0 <linkunlink+0x40>
    21d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    21d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000021e0 <bigdir>:
{
    21e0:	55                   	push   %ebp
    21e1:	89 e5                	mov    %esp,%ebp
    21e3:	56                   	push   %esi
    21e4:	53                   	push   %ebx
    21e5:	83 ec 28             	sub    $0x28,%esp
  printf(1, "bigdir test\n");
    21e8:	68 40 51 00 00       	push   $0x5140
    21ed:	6a 01                	push   $0x1
    21ef:	e8 3c 25 00 00       	call   4730 <printf>
  unlink("bd");
    21f4:	c7 04 24 4d 51 00 00 	movl   $0x514d,(%esp)
    21fb:	e8 32 24 00 00       	call   4632 <unlink>
  fd = open("bd", O_CREATE);
    2200:	58                   	pop    %eax
    2201:	5a                   	pop    %edx
    2202:	68 00 02 00 00       	push   $0x200
    2207:	68 4d 51 00 00       	push   $0x514d
    220c:	e8 11 24 00 00       	call   4622 <open>
  if(fd < 0){
    2211:	83 c4 10             	add    $0x10,%esp
    2214:	85 c0                	test   %eax,%eax
    2216:	0f 88 0f 01 00 00    	js     232b <bigdir+0x14b>
  close(fd);
    221c:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    221f:	31 db                	xor    %ebx,%ebx
    2221:	8d 75 ee             	lea    -0x12(%ebp),%esi
  close(fd);
    2224:	50                   	push   %eax
    2225:	e8 e0 23 00 00       	call   460a <close>
    222a:	83 c4 10             	add    $0x10,%esp
    222d:	eb 0c                	jmp    223b <bigdir+0x5b>
    222f:	90                   	nop
  for(i = 0; i < 500; i++){
    2230:	83 c3 01             	add    $0x1,%ebx
    2233:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2239:	74 5c                	je     2297 <bigdir+0xb7>
    name[1] = '0' + (i / 64);
    223b:	89 d8                	mov    %ebx,%eax
    if(link("bd", name) != 0){
    223d:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    2240:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    2244:	c1 f8 06             	sar    $0x6,%eax
    if(link("bd", name) != 0){
    2247:	56                   	push   %esi
    2248:	68 4d 51 00 00       	push   $0x514d
    name[1] = '0' + (i / 64);
    224d:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    2250:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    name[1] = '0' + (i / 64);
    2254:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    2257:	89 d8                	mov    %ebx,%eax
    2259:	83 e0 3f             	and    $0x3f,%eax
    225c:	83 c0 30             	add    $0x30,%eax
    225f:	88 45 f0             	mov    %al,-0x10(%ebp)
    if(link("bd", name) != 0){
    2262:	e8 db 23 00 00       	call   4642 <link>
    2267:	83 c4 10             	add    $0x10,%esp
    226a:	85 c0                	test   %eax,%eax
    226c:	74 c2                	je     2230 <bigdir+0x50>
      printf(1, "bigdir link failed\n");
    226e:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 500; i++){
    2271:	83 c3 01             	add    $0x1,%ebx
      printf(1, "bigdir link failed\n");
    2274:	68 66 51 00 00       	push   $0x5166
    2279:	6a 01                	push   $0x1
    227b:	e8 b0 24 00 00       	call   4730 <printf>
      exit(0);
    2280:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2287:	e8 56 23 00 00       	call   45e2 <exit>
    228c:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 500; i++){
    228f:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2295:	75 a4                	jne    223b <bigdir+0x5b>
  unlink("bd");
    2297:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    229a:	31 db                	xor    %ebx,%ebx
  unlink("bd");
    229c:	68 4d 51 00 00       	push   $0x514d
    22a1:	e8 8c 23 00 00       	call   4632 <unlink>
    22a6:	83 c4 10             	add    $0x10,%esp
    22a9:	eb 10                	jmp    22bb <bigdir+0xdb>
    22ab:	90                   	nop
    22ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 500; i++){
    22b0:	83 c3 01             	add    $0x1,%ebx
    22b3:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    22b9:	74 57                	je     2312 <bigdir+0x132>
    name[1] = '0' + (i / 64);
    22bb:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    22bd:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    22c0:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[1] = '0' + (i / 64);
    22c4:	c1 f8 06             	sar    $0x6,%eax
    if(unlink(name) != 0){
    22c7:	56                   	push   %esi
    name[3] = '\0';
    22c8:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    name[1] = '0' + (i / 64);
    22cc:	83 c0 30             	add    $0x30,%eax
    22cf:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    22d2:	89 d8                	mov    %ebx,%eax
    22d4:	83 e0 3f             	and    $0x3f,%eax
    22d7:	83 c0 30             	add    $0x30,%eax
    22da:	88 45 f0             	mov    %al,-0x10(%ebp)
    if(unlink(name) != 0){
    22dd:	e8 50 23 00 00       	call   4632 <unlink>
    22e2:	83 c4 10             	add    $0x10,%esp
    22e5:	85 c0                	test   %eax,%eax
    22e7:	74 c7                	je     22b0 <bigdir+0xd0>
      printf(1, "bigdir unlink failed");
    22e9:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 500; i++){
    22ec:	83 c3 01             	add    $0x1,%ebx
      printf(1, "bigdir unlink failed");
    22ef:	68 7a 51 00 00       	push   $0x517a
    22f4:	6a 01                	push   $0x1
    22f6:	e8 35 24 00 00       	call   4730 <printf>
      exit(0);
    22fb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2302:	e8 db 22 00 00       	call   45e2 <exit>
    2307:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 500; i++){
    230a:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2310:	75 a9                	jne    22bb <bigdir+0xdb>
  printf(1, "bigdir ok\n");
    2312:	83 ec 08             	sub    $0x8,%esp
    2315:	68 8f 51 00 00       	push   $0x518f
    231a:	6a 01                	push   $0x1
    231c:	e8 0f 24 00 00       	call   4730 <printf>
}
    2321:	83 c4 10             	add    $0x10,%esp
    2324:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2327:	5b                   	pop    %ebx
    2328:	5e                   	pop    %esi
    2329:	5d                   	pop    %ebp
    232a:	c3                   	ret    
    printf(1, "bigdir create failed\n");
    232b:	83 ec 08             	sub    $0x8,%esp
    232e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    2331:	68 50 51 00 00       	push   $0x5150
    2336:	6a 01                	push   $0x1
    2338:	e8 f3 23 00 00       	call   4730 <printf>
    exit(0);
    233d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2344:	e8 99 22 00 00       	call   45e2 <exit>
    2349:	83 c4 10             	add    $0x10,%esp
    234c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    234f:	e9 c8 fe ff ff       	jmp    221c <bigdir+0x3c>
    2354:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    235a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00002360 <subdir>:
{
    2360:	55                   	push   %ebp
    2361:	89 e5                	mov    %esp,%ebp
    2363:	53                   	push   %ebx
    2364:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    2367:	68 9a 51 00 00       	push   $0x519a
    236c:	6a 01                	push   $0x1
    236e:	e8 bd 23 00 00       	call   4730 <printf>
  unlink("ff");
    2373:	c7 04 24 23 52 00 00 	movl   $0x5223,(%esp)
    237a:	e8 b3 22 00 00       	call   4632 <unlink>
  if(mkdir("dd") != 0){
    237f:	c7 04 24 c0 52 00 00 	movl   $0x52c0,(%esp)
    2386:	e8 bf 22 00 00       	call   464a <mkdir>
    238b:	83 c4 10             	add    $0x10,%esp
    238e:	85 c0                	test   %eax,%eax
    2390:	0f 85 52 05 00 00    	jne    28e8 <subdir+0x588>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    2396:	83 ec 08             	sub    $0x8,%esp
    2399:	68 02 02 00 00       	push   $0x202
    239e:	68 f9 51 00 00       	push   $0x51f9
    23a3:	e8 7a 22 00 00       	call   4622 <open>
  if(fd < 0){
    23a8:	83 c4 10             	add    $0x10,%esp
    23ab:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    23ad:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    23af:	0f 88 f3 08 00 00    	js     2ca8 <subdir+0x948>
  write(fd, "ff", 2);
    23b5:	83 ec 04             	sub    $0x4,%esp
    23b8:	6a 02                	push   $0x2
    23ba:	68 23 52 00 00       	push   $0x5223
    23bf:	53                   	push   %ebx
    23c0:	e8 3d 22 00 00       	call   4602 <write>
  close(fd);
    23c5:	89 1c 24             	mov    %ebx,(%esp)
    23c8:	e8 3d 22 00 00       	call   460a <close>
  if(unlink("dd") >= 0){
    23cd:	c7 04 24 c0 52 00 00 	movl   $0x52c0,(%esp)
    23d4:	e8 59 22 00 00       	call   4632 <unlink>
    23d9:	83 c4 10             	add    $0x10,%esp
    23dc:	85 c0                	test   %eax,%eax
    23de:	78 1e                	js     23fe <subdir+0x9e>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    23e0:	83 ec 08             	sub    $0x8,%esp
    23e3:	68 8c 5c 00 00       	push   $0x5c8c
    23e8:	6a 01                	push   $0x1
    23ea:	e8 41 23 00 00       	call   4730 <printf>
    exit(0);
    23ef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    23f6:	e8 e7 21 00 00       	call   45e2 <exit>
    23fb:	83 c4 10             	add    $0x10,%esp
  if(mkdir("/dd/dd") != 0){
    23fe:	83 ec 0c             	sub    $0xc,%esp
    2401:	68 d4 51 00 00       	push   $0x51d4
    2406:	e8 3f 22 00 00       	call   464a <mkdir>
    240b:	83 c4 10             	add    $0x10,%esp
    240e:	85 c0                	test   %eax,%eax
    2410:	0f 85 aa 04 00 00    	jne    28c0 <subdir+0x560>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2416:	83 ec 08             	sub    $0x8,%esp
    2419:	68 02 02 00 00       	push   $0x202
    241e:	68 f6 51 00 00       	push   $0x51f6
    2423:	e8 fa 21 00 00       	call   4622 <open>
  if(fd < 0){
    2428:	83 c4 10             	add    $0x10,%esp
    242b:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    242d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    242f:	0f 88 fb 07 00 00    	js     2c30 <subdir+0x8d0>
  write(fd, "FF", 2);
    2435:	83 ec 04             	sub    $0x4,%esp
    2438:	6a 02                	push   $0x2
    243a:	68 17 52 00 00       	push   $0x5217
    243f:	53                   	push   %ebx
    2440:	e8 bd 21 00 00       	call   4602 <write>
  close(fd);
    2445:	89 1c 24             	mov    %ebx,(%esp)
    2448:	e8 bd 21 00 00       	call   460a <close>
  fd = open("dd/dd/../ff", 0);
    244d:	58                   	pop    %eax
    244e:	5a                   	pop    %edx
    244f:	6a 00                	push   $0x0
    2451:	68 1a 52 00 00       	push   $0x521a
    2456:	e8 c7 21 00 00       	call   4622 <open>
  if(fd < 0){
    245b:	83 c4 10             	add    $0x10,%esp
    245e:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    2460:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2462:	0f 88 f0 07 00 00    	js     2c58 <subdir+0x8f8>
  cc = read(fd, buf, sizeof(buf));
    2468:	83 ec 04             	sub    $0x4,%esp
    246b:	68 00 20 00 00       	push   $0x2000
    2470:	68 00 93 00 00       	push   $0x9300
    2475:	53                   	push   %ebx
    2476:	e8 7f 21 00 00       	call   45fa <read>
  if(cc != 2 || buf[0] != 'f'){
    247b:	83 c4 10             	add    $0x10,%esp
    247e:	83 f8 02             	cmp    $0x2,%eax
    2481:	0f 84 21 04 00 00    	je     28a8 <subdir+0x548>
    printf(1, "dd/dd/../ff wrong content\n");
    2487:	83 ec 08             	sub    $0x8,%esp
    248a:	68 3f 52 00 00       	push   $0x523f
    248f:	6a 01                	push   $0x1
    2491:	e8 9a 22 00 00       	call   4730 <printf>
    exit(0);
    2496:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    249d:	e8 40 21 00 00       	call   45e2 <exit>
    24a2:	83 c4 10             	add    $0x10,%esp
  close(fd);
    24a5:	83 ec 0c             	sub    $0xc,%esp
    24a8:	53                   	push   %ebx
    24a9:	e8 5c 21 00 00       	call   460a <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    24ae:	59                   	pop    %ecx
    24af:	5b                   	pop    %ebx
    24b0:	68 5a 52 00 00       	push   $0x525a
    24b5:	68 f6 51 00 00       	push   $0x51f6
    24ba:	e8 83 21 00 00       	call   4642 <link>
    24bf:	83 c4 10             	add    $0x10,%esp
    24c2:	85 c0                	test   %eax,%eax
    24c4:	0f 85 16 07 00 00    	jne    2be0 <subdir+0x880>
  if(unlink("dd/dd/ff") != 0){
    24ca:	83 ec 0c             	sub    $0xc,%esp
    24cd:	68 f6 51 00 00       	push   $0x51f6
    24d2:	e8 5b 21 00 00       	call   4632 <unlink>
    24d7:	83 c4 10             	add    $0x10,%esp
    24da:	85 c0                	test   %eax,%eax
    24dc:	0f 85 d6 06 00 00    	jne    2bb8 <subdir+0x858>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    24e2:	83 ec 08             	sub    $0x8,%esp
    24e5:	6a 00                	push   $0x0
    24e7:	68 f6 51 00 00       	push   $0x51f6
    24ec:	e8 31 21 00 00       	call   4622 <open>
    24f1:	83 c4 10             	add    $0x10,%esp
    24f4:	85 c0                	test   %eax,%eax
    24f6:	78 1e                	js     2516 <subdir+0x1b6>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    24f8:	83 ec 08             	sub    $0x8,%esp
    24fb:	68 d8 5c 00 00       	push   $0x5cd8
    2500:	6a 01                	push   $0x1
    2502:	e8 29 22 00 00       	call   4730 <printf>
    exit(0);
    2507:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    250e:	e8 cf 20 00 00       	call   45e2 <exit>
    2513:	83 c4 10             	add    $0x10,%esp
  if(chdir("dd") != 0){
    2516:	83 ec 0c             	sub    $0xc,%esp
    2519:	68 c0 52 00 00       	push   $0x52c0
    251e:	e8 2f 21 00 00       	call   4652 <chdir>
    2523:	83 c4 10             	add    $0x10,%esp
    2526:	85 c0                	test   %eax,%eax
    2528:	0f 85 62 06 00 00    	jne    2b90 <subdir+0x830>
  if(chdir("dd/../../dd") != 0){
    252e:	83 ec 0c             	sub    $0xc,%esp
    2531:	68 8e 52 00 00       	push   $0x528e
    2536:	e8 17 21 00 00       	call   4652 <chdir>
    253b:	83 c4 10             	add    $0x10,%esp
    253e:	85 c0                	test   %eax,%eax
    2540:	0f 85 22 06 00 00    	jne    2b68 <subdir+0x808>
  if(chdir("dd/../../../dd") != 0){
    2546:	83 ec 0c             	sub    $0xc,%esp
    2549:	68 b4 52 00 00       	push   $0x52b4
    254e:	e8 ff 20 00 00       	call   4652 <chdir>
    2553:	83 c4 10             	add    $0x10,%esp
    2556:	85 c0                	test   %eax,%eax
    2558:	0f 85 e2 05 00 00    	jne    2b40 <subdir+0x7e0>
  if(chdir("./..") != 0){
    255e:	83 ec 0c             	sub    $0xc,%esp
    2561:	68 c3 52 00 00       	push   $0x52c3
    2566:	e8 e7 20 00 00       	call   4652 <chdir>
    256b:	83 c4 10             	add    $0x10,%esp
    256e:	85 c0                	test   %eax,%eax
    2570:	0f 85 a2 05 00 00    	jne    2b18 <subdir+0x7b8>
  fd = open("dd/dd/ffff", 0);
    2576:	83 ec 08             	sub    $0x8,%esp
    2579:	6a 00                	push   $0x0
    257b:	68 5a 52 00 00       	push   $0x525a
    2580:	e8 9d 20 00 00       	call   4622 <open>
  if(fd < 0){
    2585:	83 c4 10             	add    $0x10,%esp
    2588:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    258a:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    258c:	0f 88 ee 06 00 00    	js     2c80 <subdir+0x920>
  if(read(fd, buf, sizeof(buf)) != 2){
    2592:	83 ec 04             	sub    $0x4,%esp
    2595:	68 00 20 00 00       	push   $0x2000
    259a:	68 00 93 00 00       	push   $0x9300
    259f:	53                   	push   %ebx
    25a0:	e8 55 20 00 00       	call   45fa <read>
    25a5:	83 c4 10             	add    $0x10,%esp
    25a8:	83 f8 02             	cmp    $0x2,%eax
    25ab:	74 1e                	je     25cb <subdir+0x26b>
    printf(1, "read dd/dd/ffff wrong len\n");
    25ad:	83 ec 08             	sub    $0x8,%esp
    25b0:	68 f3 52 00 00       	push   $0x52f3
    25b5:	6a 01                	push   $0x1
    25b7:	e8 74 21 00 00       	call   4730 <printf>
    exit(0);
    25bc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25c3:	e8 1a 20 00 00       	call   45e2 <exit>
    25c8:	83 c4 10             	add    $0x10,%esp
  close(fd);
    25cb:	83 ec 0c             	sub    $0xc,%esp
    25ce:	53                   	push   %ebx
    25cf:	e8 36 20 00 00       	call   460a <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    25d4:	58                   	pop    %eax
    25d5:	5a                   	pop    %edx
    25d6:	6a 00                	push   $0x0
    25d8:	68 f6 51 00 00       	push   $0x51f6
    25dd:	e8 40 20 00 00       	call   4622 <open>
    25e2:	83 c4 10             	add    $0x10,%esp
    25e5:	85 c0                	test   %eax,%eax
    25e7:	78 1e                	js     2607 <subdir+0x2a7>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    25e9:	83 ec 08             	sub    $0x8,%esp
    25ec:	68 fc 5c 00 00       	push   $0x5cfc
    25f1:	6a 01                	push   $0x1
    25f3:	e8 38 21 00 00       	call   4730 <printf>
    exit(0);
    25f8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25ff:	e8 de 1f 00 00       	call   45e2 <exit>
    2604:	83 c4 10             	add    $0x10,%esp
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    2607:	83 ec 08             	sub    $0x8,%esp
    260a:	68 02 02 00 00       	push   $0x202
    260f:	68 0e 53 00 00       	push   $0x530e
    2614:	e8 09 20 00 00       	call   4622 <open>
    2619:	83 c4 10             	add    $0x10,%esp
    261c:	85 c0                	test   %eax,%eax
    261e:	78 1e                	js     263e <subdir+0x2de>
    printf(1, "create dd/ff/ff succeeded!\n");
    2620:	83 ec 08             	sub    $0x8,%esp
    2623:	68 17 53 00 00       	push   $0x5317
    2628:	6a 01                	push   $0x1
    262a:	e8 01 21 00 00       	call   4730 <printf>
    exit(0);
    262f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2636:	e8 a7 1f 00 00       	call   45e2 <exit>
    263b:	83 c4 10             	add    $0x10,%esp
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    263e:	83 ec 08             	sub    $0x8,%esp
    2641:	68 02 02 00 00       	push   $0x202
    2646:	68 33 53 00 00       	push   $0x5333
    264b:	e8 d2 1f 00 00       	call   4622 <open>
    2650:	83 c4 10             	add    $0x10,%esp
    2653:	85 c0                	test   %eax,%eax
    2655:	78 1e                	js     2675 <subdir+0x315>
    printf(1, "create dd/xx/ff succeeded!\n");
    2657:	83 ec 08             	sub    $0x8,%esp
    265a:	68 3c 53 00 00       	push   $0x533c
    265f:	6a 01                	push   $0x1
    2661:	e8 ca 20 00 00       	call   4730 <printf>
    exit(0);
    2666:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    266d:	e8 70 1f 00 00       	call   45e2 <exit>
    2672:	83 c4 10             	add    $0x10,%esp
  if(open("dd", O_CREATE) >= 0){
    2675:	83 ec 08             	sub    $0x8,%esp
    2678:	68 00 02 00 00       	push   $0x200
    267d:	68 c0 52 00 00       	push   $0x52c0
    2682:	e8 9b 1f 00 00       	call   4622 <open>
    2687:	83 c4 10             	add    $0x10,%esp
    268a:	85 c0                	test   %eax,%eax
    268c:	78 1e                	js     26ac <subdir+0x34c>
    printf(1, "create dd succeeded!\n");
    268e:	83 ec 08             	sub    $0x8,%esp
    2691:	68 58 53 00 00       	push   $0x5358
    2696:	6a 01                	push   $0x1
    2698:	e8 93 20 00 00       	call   4730 <printf>
    exit(0);
    269d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26a4:	e8 39 1f 00 00       	call   45e2 <exit>
    26a9:	83 c4 10             	add    $0x10,%esp
  if(open("dd", O_RDWR) >= 0){
    26ac:	83 ec 08             	sub    $0x8,%esp
    26af:	6a 02                	push   $0x2
    26b1:	68 c0 52 00 00       	push   $0x52c0
    26b6:	e8 67 1f 00 00       	call   4622 <open>
    26bb:	83 c4 10             	add    $0x10,%esp
    26be:	85 c0                	test   %eax,%eax
    26c0:	78 1e                	js     26e0 <subdir+0x380>
    printf(1, "open dd rdwr succeeded!\n");
    26c2:	83 ec 08             	sub    $0x8,%esp
    26c5:	68 6e 53 00 00       	push   $0x536e
    26ca:	6a 01                	push   $0x1
    26cc:	e8 5f 20 00 00       	call   4730 <printf>
    exit(0);
    26d1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26d8:	e8 05 1f 00 00       	call   45e2 <exit>
    26dd:	83 c4 10             	add    $0x10,%esp
  if(open("dd", O_WRONLY) >= 0){
    26e0:	83 ec 08             	sub    $0x8,%esp
    26e3:	6a 01                	push   $0x1
    26e5:	68 c0 52 00 00       	push   $0x52c0
    26ea:	e8 33 1f 00 00       	call   4622 <open>
    26ef:	83 c4 10             	add    $0x10,%esp
    26f2:	85 c0                	test   %eax,%eax
    26f4:	78 1e                	js     2714 <subdir+0x3b4>
    printf(1, "open dd wronly succeeded!\n");
    26f6:	83 ec 08             	sub    $0x8,%esp
    26f9:	68 87 53 00 00       	push   $0x5387
    26fe:	6a 01                	push   $0x1
    2700:	e8 2b 20 00 00       	call   4730 <printf>
    exit(0);
    2705:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    270c:	e8 d1 1e 00 00       	call   45e2 <exit>
    2711:	83 c4 10             	add    $0x10,%esp
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    2714:	83 ec 08             	sub    $0x8,%esp
    2717:	68 a2 53 00 00       	push   $0x53a2
    271c:	68 0e 53 00 00       	push   $0x530e
    2721:	e8 1c 1f 00 00       	call   4642 <link>
    2726:	83 c4 10             	add    $0x10,%esp
    2729:	85 c0                	test   %eax,%eax
    272b:	0f 84 bf 03 00 00    	je     2af0 <subdir+0x790>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    2731:	83 ec 08             	sub    $0x8,%esp
    2734:	68 a2 53 00 00       	push   $0x53a2
    2739:	68 33 53 00 00       	push   $0x5333
    273e:	e8 ff 1e 00 00       	call   4642 <link>
    2743:	83 c4 10             	add    $0x10,%esp
    2746:	85 c0                	test   %eax,%eax
    2748:	0f 84 7a 03 00 00    	je     2ac8 <subdir+0x768>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    274e:	83 ec 08             	sub    $0x8,%esp
    2751:	68 5a 52 00 00       	push   $0x525a
    2756:	68 f9 51 00 00       	push   $0x51f9
    275b:	e8 e2 1e 00 00       	call   4642 <link>
    2760:	83 c4 10             	add    $0x10,%esp
    2763:	85 c0                	test   %eax,%eax
    2765:	0f 84 35 03 00 00    	je     2aa0 <subdir+0x740>
  if(mkdir("dd/ff/ff") == 0){
    276b:	83 ec 0c             	sub    $0xc,%esp
    276e:	68 0e 53 00 00       	push   $0x530e
    2773:	e8 d2 1e 00 00       	call   464a <mkdir>
    2778:	83 c4 10             	add    $0x10,%esp
    277b:	85 c0                	test   %eax,%eax
    277d:	0f 84 f5 02 00 00    	je     2a78 <subdir+0x718>
  if(mkdir("dd/xx/ff") == 0){
    2783:	83 ec 0c             	sub    $0xc,%esp
    2786:	68 33 53 00 00       	push   $0x5333
    278b:	e8 ba 1e 00 00       	call   464a <mkdir>
    2790:	83 c4 10             	add    $0x10,%esp
    2793:	85 c0                	test   %eax,%eax
    2795:	0f 84 b5 02 00 00    	je     2a50 <subdir+0x6f0>
  if(mkdir("dd/dd/ffff") == 0){
    279b:	83 ec 0c             	sub    $0xc,%esp
    279e:	68 5a 52 00 00       	push   $0x525a
    27a3:	e8 a2 1e 00 00       	call   464a <mkdir>
    27a8:	83 c4 10             	add    $0x10,%esp
    27ab:	85 c0                	test   %eax,%eax
    27ad:	0f 84 75 02 00 00    	je     2a28 <subdir+0x6c8>
  if(unlink("dd/xx/ff") == 0){
    27b3:	83 ec 0c             	sub    $0xc,%esp
    27b6:	68 33 53 00 00       	push   $0x5333
    27bb:	e8 72 1e 00 00       	call   4632 <unlink>
    27c0:	83 c4 10             	add    $0x10,%esp
    27c3:	85 c0                	test   %eax,%eax
    27c5:	0f 84 35 02 00 00    	je     2a00 <subdir+0x6a0>
  if(unlink("dd/ff/ff") == 0){
    27cb:	83 ec 0c             	sub    $0xc,%esp
    27ce:	68 0e 53 00 00       	push   $0x530e
    27d3:	e8 5a 1e 00 00       	call   4632 <unlink>
    27d8:	83 c4 10             	add    $0x10,%esp
    27db:	85 c0                	test   %eax,%eax
    27dd:	0f 84 f5 01 00 00    	je     29d8 <subdir+0x678>
  if(chdir("dd/ff") == 0){
    27e3:	83 ec 0c             	sub    $0xc,%esp
    27e6:	68 f9 51 00 00       	push   $0x51f9
    27eb:	e8 62 1e 00 00       	call   4652 <chdir>
    27f0:	83 c4 10             	add    $0x10,%esp
    27f3:	85 c0                	test   %eax,%eax
    27f5:	0f 84 b5 01 00 00    	je     29b0 <subdir+0x650>
  if(chdir("dd/xx") == 0){
    27fb:	83 ec 0c             	sub    $0xc,%esp
    27fe:	68 a5 53 00 00       	push   $0x53a5
    2803:	e8 4a 1e 00 00       	call   4652 <chdir>
    2808:	83 c4 10             	add    $0x10,%esp
    280b:	85 c0                	test   %eax,%eax
    280d:	0f 84 75 01 00 00    	je     2988 <subdir+0x628>
  if(unlink("dd/dd/ffff") != 0){
    2813:	83 ec 0c             	sub    $0xc,%esp
    2816:	68 5a 52 00 00       	push   $0x525a
    281b:	e8 12 1e 00 00       	call   4632 <unlink>
    2820:	83 c4 10             	add    $0x10,%esp
    2823:	85 c0                	test   %eax,%eax
    2825:	0f 85 35 01 00 00    	jne    2960 <subdir+0x600>
  if(unlink("dd/ff") != 0){
    282b:	83 ec 0c             	sub    $0xc,%esp
    282e:	68 f9 51 00 00       	push   $0x51f9
    2833:	e8 fa 1d 00 00       	call   4632 <unlink>
    2838:	83 c4 10             	add    $0x10,%esp
    283b:	85 c0                	test   %eax,%eax
    283d:	0f 85 f5 00 00 00    	jne    2938 <subdir+0x5d8>
  if(unlink("dd") == 0){
    2843:	83 ec 0c             	sub    $0xc,%esp
    2846:	68 c0 52 00 00       	push   $0x52c0
    284b:	e8 e2 1d 00 00       	call   4632 <unlink>
    2850:	83 c4 10             	add    $0x10,%esp
    2853:	85 c0                	test   %eax,%eax
    2855:	0f 84 b5 00 00 00    	je     2910 <subdir+0x5b0>
  if(unlink("dd/dd") < 0){
    285b:	83 ec 0c             	sub    $0xc,%esp
    285e:	68 d5 51 00 00       	push   $0x51d5
    2863:	e8 ca 1d 00 00       	call   4632 <unlink>
    2868:	83 c4 10             	add    $0x10,%esp
    286b:	85 c0                	test   %eax,%eax
    286d:	0f 88 5d 04 00 00    	js     2cd0 <subdir+0x970>
  if(unlink("dd") < 0){
    2873:	83 ec 0c             	sub    $0xc,%esp
    2876:	68 c0 52 00 00       	push   $0x52c0
    287b:	e8 b2 1d 00 00       	call   4632 <unlink>
    2880:	83 c4 10             	add    $0x10,%esp
    2883:	85 c0                	test   %eax,%eax
    2885:	0f 88 7d 03 00 00    	js     2c08 <subdir+0x8a8>
  printf(1, "subdir ok\n");
    288b:	83 ec 08             	sub    $0x8,%esp
    288e:	68 a2 54 00 00       	push   $0x54a2
    2893:	6a 01                	push   $0x1
    2895:	e8 96 1e 00 00       	call   4730 <printf>
}
    289a:	83 c4 10             	add    $0x10,%esp
    289d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    28a0:	c9                   	leave  
    28a1:	c3                   	ret    
    28a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  if(cc != 2 || buf[0] != 'f'){
    28a8:	80 3d 00 93 00 00 66 	cmpb   $0x66,0x9300
    28af:	0f 85 d2 fb ff ff    	jne    2487 <subdir+0x127>
    28b5:	e9 eb fb ff ff       	jmp    24a5 <subdir+0x145>
    28ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "subdir mkdir dd/dd failed\n");
    28c0:	83 ec 08             	sub    $0x8,%esp
    28c3:	68 db 51 00 00       	push   $0x51db
    28c8:	6a 01                	push   $0x1
    28ca:	e8 61 1e 00 00       	call   4730 <printf>
    exit(0);
    28cf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    28d6:	e8 07 1d 00 00       	call   45e2 <exit>
    28db:	83 c4 10             	add    $0x10,%esp
    28de:	e9 33 fb ff ff       	jmp    2416 <subdir+0xb6>
    28e3:	90                   	nop
    28e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "subdir mkdir dd failed\n");
    28e8:	83 ec 08             	sub    $0x8,%esp
    28eb:	68 a7 51 00 00       	push   $0x51a7
    28f0:	6a 01                	push   $0x1
    28f2:	e8 39 1e 00 00       	call   4730 <printf>
    exit(0);
    28f7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    28fe:	e8 df 1c 00 00       	call   45e2 <exit>
    2903:	83 c4 10             	add    $0x10,%esp
    2906:	e9 8b fa ff ff       	jmp    2396 <subdir+0x36>
    290b:	90                   	nop
    290c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink non-empty dd succeeded!\n");
    2910:	83 ec 08             	sub    $0x8,%esp
    2913:	68 90 5d 00 00       	push   $0x5d90
    2918:	6a 01                	push   $0x1
    291a:	e8 11 1e 00 00       	call   4730 <printf>
    exit(0);
    291f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2926:	e8 b7 1c 00 00       	call   45e2 <exit>
    292b:	83 c4 10             	add    $0x10,%esp
    292e:	e9 28 ff ff ff       	jmp    285b <subdir+0x4fb>
    2933:	90                   	nop
    2934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd/ff failed\n");
    2938:	83 ec 08             	sub    $0x8,%esp
    293b:	68 66 54 00 00       	push   $0x5466
    2940:	6a 01                	push   $0x1
    2942:	e8 e9 1d 00 00       	call   4730 <printf>
    exit(0);
    2947:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    294e:	e8 8f 1c 00 00       	call   45e2 <exit>
    2953:	83 c4 10             	add    $0x10,%esp
    2956:	e9 e8 fe ff ff       	jmp    2843 <subdir+0x4e3>
    295b:	90                   	nop
    295c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd/dd/ff failed\n");
    2960:	83 ec 08             	sub    $0x8,%esp
    2963:	68 65 52 00 00       	push   $0x5265
    2968:	6a 01                	push   $0x1
    296a:	e8 c1 1d 00 00       	call   4730 <printf>
    exit(0);
    296f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2976:	e8 67 1c 00 00       	call   45e2 <exit>
    297b:	83 c4 10             	add    $0x10,%esp
    297e:	e9 a8 fe ff ff       	jmp    282b <subdir+0x4cb>
    2983:	90                   	nop
    2984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dd/xx succeeded!\n");
    2988:	83 ec 08             	sub    $0x8,%esp
    298b:	68 4e 54 00 00       	push   $0x544e
    2990:	6a 01                	push   $0x1
    2992:	e8 99 1d 00 00       	call   4730 <printf>
    exit(0);
    2997:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    299e:	e8 3f 1c 00 00       	call   45e2 <exit>
    29a3:	83 c4 10             	add    $0x10,%esp
    29a6:	e9 68 fe ff ff       	jmp    2813 <subdir+0x4b3>
    29ab:	90                   	nop
    29ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dd/ff succeeded!\n");
    29b0:	83 ec 08             	sub    $0x8,%esp
    29b3:	68 36 54 00 00       	push   $0x5436
    29b8:	6a 01                	push   $0x1
    29ba:	e8 71 1d 00 00       	call   4730 <printf>
    exit(0);
    29bf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29c6:	e8 17 1c 00 00       	call   45e2 <exit>
    29cb:	83 c4 10             	add    $0x10,%esp
    29ce:	e9 28 fe ff ff       	jmp    27fb <subdir+0x49b>
    29d3:	90                   	nop
    29d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd/ff/ff succeeded!\n");
    29d8:	83 ec 08             	sub    $0x8,%esp
    29db:	68 1a 54 00 00       	push   $0x541a
    29e0:	6a 01                	push   $0x1
    29e2:	e8 49 1d 00 00       	call   4730 <printf>
    exit(0);
    29e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29ee:	e8 ef 1b 00 00       	call   45e2 <exit>
    29f3:	83 c4 10             	add    $0x10,%esp
    29f6:	e9 e8 fd ff ff       	jmp    27e3 <subdir+0x483>
    29fb:	90                   	nop
    29fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd/xx/ff succeeded!\n");
    2a00:	83 ec 08             	sub    $0x8,%esp
    2a03:	68 fe 53 00 00       	push   $0x53fe
    2a08:	6a 01                	push   $0x1
    2a0a:	e8 21 1d 00 00       	call   4730 <printf>
    exit(0);
    2a0f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a16:	e8 c7 1b 00 00       	call   45e2 <exit>
    2a1b:	83 c4 10             	add    $0x10,%esp
    2a1e:	e9 a8 fd ff ff       	jmp    27cb <subdir+0x46b>
    2a23:	90                   	nop
    2a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    2a28:	83 ec 08             	sub    $0x8,%esp
    2a2b:	68 e1 53 00 00       	push   $0x53e1
    2a30:	6a 01                	push   $0x1
    2a32:	e8 f9 1c 00 00       	call   4730 <printf>
    exit(0);
    2a37:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a3e:	e8 9f 1b 00 00       	call   45e2 <exit>
    2a43:	83 c4 10             	add    $0x10,%esp
    2a46:	e9 68 fd ff ff       	jmp    27b3 <subdir+0x453>
    2a4b:	90                   	nop
    2a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    2a50:	83 ec 08             	sub    $0x8,%esp
    2a53:	68 c6 53 00 00       	push   $0x53c6
    2a58:	6a 01                	push   $0x1
    2a5a:	e8 d1 1c 00 00       	call   4730 <printf>
    exit(0);
    2a5f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a66:	e8 77 1b 00 00       	call   45e2 <exit>
    2a6b:	83 c4 10             	add    $0x10,%esp
    2a6e:	e9 28 fd ff ff       	jmp    279b <subdir+0x43b>
    2a73:	90                   	nop
    2a74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    2a78:	83 ec 08             	sub    $0x8,%esp
    2a7b:	68 ab 53 00 00       	push   $0x53ab
    2a80:	6a 01                	push   $0x1
    2a82:	e8 a9 1c 00 00       	call   4730 <printf>
    exit(0);
    2a87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2a8e:	e8 4f 1b 00 00       	call   45e2 <exit>
    2a93:	83 c4 10             	add    $0x10,%esp
    2a96:	e9 e8 fc ff ff       	jmp    2783 <subdir+0x423>
    2a9b:	90                   	nop
    2a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    2aa0:	83 ec 08             	sub    $0x8,%esp
    2aa3:	68 6c 5d 00 00       	push   $0x5d6c
    2aa8:	6a 01                	push   $0x1
    2aaa:	e8 81 1c 00 00       	call   4730 <printf>
    exit(0);
    2aaf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ab6:	e8 27 1b 00 00       	call   45e2 <exit>
    2abb:	83 c4 10             	add    $0x10,%esp
    2abe:	e9 a8 fc ff ff       	jmp    276b <subdir+0x40b>
    2ac3:	90                   	nop
    2ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2ac8:	83 ec 08             	sub    $0x8,%esp
    2acb:	68 48 5d 00 00       	push   $0x5d48
    2ad0:	6a 01                	push   $0x1
    2ad2:	e8 59 1c 00 00       	call   4730 <printf>
    exit(0);
    2ad7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ade:	e8 ff 1a 00 00       	call   45e2 <exit>
    2ae3:	83 c4 10             	add    $0x10,%esp
    2ae6:	e9 63 fc ff ff       	jmp    274e <subdir+0x3ee>
    2aeb:	90                   	nop
    2aec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    2af0:	83 ec 08             	sub    $0x8,%esp
    2af3:	68 24 5d 00 00       	push   $0x5d24
    2af8:	6a 01                	push   $0x1
    2afa:	e8 31 1c 00 00       	call   4730 <printf>
    exit(0);
    2aff:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b06:	e8 d7 1a 00 00       	call   45e2 <exit>
    2b0b:	83 c4 10             	add    $0x10,%esp
    2b0e:	e9 1e fc ff ff       	jmp    2731 <subdir+0x3d1>
    2b13:	90                   	nop
    2b14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir ./.. failed\n");
    2b18:	83 ec 08             	sub    $0x8,%esp
    2b1b:	68 c8 52 00 00       	push   $0x52c8
    2b20:	6a 01                	push   $0x1
    2b22:	e8 09 1c 00 00       	call   4730 <printf>
    exit(0);
    2b27:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b2e:	e8 af 1a 00 00       	call   45e2 <exit>
    2b33:	83 c4 10             	add    $0x10,%esp
    2b36:	e9 3b fa ff ff       	jmp    2576 <subdir+0x216>
    2b3b:	90                   	nop
    2b3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dd/../../dd failed\n");
    2b40:	83 ec 08             	sub    $0x8,%esp
    2b43:	68 9a 52 00 00       	push   $0x529a
    2b48:	6a 01                	push   $0x1
    2b4a:	e8 e1 1b 00 00       	call   4730 <printf>
    exit(0);
    2b4f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b56:	e8 87 1a 00 00       	call   45e2 <exit>
    2b5b:	83 c4 10             	add    $0x10,%esp
    2b5e:	e9 fb f9 ff ff       	jmp    255e <subdir+0x1fe>
    2b63:	90                   	nop
    2b64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dd/../../dd failed\n");
    2b68:	83 ec 08             	sub    $0x8,%esp
    2b6b:	68 9a 52 00 00       	push   $0x529a
    2b70:	6a 01                	push   $0x1
    2b72:	e8 b9 1b 00 00       	call   4730 <printf>
    exit(0);
    2b77:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b7e:	e8 5f 1a 00 00       	call   45e2 <exit>
    2b83:	83 c4 10             	add    $0x10,%esp
    2b86:	e9 bb f9 ff ff       	jmp    2546 <subdir+0x1e6>
    2b8b:	90                   	nop
    2b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dd failed\n");
    2b90:	83 ec 08             	sub    $0x8,%esp
    2b93:	68 7d 52 00 00       	push   $0x527d
    2b98:	6a 01                	push   $0x1
    2b9a:	e8 91 1b 00 00       	call   4730 <printf>
    exit(0);
    2b9f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ba6:	e8 37 1a 00 00       	call   45e2 <exit>
    2bab:	83 c4 10             	add    $0x10,%esp
    2bae:	e9 7b f9 ff ff       	jmp    252e <subdir+0x1ce>
    2bb3:	90                   	nop
    2bb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd/dd/ff failed\n");
    2bb8:	83 ec 08             	sub    $0x8,%esp
    2bbb:	68 65 52 00 00       	push   $0x5265
    2bc0:	6a 01                	push   $0x1
    2bc2:	e8 69 1b 00 00       	call   4730 <printf>
    exit(0);
    2bc7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bce:	e8 0f 1a 00 00       	call   45e2 <exit>
    2bd3:	83 c4 10             	add    $0x10,%esp
    2bd6:	e9 07 f9 ff ff       	jmp    24e2 <subdir+0x182>
    2bdb:	90                   	nop
    2bdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2be0:	83 ec 08             	sub    $0x8,%esp
    2be3:	68 b4 5c 00 00       	push   $0x5cb4
    2be8:	6a 01                	push   $0x1
    2bea:	e8 41 1b 00 00       	call   4730 <printf>
    exit(0);
    2bef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bf6:	e8 e7 19 00 00       	call   45e2 <exit>
    2bfb:	83 c4 10             	add    $0x10,%esp
    2bfe:	e9 c7 f8 ff ff       	jmp    24ca <subdir+0x16a>
    2c03:	90                   	nop
    2c04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd failed\n");
    2c08:	83 ec 08             	sub    $0x8,%esp
    2c0b:	68 90 54 00 00       	push   $0x5490
    2c10:	6a 01                	push   $0x1
    2c12:	e8 19 1b 00 00       	call   4730 <printf>
    exit(0);
    2c17:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c1e:	e8 bf 19 00 00       	call   45e2 <exit>
    2c23:	83 c4 10             	add    $0x10,%esp
    2c26:	e9 60 fc ff ff       	jmp    288b <subdir+0x52b>
    2c2b:	90                   	nop
    2c2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create dd/dd/ff failed\n");
    2c30:	83 ec 08             	sub    $0x8,%esp
    2c33:	68 ff 51 00 00       	push   $0x51ff
    2c38:	6a 01                	push   $0x1
    2c3a:	e8 f1 1a 00 00       	call   4730 <printf>
    exit(0);
    2c3f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c46:	e8 97 19 00 00       	call   45e2 <exit>
    2c4b:	83 c4 10             	add    $0x10,%esp
    2c4e:	e9 e2 f7 ff ff       	jmp    2435 <subdir+0xd5>
    2c53:	90                   	nop
    2c54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "open dd/dd/../ff failed\n");
    2c58:	83 ec 08             	sub    $0x8,%esp
    2c5b:	68 26 52 00 00       	push   $0x5226
    2c60:	6a 01                	push   $0x1
    2c62:	e8 c9 1a 00 00       	call   4730 <printf>
    exit(0);
    2c67:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c6e:	e8 6f 19 00 00       	call   45e2 <exit>
    2c73:	83 c4 10             	add    $0x10,%esp
    2c76:	e9 ed f7 ff ff       	jmp    2468 <subdir+0x108>
    2c7b:	90                   	nop
    2c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "open dd/dd/ffff failed\n");
    2c80:	83 ec 08             	sub    $0x8,%esp
    2c83:	68 db 52 00 00       	push   $0x52db
    2c88:	6a 01                	push   $0x1
    2c8a:	e8 a1 1a 00 00       	call   4730 <printf>
    exit(0);
    2c8f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c96:	e8 47 19 00 00       	call   45e2 <exit>
    2c9b:	83 c4 10             	add    $0x10,%esp
    2c9e:	e9 ef f8 ff ff       	jmp    2592 <subdir+0x232>
    2ca3:	90                   	nop
    2ca4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create dd/ff failed\n");
    2ca8:	83 ec 08             	sub    $0x8,%esp
    2cab:	68 bf 51 00 00       	push   $0x51bf
    2cb0:	6a 01                	push   $0x1
    2cb2:	e8 79 1a 00 00       	call   4730 <printf>
    exit(0);
    2cb7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2cbe:	e8 1f 19 00 00       	call   45e2 <exit>
    2cc3:	83 c4 10             	add    $0x10,%esp
    2cc6:	e9 ea f6 ff ff       	jmp    23b5 <subdir+0x55>
    2ccb:	90                   	nop
    2ccc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dd/dd failed\n");
    2cd0:	83 ec 08             	sub    $0x8,%esp
    2cd3:	68 7b 54 00 00       	push   $0x547b
    2cd8:	6a 01                	push   $0x1
    2cda:	e8 51 1a 00 00       	call   4730 <printf>
    exit(0);
    2cdf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ce6:	e8 f7 18 00 00       	call   45e2 <exit>
    2ceb:	83 c4 10             	add    $0x10,%esp
    2cee:	e9 80 fb ff ff       	jmp    2873 <subdir+0x513>
    2cf3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2cf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002d00 <bigwrite>:
{
    2d00:	55                   	push   %ebp
    2d01:	89 e5                	mov    %esp,%ebp
    2d03:	57                   	push   %edi
    2d04:	56                   	push   %esi
    2d05:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    2d06:	bb f3 01 00 00       	mov    $0x1f3,%ebx
{
    2d0b:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigwrite test\n");
    2d0e:	68 ad 54 00 00       	push   $0x54ad
    2d13:	6a 01                	push   $0x1
    2d15:	e8 16 1a 00 00       	call   4730 <printf>
  unlink("bigwrite");
    2d1a:	c7 04 24 bc 54 00 00 	movl   $0x54bc,(%esp)
    2d21:	e8 0c 19 00 00       	call   4632 <unlink>
    2d26:	83 c4 10             	add    $0x10,%esp
    2d29:	eb 68                	jmp    2d93 <bigwrite+0x93>
    2d2b:	90                   	nop
    2d2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(sz = 499; sz < 12*512; sz += 471){
    2d30:	be 02 00 00 00       	mov    $0x2,%esi
      int cc = write(fd, buf, sz);
    2d35:	83 ec 04             	sub    $0x4,%esp
    2d38:	53                   	push   %ebx
    2d39:	68 00 93 00 00       	push   $0x9300
    2d3e:	57                   	push   %edi
    2d3f:	e8 be 18 00 00       	call   4602 <write>
      if(cc != sz){
    2d44:	83 c4 10             	add    $0x10,%esp
    2d47:	39 d8                	cmp    %ebx,%eax
    2d49:	74 1d                	je     2d68 <bigwrite+0x68>
        printf(1, "write(%d) ret %d\n", sz, cc);
    2d4b:	50                   	push   %eax
    2d4c:	53                   	push   %ebx
    2d4d:	68 dd 54 00 00       	push   $0x54dd
    2d52:	6a 01                	push   $0x1
    2d54:	e8 d7 19 00 00       	call   4730 <printf>
        exit(0);
    2d59:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d60:	e8 7d 18 00 00       	call   45e2 <exit>
    2d65:	83 c4 10             	add    $0x10,%esp
    for(i = 0; i < 2; i++){
    2d68:	83 ee 01             	sub    $0x1,%esi
    2d6b:	75 c8                	jne    2d35 <bigwrite+0x35>
    close(fd);
    2d6d:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    2d70:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2d76:	57                   	push   %edi
    2d77:	e8 8e 18 00 00       	call   460a <close>
    unlink("bigwrite");
    2d7c:	c7 04 24 bc 54 00 00 	movl   $0x54bc,(%esp)
    2d83:	e8 aa 18 00 00       	call   4632 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2d88:	83 c4 10             	add    $0x10,%esp
    2d8b:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    2d91:	74 45                	je     2dd8 <bigwrite+0xd8>
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2d93:	83 ec 08             	sub    $0x8,%esp
    2d96:	68 02 02 00 00       	push   $0x202
    2d9b:	68 bc 54 00 00       	push   $0x54bc
    2da0:	e8 7d 18 00 00       	call   4622 <open>
    if(fd < 0){
    2da5:	83 c4 10             	add    $0x10,%esp
    2da8:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2daa:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    2dac:	79 82                	jns    2d30 <bigwrite+0x30>
      printf(1, "cannot create bigwrite\n");
    2dae:	83 ec 08             	sub    $0x8,%esp
    2db1:	68 c5 54 00 00       	push   $0x54c5
    2db6:	6a 01                	push   $0x1
    2db8:	e8 73 19 00 00       	call   4730 <printf>
      exit(0);
    2dbd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2dc4:	e8 19 18 00 00       	call   45e2 <exit>
    2dc9:	83 c4 10             	add    $0x10,%esp
    2dcc:	e9 5f ff ff ff       	jmp    2d30 <bigwrite+0x30>
    2dd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  printf(1, "bigwrite ok\n");
    2dd8:	83 ec 08             	sub    $0x8,%esp
    2ddb:	68 ef 54 00 00       	push   $0x54ef
    2de0:	6a 01                	push   $0x1
    2de2:	e8 49 19 00 00       	call   4730 <printf>
}
    2de7:	83 c4 10             	add    $0x10,%esp
    2dea:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2ded:	5b                   	pop    %ebx
    2dee:	5e                   	pop    %esi
    2def:	5f                   	pop    %edi
    2df0:	5d                   	pop    %ebp
    2df1:	c3                   	ret    
    2df2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2df9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002e00 <bigfile>:
{
    2e00:	55                   	push   %ebp
    2e01:	89 e5                	mov    %esp,%ebp
    2e03:	57                   	push   %edi
    2e04:	56                   	push   %esi
    2e05:	53                   	push   %ebx
    2e06:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigfile test\n");
    2e09:	68 fc 54 00 00       	push   $0x54fc
    2e0e:	6a 01                	push   $0x1
    2e10:	e8 1b 19 00 00       	call   4730 <printf>
  unlink("bigfile");
    2e15:	c7 04 24 18 55 00 00 	movl   $0x5518,(%esp)
    2e1c:	e8 11 18 00 00       	call   4632 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2e21:	5e                   	pop    %esi
    2e22:	5f                   	pop    %edi
    2e23:	68 02 02 00 00       	push   $0x202
    2e28:	68 18 55 00 00       	push   $0x5518
    2e2d:	e8 f0 17 00 00       	call   4622 <open>
  if(fd < 0){
    2e32:	83 c4 10             	add    $0x10,%esp
    2e35:	85 c0                	test   %eax,%eax
  fd = open("bigfile", O_CREATE | O_RDWR);
    2e37:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2e39:	0f 88 9b 01 00 00    	js     2fda <bigfile+0x1da>
{
    2e3f:	31 db                	xor    %ebx,%ebx
    2e41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2e48:	83 ec 04             	sub    $0x4,%esp
    2e4b:	68 58 02 00 00       	push   $0x258
    2e50:	53                   	push   %ebx
    2e51:	68 00 93 00 00       	push   $0x9300
    2e56:	e8 f5 15 00 00       	call   4450 <memset>
    if(write(fd, buf, 600) != 600){
    2e5b:	83 c4 0c             	add    $0xc,%esp
    2e5e:	68 58 02 00 00       	push   $0x258
    2e63:	68 00 93 00 00       	push   $0x9300
    2e68:	56                   	push   %esi
    2e69:	e8 94 17 00 00       	call   4602 <write>
    2e6e:	83 c4 10             	add    $0x10,%esp
    2e71:	3d 58 02 00 00       	cmp    $0x258,%eax
    2e76:	74 1e                	je     2e96 <bigfile+0x96>
      printf(1, "write bigfile failed\n");
    2e78:	83 ec 08             	sub    $0x8,%esp
    2e7b:	68 20 55 00 00       	push   $0x5520
    2e80:	6a 01                	push   $0x1
    2e82:	e8 a9 18 00 00       	call   4730 <printf>
      exit(0);
    2e87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e8e:	e8 4f 17 00 00       	call   45e2 <exit>
    2e93:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 20; i++){
    2e96:	83 c3 01             	add    $0x1,%ebx
    2e99:	83 fb 14             	cmp    $0x14,%ebx
    2e9c:	75 aa                	jne    2e48 <bigfile+0x48>
  close(fd);
    2e9e:	83 ec 0c             	sub    $0xc,%esp
    2ea1:	56                   	push   %esi
    2ea2:	e8 63 17 00 00       	call   460a <close>
  fd = open("bigfile", 0);
    2ea7:	59                   	pop    %ecx
    2ea8:	5b                   	pop    %ebx
    2ea9:	6a 00                	push   $0x0
    2eab:	68 18 55 00 00       	push   $0x5518
    2eb0:	e8 6d 17 00 00       	call   4622 <open>
  if(fd < 0){
    2eb5:	83 c4 10             	add    $0x10,%esp
    2eb8:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    2eba:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(fd < 0){
    2ebd:	0f 88 3a 01 00 00    	js     2ffd <bigfile+0x1fd>
{
    2ec3:	31 f6                	xor    %esi,%esi
    2ec5:	31 db                	xor    %ebx,%ebx
    2ec7:	eb 44                	jmp    2f0d <bigfile+0x10d>
    2ec9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(buf[0] != i/2 || buf[299] != i/2){
    2ed0:	0f be 15 00 93 00 00 	movsbl 0x9300,%edx
    2ed7:	89 d9                	mov    %ebx,%ecx
    2ed9:	d1 f9                	sar    %ecx
    2edb:	39 ca                	cmp    %ecx,%edx
    2edd:	75 0b                	jne    2eea <bigfile+0xea>
    2edf:	0f be 0d 2b 94 00 00 	movsbl 0x942b,%ecx
    2ee6:	39 ca                	cmp    %ecx,%edx
    2ee8:	74 1e                	je     2f08 <bigfile+0x108>
      printf(1, "read bigfile wrong data\n");
    2eea:	83 ec 08             	sub    $0x8,%esp
    2eed:	68 74 55 00 00       	push   $0x5574
    2ef2:	6a 01                	push   $0x1
    2ef4:	e8 37 18 00 00       	call   4730 <printf>
      exit(0);
    2ef9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f00:	e8 dd 16 00 00       	call   45e2 <exit>
    2f05:	83 c4 10             	add    $0x10,%esp
    total += cc;
    2f08:	01 fe                	add    %edi,%esi
  for(i = 0; ; i++){
    2f0a:	83 c3 01             	add    $0x1,%ebx
    cc = read(fd, buf, 300);
    2f0d:	83 ec 04             	sub    $0x4,%esp
    2f10:	68 2c 01 00 00       	push   $0x12c
    2f15:	68 00 93 00 00       	push   $0x9300
    2f1a:	ff 75 e4             	pushl  -0x1c(%ebp)
    2f1d:	e8 d8 16 00 00       	call   45fa <read>
    if(cc < 0){
    2f22:	83 c4 10             	add    $0x10,%esp
    2f25:	85 c0                	test   %eax,%eax
    cc = read(fd, buf, 300);
    2f27:	89 c7                	mov    %eax,%edi
    if(cc < 0){
    2f29:	78 35                	js     2f60 <bigfile+0x160>
    if(cc == 0)
    2f2b:	74 53                	je     2f80 <bigfile+0x180>
    if(cc != 300){
    2f2d:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2f32:	74 9c                	je     2ed0 <bigfile+0xd0>
      printf(1, "short read bigfile\n");
    2f34:	83 ec 08             	sub    $0x8,%esp
    2f37:	68 60 55 00 00       	push   $0x5560
    2f3c:	6a 01                	push   $0x1
    2f3e:	e8 ed 17 00 00       	call   4730 <printf>
      exit(0);
    2f43:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f4a:	e8 93 16 00 00       	call   45e2 <exit>
    2f4f:	83 c4 10             	add    $0x10,%esp
    2f52:	e9 79 ff ff ff       	jmp    2ed0 <bigfile+0xd0>
    2f57:	89 f6                	mov    %esi,%esi
    2f59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(1, "read bigfile failed\n");
    2f60:	83 ec 08             	sub    $0x8,%esp
    2f63:	68 4b 55 00 00       	push   $0x554b
    2f68:	6a 01                	push   $0x1
    2f6a:	e8 c1 17 00 00       	call   4730 <printf>
      exit(0);
    2f6f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f76:	e8 67 16 00 00       	call   45e2 <exit>
    2f7b:	83 c4 10             	add    $0x10,%esp
    2f7e:	eb b4                	jmp    2f34 <bigfile+0x134>
  close(fd);
    2f80:	83 ec 0c             	sub    $0xc,%esp
    2f83:	ff 75 e4             	pushl  -0x1c(%ebp)
    2f86:	e8 7f 16 00 00       	call   460a <close>
  if(total != 20*600){
    2f8b:	83 c4 10             	add    $0x10,%esp
    2f8e:	81 fe e0 2e 00 00    	cmp    $0x2ee0,%esi
    2f94:	74 1e                	je     2fb4 <bigfile+0x1b4>
    printf(1, "read bigfile wrong total\n");
    2f96:	83 ec 08             	sub    $0x8,%esp
    2f99:	68 8d 55 00 00       	push   $0x558d
    2f9e:	6a 01                	push   $0x1
    2fa0:	e8 8b 17 00 00       	call   4730 <printf>
    exit(0);
    2fa5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fac:	e8 31 16 00 00       	call   45e2 <exit>
    2fb1:	83 c4 10             	add    $0x10,%esp
  unlink("bigfile");
    2fb4:	83 ec 0c             	sub    $0xc,%esp
    2fb7:	68 18 55 00 00       	push   $0x5518
    2fbc:	e8 71 16 00 00       	call   4632 <unlink>
  printf(1, "bigfile test ok\n");
    2fc1:	58                   	pop    %eax
    2fc2:	5a                   	pop    %edx
    2fc3:	68 a7 55 00 00       	push   $0x55a7
    2fc8:	6a 01                	push   $0x1
    2fca:	e8 61 17 00 00       	call   4730 <printf>
}
    2fcf:	83 c4 10             	add    $0x10,%esp
    2fd2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2fd5:	5b                   	pop    %ebx
    2fd6:	5e                   	pop    %esi
    2fd7:	5f                   	pop    %edi
    2fd8:	5d                   	pop    %ebp
    2fd9:	c3                   	ret    
    printf(1, "cannot create bigfile");
    2fda:	83 ec 08             	sub    $0x8,%esp
    2fdd:	68 0a 55 00 00       	push   $0x550a
    2fe2:	6a 01                	push   $0x1
    2fe4:	e8 47 17 00 00       	call   4730 <printf>
    exit(0);
    2fe9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ff0:	e8 ed 15 00 00       	call   45e2 <exit>
    2ff5:	83 c4 10             	add    $0x10,%esp
    2ff8:	e9 42 fe ff ff       	jmp    2e3f <bigfile+0x3f>
    printf(1, "cannot open bigfile\n");
    2ffd:	83 ec 08             	sub    $0x8,%esp
    3000:	68 36 55 00 00       	push   $0x5536
    3005:	6a 01                	push   $0x1
    3007:	e8 24 17 00 00       	call   4730 <printf>
    exit(0);
    300c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3013:	e8 ca 15 00 00       	call   45e2 <exit>
    3018:	83 c4 10             	add    $0x10,%esp
    301b:	e9 a3 fe ff ff       	jmp    2ec3 <bigfile+0xc3>

00003020 <fourteen>:
{
    3020:	55                   	push   %ebp
    3021:	89 e5                	mov    %esp,%ebp
    3023:	83 ec 20             	sub    $0x20,%esp
  printf(1, "fourteen test\n");
    3026:	68 b8 55 00 00       	push   $0x55b8
    302b:	6a 01                	push   $0x1
    302d:	e8 fe 16 00 00       	call   4730 <printf>
  if(mkdir("12345678901234") != 0){
    3032:	c7 04 24 f3 55 00 00 	movl   $0x55f3,(%esp)
    3039:	e8 0c 16 00 00       	call   464a <mkdir>
    303e:	83 c4 10             	add    $0x10,%esp
    3041:	85 c0                	test   %eax,%eax
    3043:	0f 85 0f 01 00 00    	jne    3158 <fourteen+0x138>
  if(mkdir("12345678901234/123456789012345") != 0){
    3049:	83 ec 0c             	sub    $0xc,%esp
    304c:	68 b0 5d 00 00       	push   $0x5db0
    3051:	e8 f4 15 00 00       	call   464a <mkdir>
    3056:	83 c4 10             	add    $0x10,%esp
    3059:	85 c0                	test   %eax,%eax
    305b:	0f 85 cf 00 00 00    	jne    3130 <fourteen+0x110>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    3061:	83 ec 08             	sub    $0x8,%esp
    3064:	68 00 02 00 00       	push   $0x200
    3069:	68 00 5e 00 00       	push   $0x5e00
    306e:	e8 af 15 00 00       	call   4622 <open>
  if(fd < 0){
    3073:	83 c4 10             	add    $0x10,%esp
    3076:	85 c0                	test   %eax,%eax
    3078:	0f 88 32 01 00 00    	js     31b0 <fourteen+0x190>
  close(fd);
    307e:	83 ec 0c             	sub    $0xc,%esp
    3081:	50                   	push   %eax
    3082:	e8 83 15 00 00       	call   460a <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    3087:	58                   	pop    %eax
    3088:	5a                   	pop    %edx
    3089:	6a 00                	push   $0x0
    308b:	68 70 5e 00 00       	push   $0x5e70
    3090:	e8 8d 15 00 00       	call   4622 <open>
  if(fd < 0){
    3095:	83 c4 10             	add    $0x10,%esp
    3098:	85 c0                	test   %eax,%eax
    309a:	0f 88 e0 00 00 00    	js     3180 <fourteen+0x160>
  close(fd);
    30a0:	83 ec 0c             	sub    $0xc,%esp
    30a3:	50                   	push   %eax
    30a4:	e8 61 15 00 00       	call   460a <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    30a9:	c7 04 24 e4 55 00 00 	movl   $0x55e4,(%esp)
    30b0:	e8 95 15 00 00       	call   464a <mkdir>
    30b5:	83 c4 10             	add    $0x10,%esp
    30b8:	85 c0                	test   %eax,%eax
    30ba:	74 4c                	je     3108 <fourteen+0xe8>
  if(mkdir("123456789012345/12345678901234") == 0){
    30bc:	83 ec 0c             	sub    $0xc,%esp
    30bf:	68 0c 5f 00 00       	push   $0x5f0c
    30c4:	e8 81 15 00 00       	call   464a <mkdir>
    30c9:	83 c4 10             	add    $0x10,%esp
    30cc:	85 c0                	test   %eax,%eax
    30ce:	75 1e                	jne    30ee <fourteen+0xce>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    30d0:	83 ec 08             	sub    $0x8,%esp
    30d3:	68 2c 5f 00 00       	push   $0x5f2c
    30d8:	6a 01                	push   $0x1
    30da:	e8 51 16 00 00       	call   4730 <printf>
    exit(0);
    30df:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30e6:	e8 f7 14 00 00       	call   45e2 <exit>
    30eb:	83 c4 10             	add    $0x10,%esp
  printf(1, "fourteen ok\n");
    30ee:	83 ec 08             	sub    $0x8,%esp
    30f1:	68 02 56 00 00       	push   $0x5602
    30f6:	6a 01                	push   $0x1
    30f8:	e8 33 16 00 00       	call   4730 <printf>
}
    30fd:	83 c4 10             	add    $0x10,%esp
    3100:	c9                   	leave  
    3101:	c3                   	ret    
    3102:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    3108:	83 ec 08             	sub    $0x8,%esp
    310b:	68 dc 5e 00 00       	push   $0x5edc
    3110:	6a 01                	push   $0x1
    3112:	e8 19 16 00 00       	call   4730 <printf>
    exit(0);
    3117:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    311e:	e8 bf 14 00 00       	call   45e2 <exit>
    3123:	83 c4 10             	add    $0x10,%esp
    3126:	eb 94                	jmp    30bc <fourteen+0x9c>
    3128:	90                   	nop
    3129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    3130:	83 ec 08             	sub    $0x8,%esp
    3133:	68 d0 5d 00 00       	push   $0x5dd0
    3138:	6a 01                	push   $0x1
    313a:	e8 f1 15 00 00       	call   4730 <printf>
    exit(0);
    313f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3146:	e8 97 14 00 00       	call   45e2 <exit>
    314b:	83 c4 10             	add    $0x10,%esp
    314e:	e9 0e ff ff ff       	jmp    3061 <fourteen+0x41>
    3153:	90                   	nop
    3154:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir 12345678901234 failed\n");
    3158:	83 ec 08             	sub    $0x8,%esp
    315b:	68 c7 55 00 00       	push   $0x55c7
    3160:	6a 01                	push   $0x1
    3162:	e8 c9 15 00 00       	call   4730 <printf>
    exit(0);
    3167:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    316e:	e8 6f 14 00 00       	call   45e2 <exit>
    3173:	83 c4 10             	add    $0x10,%esp
    3176:	e9 ce fe ff ff       	jmp    3049 <fourteen+0x29>
    317b:	90                   	nop
    317c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    3180:	83 ec 08             	sub    $0x8,%esp
    3183:	89 45 f4             	mov    %eax,-0xc(%ebp)
    3186:	68 a0 5e 00 00       	push   $0x5ea0
    318b:	6a 01                	push   $0x1
    318d:	e8 9e 15 00 00       	call   4730 <printf>
    exit(0);
    3192:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3199:	e8 44 14 00 00       	call   45e2 <exit>
    319e:	83 c4 10             	add    $0x10,%esp
    31a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    31a4:	e9 f7 fe ff ff       	jmp    30a0 <fourteen+0x80>
    31a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    31b0:	83 ec 08             	sub    $0x8,%esp
    31b3:	89 45 f4             	mov    %eax,-0xc(%ebp)
    31b6:	68 30 5e 00 00       	push   $0x5e30
    31bb:	6a 01                	push   $0x1
    31bd:	e8 6e 15 00 00       	call   4730 <printf>
    exit(0);
    31c2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31c9:	e8 14 14 00 00       	call   45e2 <exit>
    31ce:	83 c4 10             	add    $0x10,%esp
    31d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
    31d4:	e9 a5 fe ff ff       	jmp    307e <fourteen+0x5e>
    31d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000031e0 <rmdot>:
{
    31e0:	55                   	push   %ebp
    31e1:	89 e5                	mov    %esp,%ebp
    31e3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    31e6:	68 0f 56 00 00       	push   $0x560f
    31eb:	6a 01                	push   $0x1
    31ed:	e8 3e 15 00 00       	call   4730 <printf>
  if(mkdir("dots") != 0){
    31f2:	c7 04 24 1b 56 00 00 	movl   $0x561b,(%esp)
    31f9:	e8 4c 14 00 00       	call   464a <mkdir>
    31fe:	83 c4 10             	add    $0x10,%esp
    3201:	85 c0                	test   %eax,%eax
    3203:	0f 85 bf 01 00 00    	jne    33c8 <rmdot+0x1e8>
  if(chdir("dots") != 0){
    3209:	83 ec 0c             	sub    $0xc,%esp
    320c:	68 1b 56 00 00       	push   $0x561b
    3211:	e8 3c 14 00 00       	call   4652 <chdir>
    3216:	83 c4 10             	add    $0x10,%esp
    3219:	85 c0                	test   %eax,%eax
    321b:	0f 85 7f 01 00 00    	jne    33a0 <rmdot+0x1c0>
  if(unlink(".") == 0){
    3221:	83 ec 0c             	sub    $0xc,%esp
    3224:	68 c6 52 00 00       	push   $0x52c6
    3229:	e8 04 14 00 00       	call   4632 <unlink>
    322e:	83 c4 10             	add    $0x10,%esp
    3231:	85 c0                	test   %eax,%eax
    3233:	0f 84 3f 01 00 00    	je     3378 <rmdot+0x198>
  if(unlink("..") == 0){
    3239:	83 ec 0c             	sub    $0xc,%esp
    323c:	68 c5 52 00 00       	push   $0x52c5
    3241:	e8 ec 13 00 00       	call   4632 <unlink>
    3246:	83 c4 10             	add    $0x10,%esp
    3249:	85 c0                	test   %eax,%eax
    324b:	0f 84 ff 00 00 00    	je     3350 <rmdot+0x170>
  if(chdir("/") != 0){
    3251:	83 ec 0c             	sub    $0xc,%esp
    3254:	68 99 4a 00 00       	push   $0x4a99
    3259:	e8 f4 13 00 00       	call   4652 <chdir>
    325e:	83 c4 10             	add    $0x10,%esp
    3261:	85 c0                	test   %eax,%eax
    3263:	0f 85 bf 00 00 00    	jne    3328 <rmdot+0x148>
  if(unlink("dots/.") == 0){
    3269:	83 ec 0c             	sub    $0xc,%esp
    326c:	68 63 56 00 00       	push   $0x5663
    3271:	e8 bc 13 00 00       	call   4632 <unlink>
    3276:	83 c4 10             	add    $0x10,%esp
    3279:	85 c0                	test   %eax,%eax
    327b:	0f 84 7f 00 00 00    	je     3300 <rmdot+0x120>
  if(unlink("dots/..") == 0){
    3281:	83 ec 0c             	sub    $0xc,%esp
    3284:	68 81 56 00 00       	push   $0x5681
    3289:	e8 a4 13 00 00       	call   4632 <unlink>
    328e:	83 c4 10             	add    $0x10,%esp
    3291:	85 c0                	test   %eax,%eax
    3293:	74 4b                	je     32e0 <rmdot+0x100>
  if(unlink("dots") != 0){
    3295:	83 ec 0c             	sub    $0xc,%esp
    3298:	68 1b 56 00 00       	push   $0x561b
    329d:	e8 90 13 00 00       	call   4632 <unlink>
    32a2:	83 c4 10             	add    $0x10,%esp
    32a5:	85 c0                	test   %eax,%eax
    32a7:	74 1e                	je     32c7 <rmdot+0xe7>
    printf(1, "unlink dots failed!\n");
    32a9:	83 ec 08             	sub    $0x8,%esp
    32ac:	68 a1 56 00 00       	push   $0x56a1
    32b1:	6a 01                	push   $0x1
    32b3:	e8 78 14 00 00       	call   4730 <printf>
    exit(0);
    32b8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32bf:	e8 1e 13 00 00       	call   45e2 <exit>
    32c4:	83 c4 10             	add    $0x10,%esp
  printf(1, "rmdot ok\n");
    32c7:	83 ec 08             	sub    $0x8,%esp
    32ca:	68 b6 56 00 00       	push   $0x56b6
    32cf:	6a 01                	push   $0x1
    32d1:	e8 5a 14 00 00       	call   4730 <printf>
}
    32d6:	83 c4 10             	add    $0x10,%esp
    32d9:	c9                   	leave  
    32da:	c3                   	ret    
    32db:	90                   	nop
    32dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dots/.. worked!\n");
    32e0:	83 ec 08             	sub    $0x8,%esp
    32e3:	68 89 56 00 00       	push   $0x5689
    32e8:	6a 01                	push   $0x1
    32ea:	e8 41 14 00 00       	call   4730 <printf>
    exit(0);
    32ef:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32f6:	e8 e7 12 00 00       	call   45e2 <exit>
    32fb:	83 c4 10             	add    $0x10,%esp
    32fe:	eb 95                	jmp    3295 <rmdot+0xb5>
    printf(1, "unlink dots/. worked!\n");
    3300:	83 ec 08             	sub    $0x8,%esp
    3303:	68 6a 56 00 00       	push   $0x566a
    3308:	6a 01                	push   $0x1
    330a:	e8 21 14 00 00       	call   4730 <printf>
    exit(0);
    330f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3316:	e8 c7 12 00 00       	call   45e2 <exit>
    331b:	83 c4 10             	add    $0x10,%esp
    331e:	e9 5e ff ff ff       	jmp    3281 <rmdot+0xa1>
    3323:	90                   	nop
    3324:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir / failed\n");
    3328:	83 ec 08             	sub    $0x8,%esp
    332b:	68 9b 4a 00 00       	push   $0x4a9b
    3330:	6a 01                	push   $0x1
    3332:	e8 f9 13 00 00       	call   4730 <printf>
    exit(0);
    3337:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    333e:	e8 9f 12 00 00       	call   45e2 <exit>
    3343:	83 c4 10             	add    $0x10,%esp
    3346:	e9 1e ff ff ff       	jmp    3269 <rmdot+0x89>
    334b:	90                   	nop
    334c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "rm .. worked!\n");
    3350:	83 ec 08             	sub    $0x8,%esp
    3353:	68 54 56 00 00       	push   $0x5654
    3358:	6a 01                	push   $0x1
    335a:	e8 d1 13 00 00       	call   4730 <printf>
    exit(0);
    335f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3366:	e8 77 12 00 00       	call   45e2 <exit>
    336b:	83 c4 10             	add    $0x10,%esp
    336e:	e9 de fe ff ff       	jmp    3251 <rmdot+0x71>
    3373:	90                   	nop
    3374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "rm . worked!\n");
    3378:	83 ec 08             	sub    $0x8,%esp
    337b:	68 46 56 00 00       	push   $0x5646
    3380:	6a 01                	push   $0x1
    3382:	e8 a9 13 00 00       	call   4730 <printf>
    exit(0);
    3387:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    338e:	e8 4f 12 00 00       	call   45e2 <exit>
    3393:	83 c4 10             	add    $0x10,%esp
    3396:	e9 9e fe ff ff       	jmp    3239 <rmdot+0x59>
    339b:	90                   	nop
    339c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dots failed\n");
    33a0:	83 ec 08             	sub    $0x8,%esp
    33a3:	68 33 56 00 00       	push   $0x5633
    33a8:	6a 01                	push   $0x1
    33aa:	e8 81 13 00 00       	call   4730 <printf>
    exit(0);
    33af:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33b6:	e8 27 12 00 00       	call   45e2 <exit>
    33bb:	83 c4 10             	add    $0x10,%esp
    33be:	e9 5e fe ff ff       	jmp    3221 <rmdot+0x41>
    33c3:	90                   	nop
    33c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir dots failed\n");
    33c8:	83 ec 08             	sub    $0x8,%esp
    33cb:	68 20 56 00 00       	push   $0x5620
    33d0:	6a 01                	push   $0x1
    33d2:	e8 59 13 00 00       	call   4730 <printf>
    exit(0);
    33d7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33de:	e8 ff 11 00 00       	call   45e2 <exit>
    33e3:	83 c4 10             	add    $0x10,%esp
    33e6:	e9 1e fe ff ff       	jmp    3209 <rmdot+0x29>
    33eb:	90                   	nop
    33ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000033f0 <dirfile>:
{
    33f0:	55                   	push   %ebp
    33f1:	89 e5                	mov    %esp,%ebp
    33f3:	53                   	push   %ebx
    33f4:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "dir vs file\n");
    33f7:	68 c0 56 00 00       	push   $0x56c0
    33fc:	6a 01                	push   $0x1
    33fe:	e8 2d 13 00 00       	call   4730 <printf>
  fd = open("dirfile", O_CREATE);
    3403:	59                   	pop    %ecx
    3404:	5b                   	pop    %ebx
    3405:	68 00 02 00 00       	push   $0x200
    340a:	68 cd 56 00 00       	push   $0x56cd
    340f:	e8 0e 12 00 00       	call   4622 <open>
  if(fd < 0){
    3414:	83 c4 10             	add    $0x10,%esp
    3417:	85 c0                	test   %eax,%eax
    3419:	0f 88 59 02 00 00    	js     3678 <dirfile+0x288>
  close(fd);
    341f:	83 ec 0c             	sub    $0xc,%esp
    3422:	50                   	push   %eax
    3423:	e8 e2 11 00 00       	call   460a <close>
  if(chdir("dirfile") == 0){
    3428:	c7 04 24 cd 56 00 00 	movl   $0x56cd,(%esp)
    342f:	e8 1e 12 00 00       	call   4652 <chdir>
    3434:	83 c4 10             	add    $0x10,%esp
    3437:	85 c0                	test   %eax,%eax
    3439:	0f 84 71 01 00 00    	je     35b0 <dirfile+0x1c0>
  fd = open("dirfile/xx", 0);
    343f:	83 ec 08             	sub    $0x8,%esp
    3442:	6a 00                	push   $0x0
    3444:	68 06 57 00 00       	push   $0x5706
    3449:	e8 d4 11 00 00       	call   4622 <open>
  if(fd >= 0){
    344e:	83 c4 10             	add    $0x10,%esp
    3451:	85 c0                	test   %eax,%eax
    3453:	78 1e                	js     3473 <dirfile+0x83>
    printf(1, "create dirfile/xx succeeded!\n");
    3455:	83 ec 08             	sub    $0x8,%esp
    3458:	68 11 57 00 00       	push   $0x5711
    345d:	6a 01                	push   $0x1
    345f:	e8 cc 12 00 00       	call   4730 <printf>
    exit(0);
    3464:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    346b:	e8 72 11 00 00       	call   45e2 <exit>
    3470:	83 c4 10             	add    $0x10,%esp
  fd = open("dirfile/xx", O_CREATE);
    3473:	83 ec 08             	sub    $0x8,%esp
    3476:	68 00 02 00 00       	push   $0x200
    347b:	68 06 57 00 00       	push   $0x5706
    3480:	e8 9d 11 00 00       	call   4622 <open>
  if(fd >= 0){
    3485:	83 c4 10             	add    $0x10,%esp
    3488:	85 c0                	test   %eax,%eax
    348a:	78 1e                	js     34aa <dirfile+0xba>
    printf(1, "create dirfile/xx succeeded!\n");
    348c:	83 ec 08             	sub    $0x8,%esp
    348f:	68 11 57 00 00       	push   $0x5711
    3494:	6a 01                	push   $0x1
    3496:	e8 95 12 00 00       	call   4730 <printf>
    exit(0);
    349b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34a2:	e8 3b 11 00 00       	call   45e2 <exit>
    34a7:	83 c4 10             	add    $0x10,%esp
  if(mkdir("dirfile/xx") == 0){
    34aa:	83 ec 0c             	sub    $0xc,%esp
    34ad:	68 06 57 00 00       	push   $0x5706
    34b2:	e8 93 11 00 00       	call   464a <mkdir>
    34b7:	83 c4 10             	add    $0x10,%esp
    34ba:	85 c0                	test   %eax,%eax
    34bc:	0f 84 8e 01 00 00    	je     3650 <dirfile+0x260>
  if(unlink("dirfile/xx") == 0){
    34c2:	83 ec 0c             	sub    $0xc,%esp
    34c5:	68 06 57 00 00       	push   $0x5706
    34ca:	e8 63 11 00 00       	call   4632 <unlink>
    34cf:	83 c4 10             	add    $0x10,%esp
    34d2:	85 c0                	test   %eax,%eax
    34d4:	0f 84 4e 01 00 00    	je     3628 <dirfile+0x238>
  if(link("README", "dirfile/xx") == 0){
    34da:	83 ec 08             	sub    $0x8,%esp
    34dd:	68 06 57 00 00       	push   $0x5706
    34e2:	68 6a 57 00 00       	push   $0x576a
    34e7:	e8 56 11 00 00       	call   4642 <link>
    34ec:	83 c4 10             	add    $0x10,%esp
    34ef:	85 c0                	test   %eax,%eax
    34f1:	0f 84 09 01 00 00    	je     3600 <dirfile+0x210>
  if(unlink("dirfile") != 0){
    34f7:	83 ec 0c             	sub    $0xc,%esp
    34fa:	68 cd 56 00 00       	push   $0x56cd
    34ff:	e8 2e 11 00 00       	call   4632 <unlink>
    3504:	83 c4 10             	add    $0x10,%esp
    3507:	85 c0                	test   %eax,%eax
    3509:	0f 85 c9 00 00 00    	jne    35d8 <dirfile+0x1e8>
  fd = open(".", O_RDWR);
    350f:	83 ec 08             	sub    $0x8,%esp
    3512:	6a 02                	push   $0x2
    3514:	68 c6 52 00 00       	push   $0x52c6
    3519:	e8 04 11 00 00       	call   4622 <open>
  if(fd >= 0){
    351e:	83 c4 10             	add    $0x10,%esp
    3521:	85 c0                	test   %eax,%eax
    3523:	78 1e                	js     3543 <dirfile+0x153>
    printf(1, "open . for writing succeeded!\n");
    3525:	83 ec 08             	sub    $0x8,%esp
    3528:	68 80 5f 00 00       	push   $0x5f80
    352d:	6a 01                	push   $0x1
    352f:	e8 fc 11 00 00       	call   4730 <printf>
    exit(0);
    3534:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    353b:	e8 a2 10 00 00       	call   45e2 <exit>
    3540:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    3543:	83 ec 08             	sub    $0x8,%esp
    3546:	6a 00                	push   $0x0
    3548:	68 c6 52 00 00       	push   $0x52c6
    354d:	e8 d0 10 00 00       	call   4622 <open>
  if(write(fd, "x", 1) > 0){
    3552:	83 c4 0c             	add    $0xc,%esp
  fd = open(".", 0);
    3555:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    3557:	6a 01                	push   $0x1
    3559:	68 a9 53 00 00       	push   $0x53a9
    355e:	50                   	push   %eax
    355f:	e8 9e 10 00 00       	call   4602 <write>
    3564:	83 c4 10             	add    $0x10,%esp
    3567:	85 c0                	test   %eax,%eax
    3569:	7e 1e                	jle    3589 <dirfile+0x199>
    printf(1, "write . succeeded!\n");
    356b:	83 ec 08             	sub    $0x8,%esp
    356e:	68 89 57 00 00       	push   $0x5789
    3573:	6a 01                	push   $0x1
    3575:	e8 b6 11 00 00       	call   4730 <printf>
    exit(0);
    357a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3581:	e8 5c 10 00 00       	call   45e2 <exit>
    3586:	83 c4 10             	add    $0x10,%esp
  close(fd);
    3589:	83 ec 0c             	sub    $0xc,%esp
    358c:	53                   	push   %ebx
    358d:	e8 78 10 00 00       	call   460a <close>
  printf(1, "dir vs file OK\n");
    3592:	58                   	pop    %eax
    3593:	5a                   	pop    %edx
    3594:	68 9d 57 00 00       	push   $0x579d
    3599:	6a 01                	push   $0x1
    359b:	e8 90 11 00 00       	call   4730 <printf>
}
    35a0:	83 c4 10             	add    $0x10,%esp
    35a3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    35a6:	c9                   	leave  
    35a7:	c3                   	ret    
    35a8:	90                   	nop
    35a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "chdir dirfile succeeded!\n");
    35b0:	83 ec 08             	sub    $0x8,%esp
    35b3:	68 ec 56 00 00       	push   $0x56ec
    35b8:	6a 01                	push   $0x1
    35ba:	e8 71 11 00 00       	call   4730 <printf>
    exit(0);
    35bf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35c6:	e8 17 10 00 00       	call   45e2 <exit>
    35cb:	83 c4 10             	add    $0x10,%esp
    35ce:	e9 6c fe ff ff       	jmp    343f <dirfile+0x4f>
    35d3:	90                   	nop
    35d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dirfile failed!\n");
    35d8:	83 ec 08             	sub    $0x8,%esp
    35db:	68 71 57 00 00       	push   $0x5771
    35e0:	6a 01                	push   $0x1
    35e2:	e8 49 11 00 00       	call   4730 <printf>
    exit(0);
    35e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    35ee:	e8 ef 0f 00 00       	call   45e2 <exit>
    35f3:	83 c4 10             	add    $0x10,%esp
    35f6:	e9 14 ff ff ff       	jmp    350f <dirfile+0x11f>
    35fb:	90                   	nop
    35fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "link to dirfile/xx succeeded!\n");
    3600:	83 ec 08             	sub    $0x8,%esp
    3603:	68 60 5f 00 00       	push   $0x5f60
    3608:	6a 01                	push   $0x1
    360a:	e8 21 11 00 00       	call   4730 <printf>
    exit(0);
    360f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3616:	e8 c7 0f 00 00       	call   45e2 <exit>
    361b:	83 c4 10             	add    $0x10,%esp
    361e:	e9 d4 fe ff ff       	jmp    34f7 <dirfile+0x107>
    3623:	90                   	nop
    3624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "unlink dirfile/xx succeeded!\n");
    3628:	83 ec 08             	sub    $0x8,%esp
    362b:	68 4c 57 00 00       	push   $0x574c
    3630:	6a 01                	push   $0x1
    3632:	e8 f9 10 00 00       	call   4730 <printf>
    exit(0);
    3637:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    363e:	e8 9f 0f 00 00       	call   45e2 <exit>
    3643:	83 c4 10             	add    $0x10,%esp
    3646:	e9 8f fe ff ff       	jmp    34da <dirfile+0xea>
    364b:	90                   	nop
    364c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "mkdir dirfile/xx succeeded!\n");
    3650:	83 ec 08             	sub    $0x8,%esp
    3653:	68 2f 57 00 00       	push   $0x572f
    3658:	6a 01                	push   $0x1
    365a:	e8 d1 10 00 00       	call   4730 <printf>
    exit(0);
    365f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3666:	e8 77 0f 00 00       	call   45e2 <exit>
    366b:	83 c4 10             	add    $0x10,%esp
    366e:	e9 4f fe ff ff       	jmp    34c2 <dirfile+0xd2>
    3673:	90                   	nop
    3674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "create dirfile failed\n");
    3678:	83 ec 08             	sub    $0x8,%esp
    367b:	89 45 f4             	mov    %eax,-0xc(%ebp)
    367e:	68 d5 56 00 00       	push   $0x56d5
    3683:	6a 01                	push   $0x1
    3685:	e8 a6 10 00 00       	call   4730 <printf>
    exit(0);
    368a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3691:	e8 4c 0f 00 00       	call   45e2 <exit>
    3696:	83 c4 10             	add    $0x10,%esp
    3699:	8b 45 f4             	mov    -0xc(%ebp),%eax
    369c:	e9 7e fd ff ff       	jmp    341f <dirfile+0x2f>
    36a1:	eb 0d                	jmp    36b0 <iref>
    36a3:	90                   	nop
    36a4:	90                   	nop
    36a5:	90                   	nop
    36a6:	90                   	nop
    36a7:	90                   	nop
    36a8:	90                   	nop
    36a9:	90                   	nop
    36aa:	90                   	nop
    36ab:	90                   	nop
    36ac:	90                   	nop
    36ad:	90                   	nop
    36ae:	90                   	nop
    36af:	90                   	nop

000036b0 <iref>:
{
    36b0:	55                   	push   %ebp
    36b1:	89 e5                	mov    %esp,%ebp
    36b3:	53                   	push   %ebx
  printf(1, "empty file name\n");
    36b4:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    36b9:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    36bc:	68 ad 57 00 00       	push   $0x57ad
    36c1:	6a 01                	push   $0x1
    36c3:	e8 68 10 00 00       	call   4730 <printf>
    36c8:	83 c4 10             	add    $0x10,%esp
    36cb:	e9 94 00 00 00       	jmp    3764 <iref+0xb4>
    if(chdir("irefd") != 0){
    36d0:	83 ec 0c             	sub    $0xc,%esp
    36d3:	68 be 57 00 00       	push   $0x57be
    36d8:	e8 75 0f 00 00       	call   4652 <chdir>
    36dd:	83 c4 10             	add    $0x10,%esp
    36e0:	85 c0                	test   %eax,%eax
    36e2:	0f 85 b8 00 00 00    	jne    37a0 <iref+0xf0>
    mkdir("");
    36e8:	83 ec 0c             	sub    $0xc,%esp
    36eb:	68 73 4e 00 00       	push   $0x4e73
    36f0:	e8 55 0f 00 00       	call   464a <mkdir>
    link("README", "");
    36f5:	59                   	pop    %ecx
    36f6:	58                   	pop    %eax
    36f7:	68 73 4e 00 00       	push   $0x4e73
    36fc:	68 6a 57 00 00       	push   $0x576a
    3701:	e8 3c 0f 00 00       	call   4642 <link>
    fd = open("", O_CREATE);
    3706:	58                   	pop    %eax
    3707:	5a                   	pop    %edx
    3708:	68 00 02 00 00       	push   $0x200
    370d:	68 73 4e 00 00       	push   $0x4e73
    3712:	e8 0b 0f 00 00       	call   4622 <open>
    if(fd >= 0)
    3717:	83 c4 10             	add    $0x10,%esp
    371a:	85 c0                	test   %eax,%eax
    371c:	78 0c                	js     372a <iref+0x7a>
      close(fd);
    371e:	83 ec 0c             	sub    $0xc,%esp
    3721:	50                   	push   %eax
    3722:	e8 e3 0e 00 00       	call   460a <close>
    3727:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    372a:	83 ec 08             	sub    $0x8,%esp
    372d:	68 00 02 00 00       	push   $0x200
    3732:	68 a8 53 00 00       	push   $0x53a8
    3737:	e8 e6 0e 00 00       	call   4622 <open>
    if(fd >= 0)
    373c:	83 c4 10             	add    $0x10,%esp
    373f:	85 c0                	test   %eax,%eax
    3741:	78 0c                	js     374f <iref+0x9f>
      close(fd);
    3743:	83 ec 0c             	sub    $0xc,%esp
    3746:	50                   	push   %eax
    3747:	e8 be 0e 00 00       	call   460a <close>
    374c:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    374f:	83 ec 0c             	sub    $0xc,%esp
    3752:	68 a8 53 00 00       	push   $0x53a8
    3757:	e8 d6 0e 00 00       	call   4632 <unlink>
  for(i = 0; i < 50 + 1; i++){
    375c:	83 c4 10             	add    $0x10,%esp
    375f:	83 eb 01             	sub    $0x1,%ebx
    3762:	74 64                	je     37c8 <iref+0x118>
    if(mkdir("irefd") != 0){
    3764:	83 ec 0c             	sub    $0xc,%esp
    3767:	68 be 57 00 00       	push   $0x57be
    376c:	e8 d9 0e 00 00       	call   464a <mkdir>
    3771:	83 c4 10             	add    $0x10,%esp
    3774:	85 c0                	test   %eax,%eax
    3776:	0f 84 54 ff ff ff    	je     36d0 <iref+0x20>
      printf(1, "mkdir irefd failed\n");
    377c:	83 ec 08             	sub    $0x8,%esp
    377f:	68 c4 57 00 00       	push   $0x57c4
    3784:	6a 01                	push   $0x1
    3786:	e8 a5 0f 00 00       	call   4730 <printf>
      exit(0);
    378b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3792:	e8 4b 0e 00 00       	call   45e2 <exit>
    3797:	83 c4 10             	add    $0x10,%esp
    379a:	e9 31 ff ff ff       	jmp    36d0 <iref+0x20>
    379f:	90                   	nop
      printf(1, "chdir irefd failed\n");
    37a0:	83 ec 08             	sub    $0x8,%esp
    37a3:	68 d8 57 00 00       	push   $0x57d8
    37a8:	6a 01                	push   $0x1
    37aa:	e8 81 0f 00 00       	call   4730 <printf>
      exit(0);
    37af:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    37b6:	e8 27 0e 00 00       	call   45e2 <exit>
    37bb:	83 c4 10             	add    $0x10,%esp
    37be:	e9 25 ff ff ff       	jmp    36e8 <iref+0x38>
    37c3:	90                   	nop
    37c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  chdir("/");
    37c8:	83 ec 0c             	sub    $0xc,%esp
    37cb:	68 99 4a 00 00       	push   $0x4a99
    37d0:	e8 7d 0e 00 00       	call   4652 <chdir>
  printf(1, "empty file name OK\n");
    37d5:	58                   	pop    %eax
    37d6:	5a                   	pop    %edx
    37d7:	68 ec 57 00 00       	push   $0x57ec
    37dc:	6a 01                	push   $0x1
    37de:	e8 4d 0f 00 00       	call   4730 <printf>
}
    37e3:	83 c4 10             	add    $0x10,%esp
    37e6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    37e9:	c9                   	leave  
    37ea:	c3                   	ret    
    37eb:	90                   	nop
    37ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000037f0 <forktest>:
{
    37f0:	55                   	push   %ebp
    37f1:	89 e5                	mov    %esp,%ebp
    37f3:	56                   	push   %esi
    37f4:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    37f5:	31 db                	xor    %ebx,%ebx
{
    37f7:	83 ec 18             	sub    $0x18,%esp
  printf(1, "fork test\n");
    37fa:	68 00 58 00 00       	push   $0x5800
    37ff:	6a 01                	push   $0x1
    3801:	e8 2a 0f 00 00       	call   4730 <printf>
    3806:	83 c4 10             	add    $0x10,%esp
    3809:	eb 10                	jmp    381b <forktest+0x2b>
    380b:	90                   	nop
    380c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(n=0; n<1000; n++){
    3810:	83 c3 01             	add    $0x1,%ebx
    3813:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    3819:	74 23                	je     383e <forktest+0x4e>
    pid = fork();
    381b:	e8 ba 0d 00 00       	call   45da <fork>
    if(pid < 0)
    3820:	85 c0                	test   %eax,%eax
    3822:	78 3c                	js     3860 <forktest+0x70>
    if(pid == 0)
    3824:	75 ea                	jne    3810 <forktest+0x20>
      exit(0);
    3826:	83 ec 0c             	sub    $0xc,%esp
  for(n=0; n<1000; n++){
    3829:	83 c3 01             	add    $0x1,%ebx
      exit(0);
    382c:	6a 00                	push   $0x0
    382e:	e8 af 0d 00 00       	call   45e2 <exit>
    3833:	83 c4 10             	add    $0x10,%esp
  for(n=0; n<1000; n++){
    3836:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    383c:	75 dd                	jne    381b <forktest+0x2b>
    printf(1, "fork claimed to work 1000 times!\n");
    383e:	83 ec 08             	sub    $0x8,%esp
    3841:	68 a0 5f 00 00       	push   $0x5fa0
    3846:	6a 01                	push   $0x1
    3848:	e8 e3 0e 00 00       	call   4730 <printf>
    exit(0);
    384d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3854:	e8 89 0d 00 00       	call   45e2 <exit>
    3859:	83 c4 10             	add    $0x10,%esp
    385c:	eb 09                	jmp    3867 <forktest+0x77>
    385e:	66 90                	xchg   %ax,%ax
  for(; n > 0; n--){
    3860:	85 db                	test   %ebx,%ebx
    3862:	8d 75 f4             	lea    -0xc(%ebp),%esi
    3865:	74 49                	je     38b0 <forktest+0xc0>
    3867:	8d 75 f4             	lea    -0xc(%ebp),%esi
    386a:	eb 09                	jmp    3875 <forktest+0x85>
    386c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3870:	83 eb 01             	sub    $0x1,%ebx
    3873:	74 3b                	je     38b0 <forktest+0xc0>
    if(wait(&child_status) < 0){
    3875:	83 ec 0c             	sub    $0xc,%esp
    3878:	56                   	push   %esi
    3879:	e8 6c 0d 00 00       	call   45ea <wait>
    387e:	83 c4 10             	add    $0x10,%esp
    3881:	85 c0                	test   %eax,%eax
    3883:	79 eb                	jns    3870 <forktest+0x80>
      printf(1, "wait stopped early\n");
    3885:	83 ec 08             	sub    $0x8,%esp
    3888:	68 0b 58 00 00       	push   $0x580b
    388d:	6a 01                	push   $0x1
    388f:	e8 9c 0e 00 00       	call   4730 <printf>
      exit(0);
    3894:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    389b:	e8 42 0d 00 00       	call   45e2 <exit>
    38a0:	83 c4 10             	add    $0x10,%esp
  for(; n > 0; n--){
    38a3:	83 eb 01             	sub    $0x1,%ebx
    38a6:	75 cd                	jne    3875 <forktest+0x85>
    38a8:	90                   	nop
    38a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  if(wait(&child_status) != -1){
    38b0:	83 ec 0c             	sub    $0xc,%esp
    38b3:	56                   	push   %esi
    38b4:	e8 31 0d 00 00       	call   45ea <wait>
    38b9:	83 c4 10             	add    $0x10,%esp
    38bc:	83 f8 ff             	cmp    $0xffffffff,%eax
    38bf:	74 1e                	je     38df <forktest+0xef>
    printf(1, "wait got too many\n");
    38c1:	83 ec 08             	sub    $0x8,%esp
    38c4:	68 1f 58 00 00       	push   $0x581f
    38c9:	6a 01                	push   $0x1
    38cb:	e8 60 0e 00 00       	call   4730 <printf>
    exit(0);
    38d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    38d7:	e8 06 0d 00 00       	call   45e2 <exit>
    38dc:	83 c4 10             	add    $0x10,%esp
  printf(1, "fork test OK\n");
    38df:	83 ec 08             	sub    $0x8,%esp
    38e2:	68 32 58 00 00       	push   $0x5832
    38e7:	6a 01                	push   $0x1
    38e9:	e8 42 0e 00 00       	call   4730 <printf>
}
    38ee:	8d 65 f8             	lea    -0x8(%ebp),%esp
    38f1:	5b                   	pop    %ebx
    38f2:	5e                   	pop    %esi
    38f3:	5d                   	pop    %ebp
    38f4:	c3                   	ret    
    38f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    38f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003900 <sbrktest>:
{
    3900:	55                   	push   %ebp
    3901:	89 e5                	mov    %esp,%ebp
    3903:	57                   	push   %edi
    3904:	56                   	push   %esi
    3905:	53                   	push   %ebx
  for(i = 0; i < 5000; i++){
    3906:	31 f6                	xor    %esi,%esi
{
    3908:	83 ec 64             	sub    $0x64,%esp
  printf(stdout, "sbrk test\n");
    390b:	68 40 58 00 00       	push   $0x5840
    3910:	ff 35 20 6b 00 00    	pushl  0x6b20
    3916:	e8 15 0e 00 00       	call   4730 <printf>
  oldbrk = sbrk(0);
    391b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3922:	e8 43 0d 00 00       	call   466a <sbrk>
  a = sbrk(0);
    3927:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    392e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    3931:	e8 34 0d 00 00       	call   466a <sbrk>
    3936:	83 c4 10             	add    $0x10,%esp
    3939:	89 c7                	mov    %eax,%edi
    393b:	90                   	nop
    393c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    b = sbrk(1);
    3940:	83 ec 0c             	sub    $0xc,%esp
    3943:	6a 01                	push   $0x1
    3945:	e8 20 0d 00 00       	call   466a <sbrk>
    if(b != a){
    394a:	83 c4 10             	add    $0x10,%esp
    394d:	39 f8                	cmp    %edi,%eax
    b = sbrk(1);
    394f:	89 c3                	mov    %eax,%ebx
    if(b != a){
    3951:	74 23                	je     3976 <sbrktest+0x76>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    3953:	83 ec 0c             	sub    $0xc,%esp
    3956:	50                   	push   %eax
    3957:	57                   	push   %edi
    3958:	56                   	push   %esi
    3959:	68 4b 58 00 00       	push   $0x584b
    395e:	ff 35 20 6b 00 00    	pushl  0x6b20
    3964:	e8 c7 0d 00 00       	call   4730 <printf>
      exit(0);
    3969:	83 c4 14             	add    $0x14,%esp
    396c:	6a 00                	push   $0x0
    396e:	e8 6f 0c 00 00       	call   45e2 <exit>
    3973:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 5000; i++){
    3976:	83 c6 01             	add    $0x1,%esi
    *b = 1;
    3979:	c6 03 01             	movb   $0x1,(%ebx)
    a = b + 1;
    397c:	8d 7b 01             	lea    0x1(%ebx),%edi
  for(i = 0; i < 5000; i++){
    397f:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    3985:	75 b9                	jne    3940 <sbrktest+0x40>
  pid = fork();
    3987:	e8 4e 0c 00 00       	call   45da <fork>
  if(pid < 0){
    398c:	85 c0                	test   %eax,%eax
  pid = fork();
    398e:	89 c6                	mov    %eax,%esi
  if(pid < 0){
    3990:	0f 88 64 03 00 00    	js     3cfa <sbrktest+0x3fa>
  c = sbrk(1);
    3996:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    3999:	83 c3 02             	add    $0x2,%ebx
  c = sbrk(1);
    399c:	6a 01                	push   $0x1
    399e:	e8 c7 0c 00 00       	call   466a <sbrk>
  c = sbrk(1);
    39a3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    39aa:	e8 bb 0c 00 00       	call   466a <sbrk>
  if(c != a + 1){
    39af:	83 c4 10             	add    $0x10,%esp
    39b2:	39 d8                	cmp    %ebx,%eax
    39b4:	74 22                	je     39d8 <sbrktest+0xd8>
    printf(stdout, "sbrk test failed post-fork\n");
    39b6:	83 ec 08             	sub    $0x8,%esp
    39b9:	68 7d 58 00 00       	push   $0x587d
    39be:	ff 35 20 6b 00 00    	pushl  0x6b20
    39c4:	e8 67 0d 00 00       	call   4730 <printf>
    exit(0);
    39c9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    39d0:	e8 0d 0c 00 00       	call   45e2 <exit>
    39d5:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
    39d8:	85 f6                	test   %esi,%esi
    39da:	75 0d                	jne    39e9 <sbrktest+0xe9>
    exit(0);
    39dc:	83 ec 0c             	sub    $0xc,%esp
    39df:	6a 00                	push   $0x0
    39e1:	e8 fc 0b 00 00       	call   45e2 <exit>
    39e6:	83 c4 10             	add    $0x10,%esp
  wait(&child_status);
    39e9:	8d 5d b4             	lea    -0x4c(%ebp),%ebx
    39ec:	83 ec 0c             	sub    $0xc,%esp
    39ef:	53                   	push   %ebx
    39f0:	e8 f5 0b 00 00       	call   45ea <wait>
  a = sbrk(0);
    39f5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    39fc:	e8 69 0c 00 00       	call   466a <sbrk>
    3a01:	89 c6                	mov    %eax,%esi
  amt = (BIG) - (uint)a;
    3a03:	b8 00 00 40 06       	mov    $0x6400000,%eax
    3a08:	29 f0                	sub    %esi,%eax
  p = sbrk(amt);
    3a0a:	89 04 24             	mov    %eax,(%esp)
    3a0d:	e8 58 0c 00 00       	call   466a <sbrk>
  if (p != a) {
    3a12:	83 c4 10             	add    $0x10,%esp
    3a15:	39 c6                	cmp    %eax,%esi
    3a17:	74 22                	je     3a3b <sbrktest+0x13b>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    3a19:	83 ec 08             	sub    $0x8,%esp
    3a1c:	68 c4 5f 00 00       	push   $0x5fc4
    3a21:	ff 35 20 6b 00 00    	pushl  0x6b20
    3a27:	e8 04 0d 00 00       	call   4730 <printf>
    exit(0);
    3a2c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a33:	e8 aa 0b 00 00       	call   45e2 <exit>
    3a38:	83 c4 10             	add    $0x10,%esp
  a = sbrk(0);
    3a3b:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    3a3e:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    3a45:	6a 00                	push   $0x0
    3a47:	e8 1e 0c 00 00       	call   466a <sbrk>
  c = sbrk(-4096);
    3a4c:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    3a53:	89 c6                	mov    %eax,%esi
  c = sbrk(-4096);
    3a55:	e8 10 0c 00 00       	call   466a <sbrk>
  if(c == (char*)0xffffffff){
    3a5a:	83 c4 10             	add    $0x10,%esp
    3a5d:	83 f8 ff             	cmp    $0xffffffff,%eax
    3a60:	0f 84 4c 03 00 00    	je     3db2 <sbrktest+0x4b2>
  c = sbrk(0);
    3a66:	83 ec 0c             	sub    $0xc,%esp
    3a69:	6a 00                	push   $0x0
    3a6b:	e8 fa 0b 00 00       	call   466a <sbrk>
  if(c != a - 4096){
    3a70:	8d 96 00 f0 ff ff    	lea    -0x1000(%esi),%edx
    3a76:	83 c4 10             	add    $0x10,%esp
    3a79:	39 d0                	cmp    %edx,%eax
    3a7b:	74 21                	je     3a9e <sbrktest+0x19e>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3a7d:	50                   	push   %eax
    3a7e:	56                   	push   %esi
    3a7f:	68 04 60 00 00       	push   $0x6004
    3a84:	ff 35 20 6b 00 00    	pushl  0x6b20
    3a8a:	e8 a1 0c 00 00       	call   4730 <printf>
    exit(0);
    3a8f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a96:	e8 47 0b 00 00       	call   45e2 <exit>
    3a9b:	83 c4 10             	add    $0x10,%esp
  a = sbrk(0);
    3a9e:	83 ec 0c             	sub    $0xc,%esp
    3aa1:	6a 00                	push   $0x0
    3aa3:	e8 c2 0b 00 00       	call   466a <sbrk>
    3aa8:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    3aaa:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    3ab1:	e8 b4 0b 00 00       	call   466a <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3ab6:	83 c4 10             	add    $0x10,%esp
    3ab9:	39 c6                	cmp    %eax,%esi
  c = sbrk(4096);
    3abb:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    3abd:	0f 84 cf 02 00 00    	je     3d92 <sbrktest+0x492>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    3ac3:	57                   	push   %edi
    3ac4:	56                   	push   %esi
    3ac5:	68 3c 60 00 00       	push   $0x603c
    3aca:	ff 35 20 6b 00 00    	pushl  0x6b20
    3ad0:	e8 5b 0c 00 00       	call   4730 <printf>
    exit(0);
    3ad5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3adc:	e8 01 0b 00 00       	call   45e2 <exit>
    3ae1:	83 c4 10             	add    $0x10,%esp
  if(*lastaddr == 99){
    3ae4:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    3aeb:	0f 84 7a 02 00 00    	je     3d6b <sbrktest+0x46b>
  a = sbrk(0);
    3af1:	83 ec 0c             	sub    $0xc,%esp
    3af4:	6a 00                	push   $0x0
    3af6:	e8 6f 0b 00 00       	call   466a <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    3afb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    3b02:	89 c6                	mov    %eax,%esi
  c = sbrk(-(sbrk(0) - oldbrk));
    3b04:	e8 61 0b 00 00       	call   466a <sbrk>
    3b09:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    3b0c:	29 c1                	sub    %eax,%ecx
    3b0e:	89 0c 24             	mov    %ecx,(%esp)
    3b11:	e8 54 0b 00 00       	call   466a <sbrk>
  if(c != a){
    3b16:	83 c4 10             	add    $0x10,%esp
    3b19:	39 c6                	cmp    %eax,%esi
    3b1b:	74 21                	je     3b3e <sbrktest+0x23e>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3b1d:	50                   	push   %eax
    3b1e:	56                   	push   %esi
    3b1f:	68 94 60 00 00       	push   $0x6094
    3b24:	ff 35 20 6b 00 00    	pushl  0x6b20
    3b2a:	e8 01 0c 00 00       	call   4730 <printf>
    exit(0);
    3b2f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b36:	e8 a7 0a 00 00       	call   45e2 <exit>
    3b3b:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 5000; i++){
    3b3e:	be 00 00 00 80       	mov    $0x80000000,%esi
    3b43:	eb 1d                	jmp    3b62 <sbrktest+0x262>
    3b45:	8d 76 00             	lea    0x0(%esi),%esi
    wait(&child_status);
    3b48:	83 ec 0c             	sub    $0xc,%esp
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3b4b:	81 c6 50 c3 00 00    	add    $0xc350,%esi
    wait(&child_status);
    3b51:	53                   	push   %ebx
    3b52:	e8 93 0a 00 00       	call   45ea <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3b57:	83 c4 10             	add    $0x10,%esp
    3b5a:	81 fe 80 84 1e 80    	cmp    $0x801e8480,%esi
    3b60:	74 64                	je     3bc6 <sbrktest+0x2c6>
    ppid = getpid();
    3b62:	e8 fb 0a 00 00       	call   4662 <getpid>
    3b67:	89 c7                	mov    %eax,%edi
    pid = fork();
    3b69:	e8 6c 0a 00 00       	call   45da <fork>
    if(pid < 0){
    3b6e:	85 c0                	test   %eax,%eax
    3b70:	78 30                	js     3ba2 <sbrktest+0x2a2>
    if(pid == 0){
    3b72:	75 d4                	jne    3b48 <sbrktest+0x248>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3b74:	0f be 06             	movsbl (%esi),%eax
    3b77:	50                   	push   %eax
    3b78:	56                   	push   %esi
    3b79:	68 b4 58 00 00       	push   $0x58b4
    3b7e:	ff 35 20 6b 00 00    	pushl  0x6b20
    3b84:	e8 a7 0b 00 00       	call   4730 <printf>
      kill(ppid);
    3b89:	89 3c 24             	mov    %edi,(%esp)
    3b8c:	e8 81 0a 00 00       	call   4612 <kill>
      exit(0);
    3b91:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3b98:	e8 45 0a 00 00       	call   45e2 <exit>
    3b9d:	83 c4 10             	add    $0x10,%esp
    3ba0:	eb a6                	jmp    3b48 <sbrktest+0x248>
      printf(stdout, "fork failed\n");
    3ba2:	83 ec 08             	sub    $0x8,%esp
    3ba5:	68 91 59 00 00       	push   $0x5991
    3baa:	ff 35 20 6b 00 00    	pushl  0x6b20
    3bb0:	e8 7b 0b 00 00       	call   4730 <printf>
      exit(0);
    3bb5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3bbc:	e8 21 0a 00 00       	call   45e2 <exit>
    3bc1:	83 c4 10             	add    $0x10,%esp
    3bc4:	eb 82                	jmp    3b48 <sbrktest+0x248>
  if(pipe(fds) != 0){
    3bc6:	8d 45 b8             	lea    -0x48(%ebp),%eax
    3bc9:	83 ec 0c             	sub    $0xc,%esp
    3bcc:	50                   	push   %eax
    3bcd:	e8 20 0a 00 00       	call   45f2 <pipe>
    3bd2:	83 c4 10             	add    $0x10,%esp
    3bd5:	85 c0                	test   %eax,%eax
    3bd7:	74 1e                	je     3bf7 <sbrktest+0x2f7>
    printf(1, "pipe() failed\n");
    3bd9:	83 ec 08             	sub    $0x8,%esp
    3bdc:	68 89 4d 00 00       	push   $0x4d89
    3be1:	6a 01                	push   $0x1
    3be3:	e8 48 0b 00 00       	call   4730 <printf>
    exit(0);
    3be8:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3bef:	e8 ee 09 00 00       	call   45e2 <exit>
    3bf4:	83 c4 10             	add    $0x10,%esp
    3bf7:	8d 7d c0             	lea    -0x40(%ebp),%edi
  for(i = 0; i < 5000; i++){
    3bfa:	89 fe                	mov    %edi,%esi
    if((pids[i] = fork()) == 0){
    3bfc:	e8 d9 09 00 00       	call   45da <fork>
    3c01:	85 c0                	test   %eax,%eax
    3c03:	89 06                	mov    %eax,(%esi)
    3c05:	0f 84 ac 00 00 00    	je     3cb7 <sbrktest+0x3b7>
    if(pids[i] != -1)
    3c0b:	83 f8 ff             	cmp    $0xffffffff,%eax
    3c0e:	74 14                	je     3c24 <sbrktest+0x324>
      read(fds[0], &scratch, 1);
    3c10:	8d 45 b3             	lea    -0x4d(%ebp),%eax
    3c13:	83 ec 04             	sub    $0x4,%esp
    3c16:	6a 01                	push   $0x1
    3c18:	50                   	push   %eax
    3c19:	ff 75 b8             	pushl  -0x48(%ebp)
    3c1c:	e8 d9 09 00 00       	call   45fa <read>
    3c21:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3c24:	8d 45 e8             	lea    -0x18(%ebp),%eax
    3c27:	83 c6 04             	add    $0x4,%esi
    3c2a:	39 c6                	cmp    %eax,%esi
    3c2c:	75 ce                	jne    3bfc <sbrktest+0x2fc>
  c = sbrk(4096);
    3c2e:	83 ec 0c             	sub    $0xc,%esp
    3c31:	68 00 10 00 00       	push   $0x1000
    3c36:	e8 2f 0a 00 00       	call   466a <sbrk>
    3c3b:	83 c4 10             	add    $0x10,%esp
    3c3e:	89 45 a0             	mov    %eax,-0x60(%ebp)
    if(pids[i] == -1)
    3c41:	8b 07                	mov    (%edi),%eax
    3c43:	83 f8 ff             	cmp    $0xffffffff,%eax
    3c46:	74 14                	je     3c5c <sbrktest+0x35c>
    kill(pids[i]);
    3c48:	83 ec 0c             	sub    $0xc,%esp
    3c4b:	50                   	push   %eax
    3c4c:	e8 c1 09 00 00       	call   4612 <kill>
    wait(&child_status);
    3c51:	89 1c 24             	mov    %ebx,(%esp)
    3c54:	e8 91 09 00 00       	call   45ea <wait>
    3c59:	83 c4 10             	add    $0x10,%esp
    3c5c:	83 c7 04             	add    $0x4,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3c5f:	39 f7                	cmp    %esi,%edi
    3c61:	75 de                	jne    3c41 <sbrktest+0x341>
  if(c == (char*)0xffffffff){
    3c63:	83 7d a0 ff          	cmpl   $0xffffffff,-0x60(%ebp)
    3c67:	0f 84 d7 00 00 00    	je     3d44 <sbrktest+0x444>
  if(sbrk(0) > oldbrk)
    3c6d:	83 ec 0c             	sub    $0xc,%esp
    3c70:	6a 00                	push   $0x0
    3c72:	e8 f3 09 00 00       	call   466a <sbrk>
    3c77:	83 c4 10             	add    $0x10,%esp
    3c7a:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    3c7d:	73 1a                	jae    3c99 <sbrktest+0x399>
    sbrk(-(sbrk(0) - oldbrk));
    3c7f:	83 ec 0c             	sub    $0xc,%esp
    3c82:	6a 00                	push   $0x0
    3c84:	e8 e1 09 00 00       	call   466a <sbrk>
    3c89:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    3c8c:	29 c1                	sub    %eax,%ecx
    3c8e:	89 0c 24             	mov    %ecx,(%esp)
    3c91:	e8 d4 09 00 00       	call   466a <sbrk>
    3c96:	83 c4 10             	add    $0x10,%esp
  printf(stdout, "sbrk test OK\n");
    3c99:	83 ec 08             	sub    $0x8,%esp
    3c9c:	68 e8 58 00 00       	push   $0x58e8
    3ca1:	ff 35 20 6b 00 00    	pushl  0x6b20
    3ca7:	e8 84 0a 00 00       	call   4730 <printf>
}
    3cac:	83 c4 10             	add    $0x10,%esp
    3caf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3cb2:	5b                   	pop    %ebx
    3cb3:	5e                   	pop    %esi
    3cb4:	5f                   	pop    %edi
    3cb5:	5d                   	pop    %ebp
    3cb6:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    3cb7:	83 ec 0c             	sub    $0xc,%esp
    3cba:	6a 00                	push   $0x0
    3cbc:	e8 a9 09 00 00       	call   466a <sbrk>
    3cc1:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3cc6:	29 c2                	sub    %eax,%edx
    3cc8:	89 14 24             	mov    %edx,(%esp)
    3ccb:	e8 9a 09 00 00       	call   466a <sbrk>
      write(fds[1], "x", 1);
    3cd0:	83 c4 0c             	add    $0xc,%esp
    3cd3:	6a 01                	push   $0x1
    3cd5:	68 a9 53 00 00       	push   $0x53a9
    3cda:	ff 75 bc             	pushl  -0x44(%ebp)
    3cdd:	e8 20 09 00 00       	call   4602 <write>
    3ce2:	83 c4 10             	add    $0x10,%esp
    3ce5:	8d 76 00             	lea    0x0(%esi),%esi
      for(;;) sleep(1000);
    3ce8:	83 ec 0c             	sub    $0xc,%esp
    3ceb:	68 e8 03 00 00       	push   $0x3e8
    3cf0:	e8 7d 09 00 00       	call   4672 <sleep>
    3cf5:	83 c4 10             	add    $0x10,%esp
    3cf8:	eb ee                	jmp    3ce8 <sbrktest+0x3e8>
    printf(stdout, "sbrk test fork failed\n");
    3cfa:	83 ec 08             	sub    $0x8,%esp
  if(c != a + 1){
    3cfd:	83 c3 02             	add    $0x2,%ebx
    printf(stdout, "sbrk test fork failed\n");
    3d00:	68 66 58 00 00       	push   $0x5866
    3d05:	ff 35 20 6b 00 00    	pushl  0x6b20
    3d0b:	e8 20 0a 00 00       	call   4730 <printf>
    exit(0);
    3d10:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d17:	e8 c6 08 00 00       	call   45e2 <exit>
  c = sbrk(1);
    3d1c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3d23:	e8 42 09 00 00       	call   466a <sbrk>
  c = sbrk(1);
    3d28:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3d2f:	e8 36 09 00 00       	call   466a <sbrk>
  if(c != a + 1){
    3d34:	83 c4 10             	add    $0x10,%esp
    3d37:	39 d8                	cmp    %ebx,%eax
    3d39:	0f 85 77 fc ff ff    	jne    39b6 <sbrktest+0xb6>
    3d3f:	e9 a5 fc ff ff       	jmp    39e9 <sbrktest+0xe9>
    printf(stdout, "failed sbrk leaked memory\n");
    3d44:	83 ec 08             	sub    $0x8,%esp
    3d47:	68 cd 58 00 00       	push   $0x58cd
    3d4c:	ff 35 20 6b 00 00    	pushl  0x6b20
    3d52:	e8 d9 09 00 00       	call   4730 <printf>
    exit(0);
    3d57:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d5e:	e8 7f 08 00 00       	call   45e2 <exit>
    3d63:	83 c4 10             	add    $0x10,%esp
    3d66:	e9 02 ff ff ff       	jmp    3c6d <sbrktest+0x36d>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    3d6b:	83 ec 08             	sub    $0x8,%esp
    3d6e:	68 64 60 00 00       	push   $0x6064
    3d73:	ff 35 20 6b 00 00    	pushl  0x6b20
    3d79:	e8 b2 09 00 00       	call   4730 <printf>
    exit(0);
    3d7e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d85:	e8 58 08 00 00       	call   45e2 <exit>
    3d8a:	83 c4 10             	add    $0x10,%esp
    3d8d:	e9 5f fd ff ff       	jmp    3af1 <sbrktest+0x1f1>
  if(c != a || sbrk(0) != a + 4096){
    3d92:	83 ec 0c             	sub    $0xc,%esp
    3d95:	6a 00                	push   $0x0
    3d97:	e8 ce 08 00 00       	call   466a <sbrk>
    3d9c:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    3da2:	83 c4 10             	add    $0x10,%esp
    3da5:	39 d0                	cmp    %edx,%eax
    3da7:	0f 85 16 fd ff ff    	jne    3ac3 <sbrktest+0x1c3>
    3dad:	e9 32 fd ff ff       	jmp    3ae4 <sbrktest+0x1e4>
    printf(stdout, "sbrk could not deallocate\n");
    3db2:	83 ec 08             	sub    $0x8,%esp
    3db5:	68 99 58 00 00       	push   $0x5899
    3dba:	ff 35 20 6b 00 00    	pushl  0x6b20
    3dc0:	e8 6b 09 00 00       	call   4730 <printf>
    exit(0);
    3dc5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3dcc:	e8 11 08 00 00       	call   45e2 <exit>
    3dd1:	83 c4 10             	add    $0x10,%esp
    3dd4:	e9 8d fc ff ff       	jmp    3a66 <sbrktest+0x166>
    3dd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003de0 <validateint>:
{
    3de0:	55                   	push   %ebp
    3de1:	89 e5                	mov    %esp,%ebp
}
    3de3:	5d                   	pop    %ebp
    3de4:	c3                   	ret    
    3de5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3de9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003df0 <validatetest>:
{
    3df0:	55                   	push   %ebp
    3df1:	89 e5                	mov    %esp,%ebp
    3df3:	57                   	push   %edi
    3df4:	56                   	push   %esi
    3df5:	53                   	push   %ebx
    3df6:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  for(p = 0; p <= (uint)hi; p += 4096){
    3df9:	31 db                	xor    %ebx,%ebx
{
    3dfb:	83 ec 24             	sub    $0x24,%esp
  printf(stdout, "validate test\n");
    3dfe:	68 f6 58 00 00       	push   $0x58f6
    3e03:	ff 35 20 6b 00 00    	pushl  0x6b20
    3e09:	e8 22 09 00 00       	call   4730 <printf>
    3e0e:	83 c4 10             	add    $0x10,%esp
    3e11:	eb 70                	jmp    3e83 <validatetest+0x93>
    3e13:	90                   	nop
    3e14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    sleep(0);
    3e18:	83 ec 0c             	sub    $0xc,%esp
    3e1b:	6a 00                	push   $0x0
    3e1d:	e8 50 08 00 00       	call   4672 <sleep>
    sleep(0);
    3e22:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e29:	e8 44 08 00 00       	call   4672 <sleep>
    kill(pid);
    3e2e:	89 34 24             	mov    %esi,(%esp)
    3e31:	e8 dc 07 00 00       	call   4612 <kill>
    wait(&child_status);
    3e36:	89 3c 24             	mov    %edi,(%esp)
    3e39:	e8 ac 07 00 00       	call   45ea <wait>
    if(link("nosuchfile", (char*)p) != -1){
    3e3e:	58                   	pop    %eax
    3e3f:	5a                   	pop    %edx
    3e40:	53                   	push   %ebx
    3e41:	68 05 59 00 00       	push   $0x5905
    3e46:	e8 f7 07 00 00       	call   4642 <link>
    3e4b:	83 c4 10             	add    $0x10,%esp
    3e4e:	83 f8 ff             	cmp    $0xffffffff,%eax
    3e51:	74 22                	je     3e75 <validatetest+0x85>
      printf(stdout, "link should not succeed\n");
    3e53:	83 ec 08             	sub    $0x8,%esp
    3e56:	68 10 59 00 00       	push   $0x5910
    3e5b:	ff 35 20 6b 00 00    	pushl  0x6b20
    3e61:	e8 ca 08 00 00       	call   4730 <printf>
      exit(0);
    3e66:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3e6d:	e8 70 07 00 00       	call   45e2 <exit>
    3e72:	83 c4 10             	add    $0x10,%esp
  for(p = 0; p <= (uint)hi; p += 4096){
    3e75:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3e7b:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    3e81:	74 1d                	je     3ea0 <validatetest+0xb0>
    if((pid = fork()) == 0){
    3e83:	e8 52 07 00 00       	call   45da <fork>
    3e88:	85 c0                	test   %eax,%eax
    3e8a:	89 c6                	mov    %eax,%esi
    3e8c:	75 8a                	jne    3e18 <validatetest+0x28>
      exit(0);
    3e8e:	83 ec 0c             	sub    $0xc,%esp
    3e91:	6a 00                	push   $0x0
    3e93:	e8 4a 07 00 00       	call   45e2 <exit>
    3e98:	83 c4 10             	add    $0x10,%esp
    3e9b:	e9 78 ff ff ff       	jmp    3e18 <validatetest+0x28>
  printf(stdout, "validate ok\n");
    3ea0:	83 ec 08             	sub    $0x8,%esp
    3ea3:	68 29 59 00 00       	push   $0x5929
    3ea8:	ff 35 20 6b 00 00    	pushl  0x6b20
    3eae:	e8 7d 08 00 00       	call   4730 <printf>
}
    3eb3:	83 c4 10             	add    $0x10,%esp
    3eb6:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3eb9:	5b                   	pop    %ebx
    3eba:	5e                   	pop    %esi
    3ebb:	5f                   	pop    %edi
    3ebc:	5d                   	pop    %ebp
    3ebd:	c3                   	ret    
    3ebe:	66 90                	xchg   %ax,%ax

00003ec0 <bsstest>:
{
    3ec0:	55                   	push   %ebp
    3ec1:	89 e5                	mov    %esp,%ebp
    3ec3:	53                   	push   %ebx
  printf(stdout, "bss test\n");
    3ec4:	31 db                	xor    %ebx,%ebx
{
    3ec6:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "bss test\n");
    3ec9:	68 36 59 00 00       	push   $0x5936
    3ece:	ff 35 20 6b 00 00    	pushl  0x6b20
    3ed4:	e8 57 08 00 00       	call   4730 <printf>
    3ed9:	83 c4 10             	add    $0x10,%esp
    3edc:	eb 0d                	jmp    3eeb <bsstest+0x2b>
    3ede:	66 90                	xchg   %ax,%ax
  for(i = 0; i < sizeof(uninit); i++){
    3ee0:	83 c3 01             	add    $0x1,%ebx
    3ee3:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    3ee9:	74 36                	je     3f21 <bsstest+0x61>
    if(uninit[i] != '\0'){
    3eeb:	80 bb e0 6b 00 00 00 	cmpb   $0x0,0x6be0(%ebx)
    3ef2:	74 ec                	je     3ee0 <bsstest+0x20>
      printf(stdout, "bss test failed\n");
    3ef4:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < sizeof(uninit); i++){
    3ef7:	83 c3 01             	add    $0x1,%ebx
      printf(stdout, "bss test failed\n");
    3efa:	68 40 59 00 00       	push   $0x5940
    3eff:	ff 35 20 6b 00 00    	pushl  0x6b20
    3f05:	e8 26 08 00 00       	call   4730 <printf>
      exit(0);
    3f0a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3f11:	e8 cc 06 00 00       	call   45e2 <exit>
    3f16:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(uninit); i++){
    3f19:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    3f1f:	75 ca                	jne    3eeb <bsstest+0x2b>
  printf(stdout, "bss test ok\n");
    3f21:	83 ec 08             	sub    $0x8,%esp
    3f24:	68 51 59 00 00       	push   $0x5951
    3f29:	ff 35 20 6b 00 00    	pushl  0x6b20
    3f2f:	e8 fc 07 00 00       	call   4730 <printf>
}
    3f34:	83 c4 10             	add    $0x10,%esp
    3f37:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3f3a:	c9                   	leave  
    3f3b:	c3                   	ret    
    3f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003f40 <bigargtest>:
{
    3f40:	55                   	push   %ebp
    3f41:	89 e5                	mov    %esp,%ebp
    3f43:	83 ec 34             	sub    $0x34,%esp
  unlink("bigarg-ok");
    3f46:	68 5e 59 00 00       	push   $0x595e
    3f4b:	e8 e2 06 00 00       	call   4632 <unlink>
  pid = fork();
    3f50:	e8 85 06 00 00       	call   45da <fork>
  if(pid == 0){
    3f55:	83 c4 10             	add    $0x10,%esp
    3f58:	85 c0                	test   %eax,%eax
    3f5a:	0f 85 c0 00 00 00    	jne    4020 <bigargtest+0xe0>
    3f60:	b8 40 6b 00 00       	mov    $0x6b40,%eax
    3f65:	8d 76 00             	lea    0x0(%esi),%esi
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3f68:	c7 00 b8 60 00 00    	movl   $0x60b8,(%eax)
    3f6e:	83 c0 04             	add    $0x4,%eax
    for(i = 0; i < MAXARG-1; i++)
    3f71:	3d bc 6b 00 00       	cmp    $0x6bbc,%eax
    3f76:	75 f0                	jne    3f68 <bigargtest+0x28>
    printf(stdout, "bigarg test\n");
    3f78:	83 ec 08             	sub    $0x8,%esp
    args[MAXARG-1] = 0;
    3f7b:	c7 05 bc 6b 00 00 00 	movl   $0x0,0x6bbc
    3f82:	00 00 00 
    printf(stdout, "bigarg test\n");
    3f85:	68 68 59 00 00       	push   $0x5968
    3f8a:	ff 35 20 6b 00 00    	pushl  0x6b20
    3f90:	e8 9b 07 00 00       	call   4730 <printf>
    exec("echo", args);
    3f95:	59                   	pop    %ecx
    3f96:	58                   	pop    %eax
    3f97:	68 40 6b 00 00       	push   $0x6b40
    3f9c:	68 35 4b 00 00       	push   $0x4b35
    3fa1:	e8 74 06 00 00       	call   461a <exec>
    printf(stdout, "bigarg test ok\n");
    3fa6:	58                   	pop    %eax
    3fa7:	5a                   	pop    %edx
    3fa8:	68 75 59 00 00       	push   $0x5975
    3fad:	ff 35 20 6b 00 00    	pushl  0x6b20
    3fb3:	e8 78 07 00 00       	call   4730 <printf>
    fd = open("bigarg-ok", O_CREATE);
    3fb8:	59                   	pop    %ecx
    3fb9:	58                   	pop    %eax
    3fba:	68 00 02 00 00       	push   $0x200
    3fbf:	68 5e 59 00 00       	push   $0x595e
    3fc4:	e8 59 06 00 00       	call   4622 <open>
    close(fd);
    3fc9:	89 04 24             	mov    %eax,(%esp)
    3fcc:	e8 39 06 00 00       	call   460a <close>
    exit(0);
    3fd1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3fd8:	e8 05 06 00 00       	call   45e2 <exit>
    3fdd:	83 c4 10             	add    $0x10,%esp
  wait(&child_status);
    3fe0:	8d 45 f4             	lea    -0xc(%ebp),%eax
    3fe3:	83 ec 0c             	sub    $0xc,%esp
    3fe6:	50                   	push   %eax
    3fe7:	e8 fe 05 00 00       	call   45ea <wait>
  fd = open("bigarg-ok", 0);
    3fec:	58                   	pop    %eax
    3fed:	5a                   	pop    %edx
    3fee:	6a 00                	push   $0x0
    3ff0:	68 5e 59 00 00       	push   $0x595e
    3ff5:	e8 28 06 00 00       	call   4622 <open>
  if(fd < 0){
    3ffa:	83 c4 10             	add    $0x10,%esp
    3ffd:	85 c0                	test   %eax,%eax
    3fff:	78 4f                	js     4050 <bigargtest+0x110>
  close(fd);
    4001:	83 ec 0c             	sub    $0xc,%esp
    4004:	50                   	push   %eax
    4005:	e8 00 06 00 00       	call   460a <close>
  unlink("bigarg-ok");
    400a:	c7 04 24 5e 59 00 00 	movl   $0x595e,(%esp)
    4011:	e8 1c 06 00 00       	call   4632 <unlink>
}
    4016:	83 c4 10             	add    $0x10,%esp
    4019:	c9                   	leave  
    401a:	c3                   	ret    
    401b:	90                   	nop
    401c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  } else if(pid < 0){
    4020:	79 be                	jns    3fe0 <bigargtest+0xa0>
    printf(stdout, "bigargtest: fork failed\n");
    4022:	83 ec 08             	sub    $0x8,%esp
    4025:	68 85 59 00 00       	push   $0x5985
    402a:	ff 35 20 6b 00 00    	pushl  0x6b20
    4030:	e8 fb 06 00 00       	call   4730 <printf>
    exit(0);
    4035:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    403c:	e8 a1 05 00 00       	call   45e2 <exit>
    4041:	83 c4 10             	add    $0x10,%esp
    4044:	eb 9a                	jmp    3fe0 <bigargtest+0xa0>
    4046:	8d 76 00             	lea    0x0(%esi),%esi
    4049:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    printf(stdout, "bigarg test failed!\n");
    4050:	83 ec 08             	sub    $0x8,%esp
    4053:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    4056:	68 9e 59 00 00       	push   $0x599e
    405b:	ff 35 20 6b 00 00    	pushl  0x6b20
    4061:	e8 ca 06 00 00       	call   4730 <printf>
    exit(0);
    4066:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    406d:	e8 70 05 00 00       	call   45e2 <exit>
    4072:	83 c4 10             	add    $0x10,%esp
    4075:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4078:	eb 87                	jmp    4001 <bigargtest+0xc1>
    407a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00004080 <fsfull>:
{
    4080:	55                   	push   %ebp
    4081:	89 e5                	mov    %esp,%ebp
    4083:	57                   	push   %edi
    4084:	56                   	push   %esi
    4085:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    4086:	31 db                	xor    %ebx,%ebx
{
    4088:	83 ec 54             	sub    $0x54,%esp
  printf(1, "fsfull test\n");
    408b:	68 b3 59 00 00       	push   $0x59b3
    4090:	6a 01                	push   $0x1
    4092:	e8 99 06 00 00       	call   4730 <printf>
    4097:	83 c4 10             	add    $0x10,%esp
    409a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    40a0:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    40a5:	89 de                	mov    %ebx,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    40a7:	89 d9                	mov    %ebx,%ecx
    name[1] = '0' + nfiles / 1000;
    40a9:	f7 eb                	imul   %ebx
    40ab:	c1 fe 1f             	sar    $0x1f,%esi
    name[3] = '0' + (nfiles % 100) / 10;
    40ae:	89 df                	mov    %ebx,%edi
    printf(1, "writing %s\n", name);
    40b0:	83 ec 04             	sub    $0x4,%esp
    name[0] = 'f';
    40b3:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    40b7:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    40bb:	c1 fa 06             	sar    $0x6,%edx
    40be:	29 f2                	sub    %esi,%edx
    40c0:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    40c3:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    40c9:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    40cc:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    40d1:	29 d1                	sub    %edx,%ecx
    40d3:	f7 e9                	imul   %ecx
    40d5:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    40d8:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    40dd:	c1 fa 05             	sar    $0x5,%edx
    40e0:	29 ca                	sub    %ecx,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    40e2:	b9 67 66 66 66       	mov    $0x66666667,%ecx
    name[2] = '0' + (nfiles % 1000) / 100;
    40e7:	83 c2 30             	add    $0x30,%edx
    40ea:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    40ed:	f7 eb                	imul   %ebx
    40ef:	c1 fa 05             	sar    $0x5,%edx
    40f2:	29 f2                	sub    %esi,%edx
    40f4:	6b d2 64             	imul   $0x64,%edx,%edx
    40f7:	29 d7                	sub    %edx,%edi
    40f9:	89 f8                	mov    %edi,%eax
    40fb:	c1 ff 1f             	sar    $0x1f,%edi
    40fe:	f7 e9                	imul   %ecx
    name[4] = '0' + (nfiles % 10);
    4100:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    4102:	c1 fa 02             	sar    $0x2,%edx
    4105:	29 fa                	sub    %edi,%edx
    4107:	83 c2 30             	add    $0x30,%edx
    410a:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    410d:	f7 e9                	imul   %ecx
    410f:	89 d9                	mov    %ebx,%ecx
    4111:	c1 fa 02             	sar    $0x2,%edx
    4114:	29 f2                	sub    %esi,%edx
    4116:	8d 04 92             	lea    (%edx,%edx,4),%eax
    4119:	01 c0                	add    %eax,%eax
    411b:	29 c1                	sub    %eax,%ecx
    411d:	89 c8                	mov    %ecx,%eax
    411f:	83 c0 30             	add    $0x30,%eax
    4122:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    4125:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4128:	50                   	push   %eax
    4129:	68 c0 59 00 00       	push   $0x59c0
    412e:	6a 01                	push   $0x1
    4130:	e8 fb 05 00 00       	call   4730 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    4135:	58                   	pop    %eax
    4136:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4139:	5a                   	pop    %edx
    413a:	68 02 02 00 00       	push   $0x202
    413f:	50                   	push   %eax
    4140:	e8 dd 04 00 00       	call   4622 <open>
    if(fd < 0){
    4145:	83 c4 10             	add    $0x10,%esp
    4148:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    414a:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    414c:	78 50                	js     419e <fsfull+0x11e>
    414e:	31 f6                	xor    %esi,%esi
    4150:	eb 08                	jmp    415a <fsfull+0xda>
    4152:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      total += cc;
    4158:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    415a:	83 ec 04             	sub    $0x4,%esp
    415d:	68 00 02 00 00       	push   $0x200
    4162:	68 00 93 00 00       	push   $0x9300
    4167:	57                   	push   %edi
    4168:	e8 95 04 00 00       	call   4602 <write>
      if(cc < 512)
    416d:	83 c4 10             	add    $0x10,%esp
    4170:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    4175:	7f e1                	jg     4158 <fsfull+0xd8>
    printf(1, "wrote %d bytes\n", total);
    4177:	83 ec 04             	sub    $0x4,%esp
    417a:	56                   	push   %esi
    417b:	68 dc 59 00 00       	push   $0x59dc
    4180:	6a 01                	push   $0x1
    4182:	e8 a9 05 00 00       	call   4730 <printf>
    close(fd);
    4187:	89 3c 24             	mov    %edi,(%esp)
    418a:	e8 7b 04 00 00       	call   460a <close>
    if(total == 0)
    418f:	83 c4 10             	add    $0x10,%esp
    4192:	85 f6                	test   %esi,%esi
    4194:	74 22                	je     41b8 <fsfull+0x138>
  for(nfiles = 0; ; nfiles++){
    4196:	83 c3 01             	add    $0x1,%ebx
    4199:	e9 02 ff ff ff       	jmp    40a0 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    419e:	8d 45 a8             	lea    -0x58(%ebp),%eax
    41a1:	83 ec 04             	sub    $0x4,%esp
    41a4:	50                   	push   %eax
    41a5:	68 cc 59 00 00       	push   $0x59cc
    41aa:	6a 01                	push   $0x1
    41ac:	e8 7f 05 00 00       	call   4730 <printf>
      break;
    41b1:	83 c4 10             	add    $0x10,%esp
    41b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + nfiles / 1000;
    41b8:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    41bd:	89 de                	mov    %ebx,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    41bf:	89 d9                	mov    %ebx,%ecx
    name[1] = '0' + nfiles / 1000;
    41c1:	f7 eb                	imul   %ebx
    41c3:	c1 fe 1f             	sar    $0x1f,%esi
    name[3] = '0' + (nfiles % 100) / 10;
    41c6:	89 df                	mov    %ebx,%edi
    unlink(name);
    41c8:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'f';
    41cb:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    41cf:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    41d3:	c1 fa 06             	sar    $0x6,%edx
    41d6:	29 f2                	sub    %esi,%edx
    41d8:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    41db:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    41e1:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    41e4:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    41e9:	29 d1                	sub    %edx,%ecx
    41eb:	f7 e9                	imul   %ecx
    41ed:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    41f0:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    41f5:	c1 fa 05             	sar    $0x5,%edx
    41f8:	29 ca                	sub    %ecx,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    41fa:	b9 67 66 66 66       	mov    $0x66666667,%ecx
    name[2] = '0' + (nfiles % 1000) / 100;
    41ff:	83 c2 30             	add    $0x30,%edx
    4202:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    4205:	f7 eb                	imul   %ebx
    4207:	c1 fa 05             	sar    $0x5,%edx
    420a:	29 f2                	sub    %esi,%edx
    420c:	6b d2 64             	imul   $0x64,%edx,%edx
    420f:	29 d7                	sub    %edx,%edi
    4211:	89 f8                	mov    %edi,%eax
    4213:	c1 ff 1f             	sar    $0x1f,%edi
    4216:	f7 e9                	imul   %ecx
    name[4] = '0' + (nfiles % 10);
    4218:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    421a:	c1 fa 02             	sar    $0x2,%edx
    421d:	29 fa                	sub    %edi,%edx
    421f:	83 c2 30             	add    $0x30,%edx
    4222:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    4225:	f7 e9                	imul   %ecx
    4227:	89 d9                	mov    %ebx,%ecx
    nfiles--;
    4229:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    422c:	c1 fa 02             	sar    $0x2,%edx
    422f:	29 f2                	sub    %esi,%edx
    4231:	8d 04 92             	lea    (%edx,%edx,4),%eax
    4234:	01 c0                	add    %eax,%eax
    4236:	29 c1                	sub    %eax,%ecx
    4238:	89 c8                	mov    %ecx,%eax
    423a:	83 c0 30             	add    $0x30,%eax
    423d:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    4240:	8d 45 a8             	lea    -0x58(%ebp),%eax
    4243:	50                   	push   %eax
    4244:	e8 e9 03 00 00       	call   4632 <unlink>
  while(nfiles >= 0){
    4249:	83 c4 10             	add    $0x10,%esp
    424c:	83 fb ff             	cmp    $0xffffffff,%ebx
    424f:	0f 85 63 ff ff ff    	jne    41b8 <fsfull+0x138>
  printf(1, "fsfull test finished\n");
    4255:	83 ec 08             	sub    $0x8,%esp
    4258:	68 ec 59 00 00       	push   $0x59ec
    425d:	6a 01                	push   $0x1
    425f:	e8 cc 04 00 00       	call   4730 <printf>
}
    4264:	83 c4 10             	add    $0x10,%esp
    4267:	8d 65 f4             	lea    -0xc(%ebp),%esp
    426a:	5b                   	pop    %ebx
    426b:	5e                   	pop    %esi
    426c:	5f                   	pop    %edi
    426d:	5d                   	pop    %ebp
    426e:	c3                   	ret    
    426f:	90                   	nop

00004270 <uio>:
{
    4270:	55                   	push   %ebp
    4271:	89 e5                	mov    %esp,%ebp
    4273:	83 ec 20             	sub    $0x20,%esp
  printf(1, "uio test\n");
    4276:	68 02 5a 00 00       	push   $0x5a02
    427b:	6a 01                	push   $0x1
    427d:	e8 ae 04 00 00       	call   4730 <printf>
  pid = fork();
    4282:	e8 53 03 00 00       	call   45da <fork>
  if(pid == 0){
    4287:	83 c4 10             	add    $0x10,%esp
    428a:	85 c0                	test   %eax,%eax
    428c:	74 22                	je     42b0 <uio+0x40>
  } else if(pid < 0){
    428e:	78 58                	js     42e8 <uio+0x78>
  wait(&child_status);
    4290:	8d 45 f4             	lea    -0xc(%ebp),%eax
    4293:	83 ec 0c             	sub    $0xc,%esp
    4296:	50                   	push   %eax
    4297:	e8 4e 03 00 00       	call   45ea <wait>
  printf(1, "uio test done\n");
    429c:	58                   	pop    %eax
    429d:	5a                   	pop    %edx
    429e:	68 0c 5a 00 00       	push   $0x5a0c
    42a3:	6a 01                	push   $0x1
    42a5:	e8 86 04 00 00       	call   4730 <printf>
}
    42aa:	83 c4 10             	add    $0x10,%esp
    42ad:	c9                   	leave  
    42ae:	c3                   	ret    
    42af:	90                   	nop
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    42b0:	ba 70 00 00 00       	mov    $0x70,%edx
    42b5:	b8 09 00 00 00       	mov    $0x9,%eax
    42ba:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    42bb:	ba 71 00 00 00       	mov    $0x71,%edx
    42c0:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    42c1:	83 ec 08             	sub    $0x8,%esp
    42c4:	68 98 61 00 00       	push   $0x6198
    printf (1, "fork failed\n");
    42c9:	6a 01                	push   $0x1
    42cb:	e8 60 04 00 00       	call   4730 <printf>
    exit(0);
    42d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    42d7:	e8 06 03 00 00       	call   45e2 <exit>
    42dc:	83 c4 10             	add    $0x10,%esp
    42df:	eb af                	jmp    4290 <uio+0x20>
    42e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    printf (1, "fork failed\n");
    42e8:	83 ec 08             	sub    $0x8,%esp
    42eb:	68 91 59 00 00       	push   $0x5991
    42f0:	eb d7                	jmp    42c9 <uio+0x59>
    42f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    42f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004300 <argptest>:
{
    4300:	55                   	push   %ebp
    4301:	89 e5                	mov    %esp,%ebp
    4303:	53                   	push   %ebx
    4304:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    4307:	6a 00                	push   $0x0
    4309:	68 1b 5a 00 00       	push   $0x5a1b
    430e:	e8 0f 03 00 00       	call   4622 <open>
  if (fd < 0) {
    4313:	83 c4 10             	add    $0x10,%esp
    4316:	85 c0                	test   %eax,%eax
  fd = open("init", O_RDONLY);
    4318:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    431a:	78 3c                	js     4358 <argptest+0x58>
  read(fd, sbrk(0) - 1, -1);
    431c:	83 ec 0c             	sub    $0xc,%esp
    431f:	6a 00                	push   $0x0
    4321:	e8 44 03 00 00       	call   466a <sbrk>
    4326:	83 c4 0c             	add    $0xc,%esp
    4329:	83 e8 01             	sub    $0x1,%eax
    432c:	6a ff                	push   $0xffffffff
    432e:	50                   	push   %eax
    432f:	53                   	push   %ebx
    4330:	e8 c5 02 00 00       	call   45fa <read>
  close(fd);
    4335:	89 1c 24             	mov    %ebx,(%esp)
    4338:	e8 cd 02 00 00       	call   460a <close>
  printf(1, "arg test passed\n");
    433d:	58                   	pop    %eax
    433e:	5a                   	pop    %edx
    433f:	68 2d 5a 00 00       	push   $0x5a2d
    4344:	6a 01                	push   $0x1
    4346:	e8 e5 03 00 00       	call   4730 <printf>
}
    434b:	83 c4 10             	add    $0x10,%esp
    434e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    4351:	c9                   	leave  
    4352:	c3                   	ret    
    4353:	90                   	nop
    4354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(2, "open failed\n");
    4358:	83 ec 08             	sub    $0x8,%esp
    435b:	68 20 5a 00 00       	push   $0x5a20
    4360:	6a 02                	push   $0x2
    4362:	e8 c9 03 00 00       	call   4730 <printf>
    exit(0);
    4367:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    436e:	e8 6f 02 00 00       	call   45e2 <exit>
    4373:	83 c4 10             	add    $0x10,%esp
    4376:	eb a4                	jmp    431c <argptest+0x1c>
    4378:	90                   	nop
    4379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00004380 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    4380:	69 05 1c 6b 00 00 0d 	imul   $0x19660d,0x6b1c,%eax
    4387:	66 19 00 
{
    438a:	55                   	push   %ebp
    438b:	89 e5                	mov    %esp,%ebp
}
    438d:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    438e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    4393:	a3 1c 6b 00 00       	mov    %eax,0x6b1c
}
    4398:	c3                   	ret    
    4399:	66 90                	xchg   %ax,%ax
    439b:	66 90                	xchg   %ax,%ax
    439d:	66 90                	xchg   %ax,%ax
    439f:	90                   	nop

000043a0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    43a0:	55                   	push   %ebp
    43a1:	89 e5                	mov    %esp,%ebp
    43a3:	53                   	push   %ebx
    43a4:	8b 45 08             	mov    0x8(%ebp),%eax
    43a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    43aa:	89 c2                	mov    %eax,%edx
    43ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    43b0:	83 c1 01             	add    $0x1,%ecx
    43b3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    43b7:	83 c2 01             	add    $0x1,%edx
    43ba:	84 db                	test   %bl,%bl
    43bc:	88 5a ff             	mov    %bl,-0x1(%edx)
    43bf:	75 ef                	jne    43b0 <strcpy+0x10>
    ;
  return os;
}
    43c1:	5b                   	pop    %ebx
    43c2:	5d                   	pop    %ebp
    43c3:	c3                   	ret    
    43c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    43ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000043d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    43d0:	55                   	push   %ebp
    43d1:	89 e5                	mov    %esp,%ebp
    43d3:	56                   	push   %esi
    43d4:	53                   	push   %ebx
    43d5:	8b 55 08             	mov    0x8(%ebp),%edx
    43d8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    43db:	0f b6 02             	movzbl (%edx),%eax
    43de:	0f b6 19             	movzbl (%ecx),%ebx
    43e1:	84 c0                	test   %al,%al
    43e3:	75 1e                	jne    4403 <strcmp+0x33>
    43e5:	eb 29                	jmp    4410 <strcmp+0x40>
    43e7:	89 f6                	mov    %esi,%esi
    43e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    43f0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    43f3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    43f6:	8d 71 01             	lea    0x1(%ecx),%esi
  while(*p && *p == *q)
    43f9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    43fd:	84 c0                	test   %al,%al
    43ff:	74 0f                	je     4410 <strcmp+0x40>
    4401:	89 f1                	mov    %esi,%ecx
    4403:	38 d8                	cmp    %bl,%al
    4405:	74 e9                	je     43f0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    4407:	29 d8                	sub    %ebx,%eax
}
    4409:	5b                   	pop    %ebx
    440a:	5e                   	pop    %esi
    440b:	5d                   	pop    %ebp
    440c:	c3                   	ret    
    440d:	8d 76 00             	lea    0x0(%esi),%esi
  while(*p && *p == *q)
    4410:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    4412:	29 d8                	sub    %ebx,%eax
}
    4414:	5b                   	pop    %ebx
    4415:	5e                   	pop    %esi
    4416:	5d                   	pop    %ebp
    4417:	c3                   	ret    
    4418:	90                   	nop
    4419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00004420 <strlen>:

uint
strlen(char *s)
{
    4420:	55                   	push   %ebp
    4421:	89 e5                	mov    %esp,%ebp
    4423:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    4426:	80 39 00             	cmpb   $0x0,(%ecx)
    4429:	74 12                	je     443d <strlen+0x1d>
    442b:	31 d2                	xor    %edx,%edx
    442d:	8d 76 00             	lea    0x0(%esi),%esi
    4430:	83 c2 01             	add    $0x1,%edx
    4433:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    4437:	89 d0                	mov    %edx,%eax
    4439:	75 f5                	jne    4430 <strlen+0x10>
    ;
  return n;
}
    443b:	5d                   	pop    %ebp
    443c:	c3                   	ret    
  for(n = 0; s[n]; n++)
    443d:	31 c0                	xor    %eax,%eax
}
    443f:	5d                   	pop    %ebp
    4440:	c3                   	ret    
    4441:	eb 0d                	jmp    4450 <memset>
    4443:	90                   	nop
    4444:	90                   	nop
    4445:	90                   	nop
    4446:	90                   	nop
    4447:	90                   	nop
    4448:	90                   	nop
    4449:	90                   	nop
    444a:	90                   	nop
    444b:	90                   	nop
    444c:	90                   	nop
    444d:	90                   	nop
    444e:	90                   	nop
    444f:	90                   	nop

00004450 <memset>:

void*
memset(void *dst, int c, uint n)
{
    4450:	55                   	push   %ebp
    4451:	89 e5                	mov    %esp,%ebp
    4453:	57                   	push   %edi
    4454:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    4457:	8b 4d 10             	mov    0x10(%ebp),%ecx
    445a:	8b 45 0c             	mov    0xc(%ebp),%eax
    445d:	89 d7                	mov    %edx,%edi
    445f:	fc                   	cld    
    4460:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    4462:	89 d0                	mov    %edx,%eax
    4464:	5f                   	pop    %edi
    4465:	5d                   	pop    %ebp
    4466:	c3                   	ret    
    4467:	89 f6                	mov    %esi,%esi
    4469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004470 <strchr>:

char*
strchr(const char *s, char c)
{
    4470:	55                   	push   %ebp
    4471:	89 e5                	mov    %esp,%ebp
    4473:	53                   	push   %ebx
    4474:	8b 45 08             	mov    0x8(%ebp),%eax
    4477:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    447a:	0f b6 10             	movzbl (%eax),%edx
    447d:	84 d2                	test   %dl,%dl
    447f:	74 1d                	je     449e <strchr+0x2e>
    if(*s == c)
    4481:	38 d3                	cmp    %dl,%bl
    4483:	89 d9                	mov    %ebx,%ecx
    4485:	75 0d                	jne    4494 <strchr+0x24>
    4487:	eb 17                	jmp    44a0 <strchr+0x30>
    4489:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4490:	38 ca                	cmp    %cl,%dl
    4492:	74 0c                	je     44a0 <strchr+0x30>
  for(; *s; s++)
    4494:	83 c0 01             	add    $0x1,%eax
    4497:	0f b6 10             	movzbl (%eax),%edx
    449a:	84 d2                	test   %dl,%dl
    449c:	75 f2                	jne    4490 <strchr+0x20>
      return (char*)s;
  return 0;
    449e:	31 c0                	xor    %eax,%eax
}
    44a0:	5b                   	pop    %ebx
    44a1:	5d                   	pop    %ebp
    44a2:	c3                   	ret    
    44a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    44a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000044b0 <gets>:

char*
gets(char *buf, int max)
{
    44b0:	55                   	push   %ebp
    44b1:	89 e5                	mov    %esp,%ebp
    44b3:	57                   	push   %edi
    44b4:	56                   	push   %esi
    44b5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    44b6:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
    44b8:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    44bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    44be:	eb 29                	jmp    44e9 <gets+0x39>
    cc = read(0, &c, 1);
    44c0:	83 ec 04             	sub    $0x4,%esp
    44c3:	6a 01                	push   $0x1
    44c5:	57                   	push   %edi
    44c6:	6a 00                	push   $0x0
    44c8:	e8 2d 01 00 00       	call   45fa <read>
    if(cc < 1)
    44cd:	83 c4 10             	add    $0x10,%esp
    44d0:	85 c0                	test   %eax,%eax
    44d2:	7e 1d                	jle    44f1 <gets+0x41>
      break;
    buf[i++] = c;
    44d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    44d8:	8b 55 08             	mov    0x8(%ebp),%edx
    44db:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
    44dd:	3c 0a                	cmp    $0xa,%al
    buf[i++] = c;
    44df:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    44e3:	74 1b                	je     4500 <gets+0x50>
    44e5:	3c 0d                	cmp    $0xd,%al
    44e7:	74 17                	je     4500 <gets+0x50>
  for(i=0; i+1 < max; ){
    44e9:	8d 5e 01             	lea    0x1(%esi),%ebx
    44ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    44ef:	7c cf                	jl     44c0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    44f1:	8b 45 08             	mov    0x8(%ebp),%eax
    44f4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    44f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    44fb:	5b                   	pop    %ebx
    44fc:	5e                   	pop    %esi
    44fd:	5f                   	pop    %edi
    44fe:	5d                   	pop    %ebp
    44ff:	c3                   	ret    
  buf[i] = '\0';
    4500:	8b 45 08             	mov    0x8(%ebp),%eax
  for(i=0; i+1 < max; ){
    4503:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
    4505:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    4509:	8d 65 f4             	lea    -0xc(%ebp),%esp
    450c:	5b                   	pop    %ebx
    450d:	5e                   	pop    %esi
    450e:	5f                   	pop    %edi
    450f:	5d                   	pop    %ebp
    4510:	c3                   	ret    
    4511:	eb 0d                	jmp    4520 <stat>
    4513:	90                   	nop
    4514:	90                   	nop
    4515:	90                   	nop
    4516:	90                   	nop
    4517:	90                   	nop
    4518:	90                   	nop
    4519:	90                   	nop
    451a:	90                   	nop
    451b:	90                   	nop
    451c:	90                   	nop
    451d:	90                   	nop
    451e:	90                   	nop
    451f:	90                   	nop

00004520 <stat>:

int
stat(char *n, struct stat *st)
{
    4520:	55                   	push   %ebp
    4521:	89 e5                	mov    %esp,%ebp
    4523:	56                   	push   %esi
    4524:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    4525:	83 ec 08             	sub    $0x8,%esp
    4528:	6a 00                	push   $0x0
    452a:	ff 75 08             	pushl  0x8(%ebp)
    452d:	e8 f0 00 00 00       	call   4622 <open>
  if(fd < 0)
    4532:	83 c4 10             	add    $0x10,%esp
    4535:	85 c0                	test   %eax,%eax
    4537:	78 27                	js     4560 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    4539:	83 ec 08             	sub    $0x8,%esp
    453c:	ff 75 0c             	pushl  0xc(%ebp)
    453f:	89 c3                	mov    %eax,%ebx
    4541:	50                   	push   %eax
    4542:	e8 f3 00 00 00       	call   463a <fstat>
  close(fd);
    4547:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    454a:	89 c6                	mov    %eax,%esi
  close(fd);
    454c:	e8 b9 00 00 00       	call   460a <close>
  return r;
    4551:	83 c4 10             	add    $0x10,%esp
}
    4554:	8d 65 f8             	lea    -0x8(%ebp),%esp
    4557:	89 f0                	mov    %esi,%eax
    4559:	5b                   	pop    %ebx
    455a:	5e                   	pop    %esi
    455b:	5d                   	pop    %ebp
    455c:	c3                   	ret    
    455d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    4560:	be ff ff ff ff       	mov    $0xffffffff,%esi
    4565:	eb ed                	jmp    4554 <stat+0x34>
    4567:	89 f6                	mov    %esi,%esi
    4569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00004570 <atoi>:

int
atoi(const char *s)
{
    4570:	55                   	push   %ebp
    4571:	89 e5                	mov    %esp,%ebp
    4573:	53                   	push   %ebx
    4574:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    4577:	0f be 11             	movsbl (%ecx),%edx
    457a:	8d 42 d0             	lea    -0x30(%edx),%eax
    457d:	3c 09                	cmp    $0x9,%al
    457f:	b8 00 00 00 00       	mov    $0x0,%eax
    4584:	77 1f                	ja     45a5 <atoi+0x35>
    4586:	8d 76 00             	lea    0x0(%esi),%esi
    4589:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    4590:	8d 04 80             	lea    (%eax,%eax,4),%eax
    4593:	83 c1 01             	add    $0x1,%ecx
    4596:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    459a:	0f be 11             	movsbl (%ecx),%edx
    459d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    45a0:	80 fb 09             	cmp    $0x9,%bl
    45a3:	76 eb                	jbe    4590 <atoi+0x20>
  return n;
}
    45a5:	5b                   	pop    %ebx
    45a6:	5d                   	pop    %ebp
    45a7:	c3                   	ret    
    45a8:	90                   	nop
    45a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000045b0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    45b0:	55                   	push   %ebp
    45b1:	89 e5                	mov    %esp,%ebp
    45b3:	56                   	push   %esi
    45b4:	53                   	push   %ebx
    45b5:	8b 5d 10             	mov    0x10(%ebp),%ebx
    45b8:	8b 45 08             	mov    0x8(%ebp),%eax
    45bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    45be:	85 db                	test   %ebx,%ebx
    45c0:	7e 14                	jle    45d6 <memmove+0x26>
    45c2:	31 d2                	xor    %edx,%edx
    45c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    45c8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    45cc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    45cf:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    45d2:	39 da                	cmp    %ebx,%edx
    45d4:	75 f2                	jne    45c8 <memmove+0x18>
  return vdst;
}
    45d6:	5b                   	pop    %ebx
    45d7:	5e                   	pop    %esi
    45d8:	5d                   	pop    %ebp
    45d9:	c3                   	ret    

000045da <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    45da:	b8 01 00 00 00       	mov    $0x1,%eax
    45df:	cd 40                	int    $0x40
    45e1:	c3                   	ret    

000045e2 <exit>:
SYSCALL(exit)
    45e2:	b8 02 00 00 00       	mov    $0x2,%eax
    45e7:	cd 40                	int    $0x40
    45e9:	c3                   	ret    

000045ea <wait>:
SYSCALL(wait)
    45ea:	b8 03 00 00 00       	mov    $0x3,%eax
    45ef:	cd 40                	int    $0x40
    45f1:	c3                   	ret    

000045f2 <pipe>:
SYSCALL(pipe)
    45f2:	b8 04 00 00 00       	mov    $0x4,%eax
    45f7:	cd 40                	int    $0x40
    45f9:	c3                   	ret    

000045fa <read>:
SYSCALL(read)
    45fa:	b8 05 00 00 00       	mov    $0x5,%eax
    45ff:	cd 40                	int    $0x40
    4601:	c3                   	ret    

00004602 <write>:
SYSCALL(write)
    4602:	b8 10 00 00 00       	mov    $0x10,%eax
    4607:	cd 40                	int    $0x40
    4609:	c3                   	ret    

0000460a <close>:
SYSCALL(close)
    460a:	b8 15 00 00 00       	mov    $0x15,%eax
    460f:	cd 40                	int    $0x40
    4611:	c3                   	ret    

00004612 <kill>:
SYSCALL(kill)
    4612:	b8 06 00 00 00       	mov    $0x6,%eax
    4617:	cd 40                	int    $0x40
    4619:	c3                   	ret    

0000461a <exec>:
SYSCALL(exec)
    461a:	b8 07 00 00 00       	mov    $0x7,%eax
    461f:	cd 40                	int    $0x40
    4621:	c3                   	ret    

00004622 <open>:
SYSCALL(open)
    4622:	b8 0f 00 00 00       	mov    $0xf,%eax
    4627:	cd 40                	int    $0x40
    4629:	c3                   	ret    

0000462a <mknod>:
SYSCALL(mknod)
    462a:	b8 11 00 00 00       	mov    $0x11,%eax
    462f:	cd 40                	int    $0x40
    4631:	c3                   	ret    

00004632 <unlink>:
SYSCALL(unlink)
    4632:	b8 12 00 00 00       	mov    $0x12,%eax
    4637:	cd 40                	int    $0x40
    4639:	c3                   	ret    

0000463a <fstat>:
SYSCALL(fstat)
    463a:	b8 08 00 00 00       	mov    $0x8,%eax
    463f:	cd 40                	int    $0x40
    4641:	c3                   	ret    

00004642 <link>:
SYSCALL(link)
    4642:	b8 13 00 00 00       	mov    $0x13,%eax
    4647:	cd 40                	int    $0x40
    4649:	c3                   	ret    

0000464a <mkdir>:
SYSCALL(mkdir)
    464a:	b8 14 00 00 00       	mov    $0x14,%eax
    464f:	cd 40                	int    $0x40
    4651:	c3                   	ret    

00004652 <chdir>:
SYSCALL(chdir)
    4652:	b8 09 00 00 00       	mov    $0x9,%eax
    4657:	cd 40                	int    $0x40
    4659:	c3                   	ret    

0000465a <dup>:
SYSCALL(dup)
    465a:	b8 0a 00 00 00       	mov    $0xa,%eax
    465f:	cd 40                	int    $0x40
    4661:	c3                   	ret    

00004662 <getpid>:
SYSCALL(getpid)
    4662:	b8 0b 00 00 00       	mov    $0xb,%eax
    4667:	cd 40                	int    $0x40
    4669:	c3                   	ret    

0000466a <sbrk>:
SYSCALL(sbrk)
    466a:	b8 0c 00 00 00       	mov    $0xc,%eax
    466f:	cd 40                	int    $0x40
    4671:	c3                   	ret    

00004672 <sleep>:
SYSCALL(sleep)
    4672:	b8 0d 00 00 00       	mov    $0xd,%eax
    4677:	cd 40                	int    $0x40
    4679:	c3                   	ret    

0000467a <uptime>:
SYSCALL(uptime)
    467a:	b8 0e 00 00 00       	mov    $0xe,%eax
    467f:	cd 40                	int    $0x40
    4681:	c3                   	ret    

00004682 <waitpid>:
SYSCALL(waitpid)
    4682:	b8 16 00 00 00       	mov    $0x16,%eax
    4687:	cd 40                	int    $0x40
    4689:	c3                   	ret    
    468a:	66 90                	xchg   %ax,%ax
    468c:	66 90                	xchg   %ax,%ax
    468e:	66 90                	xchg   %ax,%ax

00004690 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    4690:	55                   	push   %ebp
    4691:	89 e5                	mov    %esp,%ebp
    4693:	57                   	push   %edi
    4694:	56                   	push   %esi
    4695:	53                   	push   %ebx
    4696:	89 c6                	mov    %eax,%esi
    4698:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    469b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    469e:	85 db                	test   %ebx,%ebx
    46a0:	74 7e                	je     4720 <printint+0x90>
    46a2:	89 d0                	mov    %edx,%eax
    46a4:	c1 e8 1f             	shr    $0x1f,%eax
    46a7:	84 c0                	test   %al,%al
    46a9:	74 75                	je     4720 <printint+0x90>
    neg = 1;
    x = -xx;
    46ab:	89 d0                	mov    %edx,%eax
    neg = 1;
    46ad:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
    46b4:	f7 d8                	neg    %eax
    46b6:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    46b9:	31 ff                	xor    %edi,%edi
    46bb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    46be:	89 ce                	mov    %ecx,%esi
    46c0:	eb 08                	jmp    46ca <printint+0x3a>
    46c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    46c8:	89 cf                	mov    %ecx,%edi
    46ca:	31 d2                	xor    %edx,%edx
    46cc:	8d 4f 01             	lea    0x1(%edi),%ecx
    46cf:	f7 f6                	div    %esi
    46d1:	0f b6 92 f0 61 00 00 	movzbl 0x61f0(%edx),%edx
  }while((x /= base) != 0);
    46d8:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    46da:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    46dd:	75 e9                	jne    46c8 <printint+0x38>
  if(neg)
    46df:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    46e2:	8b 75 c0             	mov    -0x40(%ebp),%esi
    46e5:	85 c0                	test   %eax,%eax
    46e7:	74 08                	je     46f1 <printint+0x61>
    buf[i++] = '-';
    46e9:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
    46ee:	8d 4f 02             	lea    0x2(%edi),%ecx

  while(--i >= 0)
    46f1:	8d 79 ff             	lea    -0x1(%ecx),%edi
    46f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    46f8:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
  write(fd, &c, 1);
    46fd:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
    4700:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
    4703:	6a 01                	push   $0x1
    4705:	53                   	push   %ebx
    4706:	56                   	push   %esi
    4707:	88 45 d7             	mov    %al,-0x29(%ebp)
    470a:	e8 f3 fe ff ff       	call   4602 <write>
  while(--i >= 0)
    470f:	83 c4 10             	add    $0x10,%esp
    4712:	83 ff ff             	cmp    $0xffffffff,%edi
    4715:	75 e1                	jne    46f8 <printint+0x68>
    putc(fd, buf[i]);
}
    4717:	8d 65 f4             	lea    -0xc(%ebp),%esp
    471a:	5b                   	pop    %ebx
    471b:	5e                   	pop    %esi
    471c:	5f                   	pop    %edi
    471d:	5d                   	pop    %ebp
    471e:	c3                   	ret    
    471f:	90                   	nop
    x = xx;
    4720:	89 d0                	mov    %edx,%eax
  neg = 0;
    4722:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    4729:	eb 8b                	jmp    46b6 <printint+0x26>
    472b:	90                   	nop
    472c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004730 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    4730:	55                   	push   %ebp
    4731:	89 e5                	mov    %esp,%ebp
    4733:	57                   	push   %edi
    4734:	56                   	push   %esi
    4735:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    4736:	8d 45 10             	lea    0x10(%ebp),%eax
{
    4739:	83 ec 2c             	sub    $0x2c,%esp
  for(i = 0; fmt[i]; i++){
    473c:	8b 75 0c             	mov    0xc(%ebp),%esi
{
    473f:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
    4742:	89 45 d0             	mov    %eax,-0x30(%ebp)
    4745:	0f b6 1e             	movzbl (%esi),%ebx
    4748:	83 c6 01             	add    $0x1,%esi
    474b:	84 db                	test   %bl,%bl
    474d:	0f 84 b0 00 00 00    	je     4803 <printf+0xd3>
    4753:	31 d2                	xor    %edx,%edx
    4755:	eb 39                	jmp    4790 <printf+0x60>
    4757:	89 f6                	mov    %esi,%esi
    4759:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    4760:	83 f8 25             	cmp    $0x25,%eax
    4763:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
    4766:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    476b:	74 18                	je     4785 <printf+0x55>
  write(fd, &c, 1);
    476d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    4770:	83 ec 04             	sub    $0x4,%esp
    4773:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    4776:	6a 01                	push   $0x1
    4778:	50                   	push   %eax
    4779:	57                   	push   %edi
    477a:	e8 83 fe ff ff       	call   4602 <write>
    477f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    4782:	83 c4 10             	add    $0x10,%esp
    4785:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    4788:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    478c:	84 db                	test   %bl,%bl
    478e:	74 73                	je     4803 <printf+0xd3>
    if(state == 0){
    4790:	85 d2                	test   %edx,%edx
    c = fmt[i] & 0xff;
    4792:	0f be cb             	movsbl %bl,%ecx
    4795:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    4798:	74 c6                	je     4760 <printf+0x30>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    479a:	83 fa 25             	cmp    $0x25,%edx
    479d:	75 e6                	jne    4785 <printf+0x55>
      if(c == 'd'){
    479f:	83 f8 64             	cmp    $0x64,%eax
    47a2:	0f 84 f8 00 00 00    	je     48a0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    47a8:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    47ae:	83 f9 70             	cmp    $0x70,%ecx
    47b1:	74 5d                	je     4810 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    47b3:	83 f8 73             	cmp    $0x73,%eax
    47b6:	0f 84 84 00 00 00    	je     4840 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    47bc:	83 f8 63             	cmp    $0x63,%eax
    47bf:	0f 84 ea 00 00 00    	je     48af <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    47c5:	83 f8 25             	cmp    $0x25,%eax
    47c8:	0f 84 c2 00 00 00    	je     4890 <printf+0x160>
  write(fd, &c, 1);
    47ce:	8d 45 e7             	lea    -0x19(%ebp),%eax
    47d1:	83 ec 04             	sub    $0x4,%esp
    47d4:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    47d8:	6a 01                	push   $0x1
    47da:	50                   	push   %eax
    47db:	57                   	push   %edi
    47dc:	e8 21 fe ff ff       	call   4602 <write>
    47e1:	83 c4 0c             	add    $0xc,%esp
    47e4:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    47e7:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    47ea:	6a 01                	push   $0x1
    47ec:	50                   	push   %eax
    47ed:	57                   	push   %edi
    47ee:	83 c6 01             	add    $0x1,%esi
    47f1:	e8 0c fe ff ff       	call   4602 <write>
  for(i = 0; fmt[i]; i++){
    47f6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    47fa:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    47fd:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    47ff:	84 db                	test   %bl,%bl
    4801:	75 8d                	jne    4790 <printf+0x60>
    }
  }
}
    4803:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4806:	5b                   	pop    %ebx
    4807:	5e                   	pop    %esi
    4808:	5f                   	pop    %edi
    4809:	5d                   	pop    %ebp
    480a:	c3                   	ret    
    480b:	90                   	nop
    480c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 16, 0);
    4810:	83 ec 0c             	sub    $0xc,%esp
    4813:	b9 10 00 00 00       	mov    $0x10,%ecx
    4818:	6a 00                	push   $0x0
    481a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    481d:	89 f8                	mov    %edi,%eax
    481f:	8b 13                	mov    (%ebx),%edx
    4821:	e8 6a fe ff ff       	call   4690 <printint>
        ap++;
    4826:	89 d8                	mov    %ebx,%eax
    4828:	83 c4 10             	add    $0x10,%esp
      state = 0;
    482b:	31 d2                	xor    %edx,%edx
        ap++;
    482d:	83 c0 04             	add    $0x4,%eax
    4830:	89 45 d0             	mov    %eax,-0x30(%ebp)
    4833:	e9 4d ff ff ff       	jmp    4785 <printf+0x55>
    4838:	90                   	nop
    4839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    4840:	8b 45 d0             	mov    -0x30(%ebp),%eax
    4843:	8b 18                	mov    (%eax),%ebx
        ap++;
    4845:	83 c0 04             	add    $0x4,%eax
    4848:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    484b:	85 db                	test   %ebx,%ebx
    484d:	74 7c                	je     48cb <printf+0x19b>
        while(*s != 0){
    484f:	0f b6 03             	movzbl (%ebx),%eax
    4852:	84 c0                	test   %al,%al
    4854:	74 29                	je     487f <printf+0x14f>
    4856:	8d 76 00             	lea    0x0(%esi),%esi
    4859:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    4860:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    4863:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    4866:	83 ec 04             	sub    $0x4,%esp
    4869:	6a 01                	push   $0x1
          s++;
    486b:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    486e:	50                   	push   %eax
    486f:	57                   	push   %edi
    4870:	e8 8d fd ff ff       	call   4602 <write>
        while(*s != 0){
    4875:	0f b6 03             	movzbl (%ebx),%eax
    4878:	83 c4 10             	add    $0x10,%esp
    487b:	84 c0                	test   %al,%al
    487d:	75 e1                	jne    4860 <printf+0x130>
      state = 0;
    487f:	31 d2                	xor    %edx,%edx
    4881:	e9 ff fe ff ff       	jmp    4785 <printf+0x55>
    4886:	8d 76 00             	lea    0x0(%esi),%esi
    4889:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  write(fd, &c, 1);
    4890:	83 ec 04             	sub    $0x4,%esp
    4893:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    4896:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    4899:	6a 01                	push   $0x1
    489b:	e9 4c ff ff ff       	jmp    47ec <printf+0xbc>
        printint(fd, *ap, 10, 1);
    48a0:	83 ec 0c             	sub    $0xc,%esp
    48a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    48a8:	6a 01                	push   $0x1
    48aa:	e9 6b ff ff ff       	jmp    481a <printf+0xea>
        putc(fd, *ap);
    48af:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    48b2:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    48b5:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    48b7:	6a 01                	push   $0x1
        putc(fd, *ap);
    48b9:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    48bc:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    48bf:	50                   	push   %eax
    48c0:	57                   	push   %edi
    48c1:	e8 3c fd ff ff       	call   4602 <write>
    48c6:	e9 5b ff ff ff       	jmp    4826 <printf+0xf6>
        while(*s != 0){
    48cb:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
    48d0:	bb e8 61 00 00       	mov    $0x61e8,%ebx
    48d5:	eb 89                	jmp    4860 <printf+0x130>
    48d7:	66 90                	xchg   %ax,%ax
    48d9:	66 90                	xchg   %ax,%ax
    48db:	66 90                	xchg   %ax,%ax
    48dd:	66 90                	xchg   %ax,%ax
    48df:	90                   	nop

000048e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    48e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    48e1:	a1 c0 6b 00 00       	mov    0x6bc0,%eax
{
    48e6:	89 e5                	mov    %esp,%ebp
    48e8:	57                   	push   %edi
    48e9:	56                   	push   %esi
    48ea:	53                   	push   %ebx
    48eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    48ee:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    48f0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    48f3:	39 c8                	cmp    %ecx,%eax
    48f5:	73 19                	jae    4910 <free+0x30>
    48f7:	89 f6                	mov    %esi,%esi
    48f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    4900:	39 d1                	cmp    %edx,%ecx
    4902:	72 1c                	jb     4920 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4904:	39 d0                	cmp    %edx,%eax
    4906:	73 18                	jae    4920 <free+0x40>
{
    4908:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    490a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    490c:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    490e:	72 f0                	jb     4900 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4910:	39 d0                	cmp    %edx,%eax
    4912:	72 f4                	jb     4908 <free+0x28>
    4914:	39 d1                	cmp    %edx,%ecx
    4916:	73 f0                	jae    4908 <free+0x28>
    4918:	90                   	nop
    4919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    4920:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4923:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    4926:	39 fa                	cmp    %edi,%edx
    4928:	74 19                	je     4943 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    492a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    492d:	8b 50 04             	mov    0x4(%eax),%edx
    4930:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    4933:	39 f1                	cmp    %esi,%ecx
    4935:	74 23                	je     495a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    4937:	89 08                	mov    %ecx,(%eax)
  freep = p;
    4939:	a3 c0 6b 00 00       	mov    %eax,0x6bc0
}
    493e:	5b                   	pop    %ebx
    493f:	5e                   	pop    %esi
    4940:	5f                   	pop    %edi
    4941:	5d                   	pop    %ebp
    4942:	c3                   	ret    
    bp->s.size += p->s.ptr->s.size;
    4943:	03 72 04             	add    0x4(%edx),%esi
    4946:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    4949:	8b 10                	mov    (%eax),%edx
    494b:	8b 12                	mov    (%edx),%edx
    494d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    4950:	8b 50 04             	mov    0x4(%eax),%edx
    4953:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    4956:	39 f1                	cmp    %esi,%ecx
    4958:	75 dd                	jne    4937 <free+0x57>
    p->s.size += bp->s.size;
    495a:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    495d:	a3 c0 6b 00 00       	mov    %eax,0x6bc0
    p->s.size += bp->s.size;
    4962:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    4965:	8b 53 f8             	mov    -0x8(%ebx),%edx
    4968:	89 10                	mov    %edx,(%eax)
}
    496a:	5b                   	pop    %ebx
    496b:	5e                   	pop    %esi
    496c:	5f                   	pop    %edi
    496d:	5d                   	pop    %ebp
    496e:	c3                   	ret    
    496f:	90                   	nop

00004970 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4970:	55                   	push   %ebp
    4971:	89 e5                	mov    %esp,%ebp
    4973:	57                   	push   %edi
    4974:	56                   	push   %esi
    4975:	53                   	push   %ebx
    4976:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4979:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    497c:	8b 15 c0 6b 00 00    	mov    0x6bc0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4982:	8d 78 07             	lea    0x7(%eax),%edi
    4985:	c1 ef 03             	shr    $0x3,%edi
    4988:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    498b:	85 d2                	test   %edx,%edx
    498d:	0f 84 93 00 00 00    	je     4a26 <malloc+0xb6>
    4993:	8b 02                	mov    (%edx),%eax
    4995:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    4998:	39 cf                	cmp    %ecx,%edi
    499a:	76 64                	jbe    4a00 <malloc+0x90>
    499c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    49a2:	bb 00 10 00 00       	mov    $0x1000,%ebx
    49a7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    49aa:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    49b1:	eb 0e                	jmp    49c1 <malloc+0x51>
    49b3:	90                   	nop
    49b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    49b8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    49ba:	8b 48 04             	mov    0x4(%eax),%ecx
    49bd:	39 cf                	cmp    %ecx,%edi
    49bf:	76 3f                	jbe    4a00 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    49c1:	39 05 c0 6b 00 00    	cmp    %eax,0x6bc0
    49c7:	89 c2                	mov    %eax,%edx
    49c9:	75 ed                	jne    49b8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    49cb:	83 ec 0c             	sub    $0xc,%esp
    49ce:	56                   	push   %esi
    49cf:	e8 96 fc ff ff       	call   466a <sbrk>
  if(p == (char*)-1)
    49d4:	83 c4 10             	add    $0x10,%esp
    49d7:	83 f8 ff             	cmp    $0xffffffff,%eax
    49da:	74 1c                	je     49f8 <malloc+0x88>
  hp->s.size = nu;
    49dc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    49df:	83 ec 0c             	sub    $0xc,%esp
    49e2:	83 c0 08             	add    $0x8,%eax
    49e5:	50                   	push   %eax
    49e6:	e8 f5 fe ff ff       	call   48e0 <free>
  return freep;
    49eb:	8b 15 c0 6b 00 00    	mov    0x6bc0,%edx
      if((p = morecore(nunits)) == 0)
    49f1:	83 c4 10             	add    $0x10,%esp
    49f4:	85 d2                	test   %edx,%edx
    49f6:	75 c0                	jne    49b8 <malloc+0x48>
        return 0;
    49f8:	31 c0                	xor    %eax,%eax
    49fa:	eb 1c                	jmp    4a18 <malloc+0xa8>
    49fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    4a00:	39 cf                	cmp    %ecx,%edi
    4a02:	74 1c                	je     4a20 <malloc+0xb0>
        p->s.size -= nunits;
    4a04:	29 f9                	sub    %edi,%ecx
    4a06:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    4a09:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    4a0c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    4a0f:	89 15 c0 6b 00 00    	mov    %edx,0x6bc0
      return (void*)(p + 1);
    4a15:	83 c0 08             	add    $0x8,%eax
  }
}
    4a18:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4a1b:	5b                   	pop    %ebx
    4a1c:	5e                   	pop    %esi
    4a1d:	5f                   	pop    %edi
    4a1e:	5d                   	pop    %ebp
    4a1f:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
    4a20:	8b 08                	mov    (%eax),%ecx
    4a22:	89 0a                	mov    %ecx,(%edx)
    4a24:	eb e9                	jmp    4a0f <malloc+0x9f>
    base.s.ptr = freep = prevp = &base;
    4a26:	c7 05 c0 6b 00 00 c4 	movl   $0x6bc4,0x6bc0
    4a2d:	6b 00 00 
    4a30:	c7 05 c4 6b 00 00 c4 	movl   $0x6bc4,0x6bc4
    4a37:	6b 00 00 
    base.s.size = 0;
    4a3a:	b8 c4 6b 00 00       	mov    $0x6bc4,%eax
    4a3f:	c7 05 c8 6b 00 00 00 	movl   $0x0,0x6bc8
    4a46:	00 00 00 
    4a49:	e9 4e ff ff ff       	jmp    499c <malloc+0x2c>
