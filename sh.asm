
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	53                   	push   %ebx
       e:	51                   	push   %ecx
       f:	83 ec 10             	sub    $0x10,%esp
  int child_status; //get child exit stat
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      12:	eb 0d                	jmp    21 <main+0x21>
      14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f ed 00 00 00    	jg     10e <main+0x10e>
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 01 14 00 00       	push   $0x1401
      2b:	e8 02 0f 00 00       	call   f32 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
        printf(2, "cannot cd %s\n", buf+3);
      continue;
    }
    if(fork1() == 0)
      runcmd(parsecmd(buf));
    wait(&child_status);
      37:	8d 5d f4             	lea    -0xc(%ebp),%ebx
      3a:	eb 3a                	jmp    76 <main+0x76>
      3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      40:	e8 a5 0e 00 00       	call   eea <fork>
  if(pid == -1)
      45:	83 f8 ff             	cmp    $0xffffffff,%eax
      48:	0f 84 9a 00 00 00    	je     e8 <main+0xe8>
    if(fork1() == 0)
      4e:	85 c0                	test   %eax,%eax
      50:	75 18                	jne    6a <main+0x6a>
      runcmd(parsecmd(buf));
      52:	83 ec 0c             	sub    $0xc,%esp
      55:	68 60 1a 00 00       	push   $0x1a60
      5a:	e8 c1 0b 00 00       	call   c20 <parsecmd>
      5f:	89 04 24             	mov    %eax,(%esp)
      62:	e8 e9 00 00 00       	call   150 <runcmd>
      67:	83 c4 10             	add    $0x10,%esp
    wait(&child_status);
      6a:	83 ec 0c             	sub    $0xc,%esp
      6d:	53                   	push   %ebx
      6e:	e8 87 0e 00 00       	call   efa <wait>
      73:	83 c4 10             	add    $0x10,%esp
  while(getcmd(buf, sizeof(buf)) >= 0){
      76:	83 ec 08             	sub    $0x8,%esp
      79:	6a 64                	push   $0x64
      7b:	68 60 1a 00 00       	push   $0x1a60
      80:	e8 6b 03 00 00       	call   3f0 <getcmd>
      85:	83 c4 10             	add    $0x10,%esp
      88:	85 c0                	test   %eax,%eax
      8a:	78 6c                	js     f8 <main+0xf8>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      8c:	80 3d 60 1a 00 00 63 	cmpb   $0x63,0x1a60
      93:	75 ab                	jne    40 <main+0x40>
      95:	80 3d 61 1a 00 00 64 	cmpb   $0x64,0x1a61
      9c:	75 a2                	jne    40 <main+0x40>
      9e:	80 3d 62 1a 00 00 20 	cmpb   $0x20,0x1a62
      a5:	75 99                	jne    40 <main+0x40>
      buf[strlen(buf)-1] = 0;  // chop \n
      a7:	83 ec 0c             	sub    $0xc,%esp
      aa:	68 60 1a 00 00       	push   $0x1a60
      af:	e8 7c 0c 00 00       	call   d30 <strlen>
      if(chdir(buf+3) < 0)
      b4:	c7 04 24 63 1a 00 00 	movl   $0x1a63,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
      bb:	c6 80 5f 1a 00 00 00 	movb   $0x0,0x1a5f(%eax)
      if(chdir(buf+3) < 0)
      c2:	e8 9b 0e 00 00       	call   f62 <chdir>
      c7:	83 c4 10             	add    $0x10,%esp
      ca:	85 c0                	test   %eax,%eax
      cc:	79 a8                	jns    76 <main+0x76>
        printf(2, "cannot cd %s\n", buf+3);
      ce:	50                   	push   %eax
      cf:	68 63 1a 00 00       	push   $0x1a63
      d4:	68 09 14 00 00       	push   $0x1409
      d9:	6a 02                	push   $0x2
      db:	e8 60 0f 00 00       	call   1040 <printf>
      e0:	83 c4 10             	add    $0x10,%esp
      e3:	eb 91                	jmp    76 <main+0x76>
      e5:	8d 76 00             	lea    0x0(%esi),%esi
      e8:	e8 33 00 00 00       	call   120 <fork1.part.0>
      ed:	e9 78 ff ff ff       	jmp    6a <main+0x6a>
      f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  exit(0);
      f8:	83 ec 0c             	sub    $0xc,%esp
      fb:	6a 00                	push   $0x0
      fd:	e8 f0 0d 00 00       	call   ef2 <exit>
}
     102:	8d 65 f8             	lea    -0x8(%ebp),%esp
     105:	31 c0                	xor    %eax,%eax
     107:	59                   	pop    %ecx
     108:	5b                   	pop    %ebx
     109:	5d                   	pop    %ebp
     10a:	8d 61 fc             	lea    -0x4(%ecx),%esp
     10d:	c3                   	ret    
      close(fd);
     10e:	83 ec 0c             	sub    $0xc,%esp
     111:	50                   	push   %eax
     112:	e8 03 0e 00 00       	call   f1a <close>
      break;
     117:	83 c4 10             	add    $0x10,%esp
     11a:	e9 18 ff ff ff       	jmp    37 <main+0x37>
     11f:	90                   	nop

00000120 <fork1.part.0>:
fork1(void)
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     126:	68 60 13 00 00       	push   $0x1360
     12b:	68 fd 13 00 00       	push   $0x13fd
     130:	6a 02                	push   $0x2
     132:	e8 09 0f 00 00       	call   1040 <printf>
  exit(0);
     137:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     13e:	e8 af 0d 00 00       	call   ef2 <exit>
     143:	83 c4 10             	add    $0x10,%esp
    panic("fork");
  return pid;
}
     146:	c9                   	leave  
     147:	c3                   	ret    
     148:	90                   	nop
     149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000150 <runcmd>:
{
     150:	55                   	push   %ebp
     151:	89 e5                	mov    %esp,%ebp
     153:	53                   	push   %ebx
     154:	83 ec 14             	sub    $0x14,%esp
     157:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     15a:	85 db                	test   %ebx,%ebx
     15c:	0f 84 f6 01 00 00    	je     358 <runcmd+0x208>
  switch(cmd->type){
     162:	83 3b 05             	cmpl   $0x5,(%ebx)
     165:	77 09                	ja     170 <runcmd+0x20>
     167:	8b 03                	mov    (%ebx),%eax
     169:	ff 24 85 18 14 00 00 	jmp    *0x1418(,%eax,4)
  printf(2, "%s\n", s);
     170:	83 ec 04             	sub    $0x4,%esp
     173:	68 65 13 00 00       	push   $0x1365
     178:	68 fd 13 00 00       	push   $0x13fd
     17d:	6a 02                	push   $0x2
     17f:	e8 bc 0e 00 00       	call   1040 <printf>
  exit(0);
     184:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     18b:	e8 62 0d 00 00       	call   ef2 <exit>
     190:	83 c4 10             	add    $0x10,%esp
    if(ecmd->argv[0] == 0)
     193:	8b 43 04             	mov    0x4(%ebx),%eax
     196:	85 c0                	test   %eax,%eax
     198:	0f 84 d2 01 00 00    	je     370 <runcmd+0x220>
    exec(ecmd->argv[0], ecmd->argv);
     19e:	8d 53 04             	lea    0x4(%ebx),%edx
     1a1:	83 ec 08             	sub    $0x8,%esp
     1a4:	52                   	push   %edx
     1a5:	50                   	push   %eax
     1a6:	e8 7f 0d 00 00       	call   f2a <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     1ab:	83 c4 0c             	add    $0xc,%esp
     1ae:	ff 73 04             	pushl  0x4(%ebx)
     1b1:	68 6c 13 00 00       	push   $0x136c
     1b6:	6a 02                	push   $0x2
     1b8:	e8 83 0e 00 00       	call   1040 <printf>
    break;
     1bd:	83 c4 10             	add    $0x10,%esp
  exit(0);
     1c0:	83 ec 0c             	sub    $0xc,%esp
     1c3:	6a 00                	push   $0x0
     1c5:	e8 28 0d 00 00       	call   ef2 <exit>
}
     1ca:	83 c4 10             	add    $0x10,%esp
     1cd:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     1d0:	c9                   	leave  
     1d1:	c3                   	ret    
     1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  pid = fork();
     1d8:	e8 0d 0d 00 00       	call   eea <fork>
  if(pid == -1)
     1dd:	83 f8 ff             	cmp    $0xffffffff,%eax
     1e0:	0f 84 a2 01 00 00    	je     388 <runcmd+0x238>
    if(fork1() == 0)
     1e6:	85 c0                	test   %eax,%eax
     1e8:	75 d6                	jne    1c0 <runcmd+0x70>
      runcmd(bcmd->cmd);
     1ea:	83 ec 0c             	sub    $0xc,%esp
     1ed:	ff 73 04             	pushl  0x4(%ebx)
     1f0:	e8 5b ff ff ff       	call   150 <runcmd>
     1f5:	83 c4 10             	add    $0x10,%esp
     1f8:	eb c6                	jmp    1c0 <runcmd+0x70>
     1fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    close(rcmd->fd);
     200:	83 ec 0c             	sub    $0xc,%esp
     203:	ff 73 14             	pushl  0x14(%ebx)
     206:	e8 0f 0d 00 00       	call   f1a <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     20b:	59                   	pop    %ecx
     20c:	58                   	pop    %eax
     20d:	ff 73 10             	pushl  0x10(%ebx)
     210:	ff 73 08             	pushl  0x8(%ebx)
     213:	e8 1a 0d 00 00       	call   f32 <open>
     218:	83 c4 10             	add    $0x10,%esp
     21b:	85 c0                	test   %eax,%eax
     21d:	79 cb                	jns    1ea <runcmd+0x9a>
      printf(2, "open %s failed\n", rcmd->file);
     21f:	83 ec 04             	sub    $0x4,%esp
     222:	ff 73 08             	pushl  0x8(%ebx)
     225:	68 7c 13 00 00       	push   $0x137c
     22a:	6a 02                	push   $0x2
     22c:	e8 0f 0e 00 00       	call   1040 <printf>
      exit(0);
     231:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     238:	e8 b5 0c 00 00       	call   ef2 <exit>
     23d:	83 c4 10             	add    $0x10,%esp
     240:	eb a8                	jmp    1ea <runcmd+0x9a>
     242:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pipe(p) < 0)
     248:	8d 45 f0             	lea    -0x10(%ebp),%eax
     24b:	83 ec 0c             	sub    $0xc,%esp
     24e:	50                   	push   %eax
     24f:	e8 ae 0c 00 00       	call   f02 <pipe>
     254:	83 c4 10             	add    $0x10,%esp
     257:	85 c0                	test   %eax,%eax
     259:	0f 88 61 01 00 00    	js     3c0 <runcmd+0x270>
  pid = fork();
     25f:	e8 86 0c 00 00       	call   eea <fork>
  if(pid == -1)
     264:	83 f8 ff             	cmp    $0xffffffff,%eax
     267:	0f 84 2b 01 00 00    	je     398 <runcmd+0x248>
    if(fork1() == 0){
     26d:	85 c0                	test   %eax,%eax
     26f:	75 31                	jne    2a2 <runcmd+0x152>
      close(1);
     271:	83 ec 0c             	sub    $0xc,%esp
     274:	6a 01                	push   $0x1
     276:	e8 9f 0c 00 00       	call   f1a <close>
      dup(p[1]);
     27b:	58                   	pop    %eax
     27c:	ff 75 f4             	pushl  -0xc(%ebp)
     27f:	e8 e6 0c 00 00       	call   f6a <dup>
      close(p[0]);
     284:	58                   	pop    %eax
     285:	ff 75 f0             	pushl  -0x10(%ebp)
     288:	e8 8d 0c 00 00       	call   f1a <close>
      close(p[1]);
     28d:	58                   	pop    %eax
     28e:	ff 75 f4             	pushl  -0xc(%ebp)
     291:	e8 84 0c 00 00       	call   f1a <close>
      runcmd(pcmd->left);
     296:	58                   	pop    %eax
     297:	ff 73 04             	pushl  0x4(%ebx)
     29a:	e8 b1 fe ff ff       	call   150 <runcmd>
     29f:	83 c4 10             	add    $0x10,%esp
  pid = fork();
     2a2:	e8 43 0c 00 00       	call   eea <fork>
  if(pid == -1)
     2a7:	83 f8 ff             	cmp    $0xffffffff,%eax
     2aa:	0f 84 00 01 00 00    	je     3b0 <runcmd+0x260>
    if(fork1() == 0){
     2b0:	85 c0                	test   %eax,%eax
     2b2:	75 31                	jne    2e5 <runcmd+0x195>
      close(0);
     2b4:	83 ec 0c             	sub    $0xc,%esp
     2b7:	6a 00                	push   $0x0
     2b9:	e8 5c 0c 00 00       	call   f1a <close>
      dup(p[0]);
     2be:	5a                   	pop    %edx
     2bf:	ff 75 f0             	pushl  -0x10(%ebp)
     2c2:	e8 a3 0c 00 00       	call   f6a <dup>
      close(p[0]);
     2c7:	59                   	pop    %ecx
     2c8:	ff 75 f0             	pushl  -0x10(%ebp)
     2cb:	e8 4a 0c 00 00       	call   f1a <close>
      close(p[1]);
     2d0:	58                   	pop    %eax
     2d1:	ff 75 f4             	pushl  -0xc(%ebp)
     2d4:	e8 41 0c 00 00       	call   f1a <close>
      runcmd(pcmd->right);
     2d9:	58                   	pop    %eax
     2da:	ff 73 08             	pushl  0x8(%ebx)
     2dd:	e8 6e fe ff ff       	call   150 <runcmd>
     2e2:	83 c4 10             	add    $0x10,%esp
    close(p[0]);
     2e5:	83 ec 0c             	sub    $0xc,%esp
     2e8:	ff 75 f0             	pushl  -0x10(%ebp)
    wait(&child_status);
     2eb:	8d 5d ec             	lea    -0x14(%ebp),%ebx
    close(p[0]);
     2ee:	e8 27 0c 00 00       	call   f1a <close>
    close(p[1]);
     2f3:	58                   	pop    %eax
     2f4:	ff 75 f4             	pushl  -0xc(%ebp)
     2f7:	e8 1e 0c 00 00       	call   f1a <close>
    wait(&child_status);
     2fc:	89 1c 24             	mov    %ebx,(%esp)
     2ff:	e8 f6 0b 00 00       	call   efa <wait>
    wait(&child_status);
     304:	89 1c 24             	mov    %ebx,(%esp)
     307:	e8 ee 0b 00 00       	call   efa <wait>
    break;
     30c:	83 c4 10             	add    $0x10,%esp
     30f:	e9 ac fe ff ff       	jmp    1c0 <runcmd+0x70>
     314:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  pid = fork();
     318:	e8 cd 0b 00 00       	call   eea <fork>
  if(pid == -1)
     31d:	83 f8 ff             	cmp    $0xffffffff,%eax
     320:	0f 84 82 00 00 00    	je     3a8 <runcmd+0x258>
    if(fork1() == 0)
     326:	85 c0                	test   %eax,%eax
     328:	75 0e                	jne    338 <runcmd+0x1e8>
      runcmd(lcmd->left);
     32a:	83 ec 0c             	sub    $0xc,%esp
     32d:	ff 73 04             	pushl  0x4(%ebx)
     330:	e8 1b fe ff ff       	call   150 <runcmd>
     335:	83 c4 10             	add    $0x10,%esp
    wait(&child_status);
     338:	8d 45 ec             	lea    -0x14(%ebp),%eax
     33b:	83 ec 0c             	sub    $0xc,%esp
     33e:	50                   	push   %eax
     33f:	e8 b6 0b 00 00       	call   efa <wait>
    runcmd(lcmd->right);
     344:	5a                   	pop    %edx
     345:	ff 73 08             	pushl  0x8(%ebx)
     348:	e8 03 fe ff ff       	call   150 <runcmd>
    break;
     34d:	83 c4 10             	add    $0x10,%esp
     350:	e9 6b fe ff ff       	jmp    1c0 <runcmd+0x70>
     355:	8d 76 00             	lea    0x0(%esi),%esi
    exit(0);
     358:	83 ec 0c             	sub    $0xc,%esp
     35b:	6a 00                	push   $0x0
     35d:	e8 90 0b 00 00       	call   ef2 <exit>
     362:	83 c4 10             	add    $0x10,%esp
     365:	e9 f8 fd ff ff       	jmp    162 <runcmd+0x12>
     36a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      exit(0);
     370:	83 ec 0c             	sub    $0xc,%esp
     373:	6a 00                	push   $0x0
     375:	e8 78 0b 00 00       	call   ef2 <exit>
     37a:	8b 43 04             	mov    0x4(%ebx),%eax
     37d:	83 c4 10             	add    $0x10,%esp
     380:	e9 19 fe ff ff       	jmp    19e <runcmd+0x4e>
     385:	8d 76 00             	lea    0x0(%esi),%esi
     388:	e8 93 fd ff ff       	call   120 <fork1.part.0>
     38d:	e9 2e fe ff ff       	jmp    1c0 <runcmd+0x70>
     392:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     398:	e8 83 fd ff ff       	call   120 <fork1.part.0>
     39d:	e9 00 ff ff ff       	jmp    2a2 <runcmd+0x152>
     3a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     3a8:	e8 73 fd ff ff       	call   120 <fork1.part.0>
     3ad:	eb 89                	jmp    338 <runcmd+0x1e8>
     3af:	90                   	nop
     3b0:	e8 6b fd ff ff       	call   120 <fork1.part.0>
     3b5:	e9 2b ff ff ff       	jmp    2e5 <runcmd+0x195>
     3ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  printf(2, "%s\n", s);
     3c0:	83 ec 04             	sub    $0x4,%esp
     3c3:	68 8c 13 00 00       	push   $0x138c
     3c8:	68 fd 13 00 00       	push   $0x13fd
     3cd:	6a 02                	push   $0x2
     3cf:	e8 6c 0c 00 00       	call   1040 <printf>
  exit(0);
     3d4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3db:	e8 12 0b 00 00       	call   ef2 <exit>
     3e0:	83 c4 10             	add    $0x10,%esp
     3e3:	e9 77 fe ff ff       	jmp    25f <runcmd+0x10f>
     3e8:	90                   	nop
     3e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003f0 <getcmd>:
{
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	56                   	push   %esi
     3f4:	53                   	push   %ebx
     3f5:	8b 75 0c             	mov    0xc(%ebp),%esi
     3f8:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
     3fb:	83 ec 08             	sub    $0x8,%esp
     3fe:	68 91 13 00 00       	push   $0x1391
     403:	6a 02                	push   $0x2
     405:	e8 36 0c 00 00       	call   1040 <printf>
  memset(buf, 0, nbuf);
     40a:	83 c4 0c             	add    $0xc,%esp
     40d:	56                   	push   %esi
     40e:	6a 00                	push   $0x0
     410:	53                   	push   %ebx
     411:	e8 4a 09 00 00       	call   d60 <memset>
  gets(buf, nbuf);
     416:	58                   	pop    %eax
     417:	5a                   	pop    %edx
     418:	56                   	push   %esi
     419:	53                   	push   %ebx
     41a:	e8 a1 09 00 00       	call   dc0 <gets>
  if(buf[0] == 0) // EOF
     41f:	83 c4 10             	add    $0x10,%esp
     422:	31 c0                	xor    %eax,%eax
     424:	80 3b 00             	cmpb   $0x0,(%ebx)
     427:	0f 94 c0             	sete   %al
}
     42a:	8d 65 f8             	lea    -0x8(%ebp),%esp
  if(buf[0] == 0) // EOF
     42d:	f7 d8                	neg    %eax
}
     42f:	5b                   	pop    %ebx
     430:	5e                   	pop    %esi
     431:	5d                   	pop    %ebp
     432:	c3                   	ret    
     433:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000440 <panic>:
{
     440:	55                   	push   %ebp
     441:	89 e5                	mov    %esp,%ebp
     443:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     446:	ff 75 08             	pushl  0x8(%ebp)
     449:	68 fd 13 00 00       	push   $0x13fd
     44e:	6a 02                	push   $0x2
     450:	e8 eb 0b 00 00       	call   1040 <printf>
  exit(0);
     455:	83 c4 10             	add    $0x10,%esp
     458:	c7 45 08 00 00 00 00 	movl   $0x0,0x8(%ebp)
}
     45f:	c9                   	leave  
  exit(0);
     460:	e9 8d 0a 00 00       	jmp    ef2 <exit>
     465:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     469:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000470 <fork1>:
{
     470:	55                   	push   %ebp
     471:	89 e5                	mov    %esp,%ebp
     473:	83 ec 18             	sub    $0x18,%esp
  pid = fork();
     476:	e8 6f 0a 00 00       	call   eea <fork>
  if(pid == -1)
     47b:	83 f8 ff             	cmp    $0xffffffff,%eax
     47e:	74 08                	je     488 <fork1+0x18>
}
     480:	c9                   	leave  
     481:	c3                   	ret    
     482:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     488:	89 45 f4             	mov    %eax,-0xc(%ebp)
     48b:	e8 90 fc ff ff       	call   120 <fork1.part.0>
     490:	8b 45 f4             	mov    -0xc(%ebp),%eax
     493:	c9                   	leave  
     494:	c3                   	ret    
     495:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     499:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004a0 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     4a0:	55                   	push   %ebp
     4a1:	89 e5                	mov    %esp,%ebp
     4a3:	53                   	push   %ebx
     4a4:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4a7:	6a 54                	push   $0x54
     4a9:	e8 d2 0d 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4ae:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     4b1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     4b3:	6a 54                	push   $0x54
     4b5:	6a 00                	push   $0x0
     4b7:	50                   	push   %eax
     4b8:	e8 a3 08 00 00       	call   d60 <memset>
  cmd->type = EXEC;
     4bd:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     4c3:	89 d8                	mov    %ebx,%eax
     4c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     4c8:	c9                   	leave  
     4c9:	c3                   	ret    
     4ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004d0 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     4d0:	55                   	push   %ebp
     4d1:	89 e5                	mov    %esp,%ebp
     4d3:	53                   	push   %ebx
     4d4:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4d7:	6a 18                	push   $0x18
     4d9:	e8 a2 0d 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4de:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     4e1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     4e3:	6a 18                	push   $0x18
     4e5:	6a 00                	push   $0x0
     4e7:	50                   	push   %eax
     4e8:	e8 73 08 00 00       	call   d60 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     4ed:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     4f0:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     4f6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     4f9:	8b 45 0c             	mov    0xc(%ebp),%eax
     4fc:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     4ff:	8b 45 10             	mov    0x10(%ebp),%eax
     502:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     505:	8b 45 14             	mov    0x14(%ebp),%eax
     508:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     50b:	8b 45 18             	mov    0x18(%ebp),%eax
     50e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     511:	89 d8                	mov    %ebx,%eax
     513:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     516:	c9                   	leave  
     517:	c3                   	ret    
     518:	90                   	nop
     519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000520 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     520:	55                   	push   %ebp
     521:	89 e5                	mov    %esp,%ebp
     523:	53                   	push   %ebx
     524:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     527:	6a 0c                	push   $0xc
     529:	e8 52 0d 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     52e:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     531:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     533:	6a 0c                	push   $0xc
     535:	6a 00                	push   $0x0
     537:	50                   	push   %eax
     538:	e8 23 08 00 00       	call   d60 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     53d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     540:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     546:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     549:	8b 45 0c             	mov    0xc(%ebp),%eax
     54c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     54f:	89 d8                	mov    %ebx,%eax
     551:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     554:	c9                   	leave  
     555:	c3                   	ret    
     556:	8d 76 00             	lea    0x0(%esi),%esi
     559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000560 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     560:	55                   	push   %ebp
     561:	89 e5                	mov    %esp,%ebp
     563:	53                   	push   %ebx
     564:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     567:	6a 0c                	push   $0xc
     569:	e8 12 0d 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     56e:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     571:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     573:	6a 0c                	push   $0xc
     575:	6a 00                	push   $0x0
     577:	50                   	push   %eax
     578:	e8 e3 07 00 00       	call   d60 <memset>
  cmd->type = LIST;
  cmd->left = left;
     57d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     580:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     586:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     589:	8b 45 0c             	mov    0xc(%ebp),%eax
     58c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     58f:	89 d8                	mov    %ebx,%eax
     591:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     594:	c9                   	leave  
     595:	c3                   	ret    
     596:	8d 76 00             	lea    0x0(%esi),%esi
     599:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005a0 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     5a0:	55                   	push   %ebp
     5a1:	89 e5                	mov    %esp,%ebp
     5a3:	53                   	push   %ebx
     5a4:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     5a7:	6a 08                	push   $0x8
     5a9:	e8 d2 0c 00 00       	call   1280 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     5ae:	83 c4 0c             	add    $0xc,%esp
  cmd = malloc(sizeof(*cmd));
     5b1:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     5b3:	6a 08                	push   $0x8
     5b5:	6a 00                	push   $0x0
     5b7:	50                   	push   %eax
     5b8:	e8 a3 07 00 00       	call   d60 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     5bd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     5c0:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     5c6:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     5c9:	89 d8                	mov    %ebx,%eax
     5cb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     5ce:	c9                   	leave  
     5cf:	c3                   	ret    

000005d0 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     5d0:	55                   	push   %ebp
     5d1:	89 e5                	mov    %esp,%ebp
     5d3:	57                   	push   %edi
     5d4:	56                   	push   %esi
     5d5:	53                   	push   %ebx
     5d6:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     5d9:	8b 45 08             	mov    0x8(%ebp),%eax
{
     5dc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     5df:	8b 7d 10             	mov    0x10(%ebp),%edi
  s = *ps;
     5e2:	8b 30                	mov    (%eax),%esi
  while(s < es && strchr(whitespace, *s))
     5e4:	39 de                	cmp    %ebx,%esi
     5e6:	72 0f                	jb     5f7 <gettoken+0x27>
     5e8:	eb 25                	jmp    60f <gettoken+0x3f>
     5ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     5f0:	83 c6 01             	add    $0x1,%esi
  while(s < es && strchr(whitespace, *s))
     5f3:	39 f3                	cmp    %esi,%ebx
     5f5:	74 18                	je     60f <gettoken+0x3f>
     5f7:	0f be 06             	movsbl (%esi),%eax
     5fa:	83 ec 08             	sub    $0x8,%esp
     5fd:	50                   	push   %eax
     5fe:	68 44 1a 00 00       	push   $0x1a44
     603:	e8 78 07 00 00       	call   d80 <strchr>
     608:	83 c4 10             	add    $0x10,%esp
     60b:	85 c0                	test   %eax,%eax
     60d:	75 e1                	jne    5f0 <gettoken+0x20>
  if(q)
     60f:	85 ff                	test   %edi,%edi
     611:	74 02                	je     615 <gettoken+0x45>
    *q = s;
     613:	89 37                	mov    %esi,(%edi)
  ret = *s;
     615:	0f be 06             	movsbl (%esi),%eax
  switch(*s){
     618:	3c 29                	cmp    $0x29,%al
     61a:	7f 54                	jg     670 <gettoken+0xa0>
     61c:	3c 28                	cmp    $0x28,%al
     61e:	0f 8d c8 00 00 00    	jge    6ec <gettoken+0x11c>
     624:	31 ff                	xor    %edi,%edi
     626:	84 c0                	test   %al,%al
     628:	0f 85 e2 00 00 00    	jne    710 <gettoken+0x140>
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     62e:	8b 55 14             	mov    0x14(%ebp),%edx
     631:	85 d2                	test   %edx,%edx
     633:	74 05                	je     63a <gettoken+0x6a>
    *eq = s;
     635:	8b 45 14             	mov    0x14(%ebp),%eax
     638:	89 30                	mov    %esi,(%eax)

  while(s < es && strchr(whitespace, *s))
     63a:	39 f3                	cmp    %esi,%ebx
     63c:	77 09                	ja     647 <gettoken+0x77>
     63e:	eb 1f                	jmp    65f <gettoken+0x8f>
    s++;
     640:	83 c6 01             	add    $0x1,%esi
  while(s < es && strchr(whitespace, *s))
     643:	39 f3                	cmp    %esi,%ebx
     645:	74 18                	je     65f <gettoken+0x8f>
     647:	0f be 06             	movsbl (%esi),%eax
     64a:	83 ec 08             	sub    $0x8,%esp
     64d:	50                   	push   %eax
     64e:	68 44 1a 00 00       	push   $0x1a44
     653:	e8 28 07 00 00       	call   d80 <strchr>
     658:	83 c4 10             	add    $0x10,%esp
     65b:	85 c0                	test   %eax,%eax
     65d:	75 e1                	jne    640 <gettoken+0x70>
  *ps = s;
     65f:	8b 45 08             	mov    0x8(%ebp),%eax
     662:	89 30                	mov    %esi,(%eax)
  return ret;
}
     664:	8d 65 f4             	lea    -0xc(%ebp),%esp
     667:	89 f8                	mov    %edi,%eax
     669:	5b                   	pop    %ebx
     66a:	5e                   	pop    %esi
     66b:	5f                   	pop    %edi
     66c:	5d                   	pop    %ebp
     66d:	c3                   	ret    
     66e:	66 90                	xchg   %ax,%ax
  switch(*s){
     670:	3c 3e                	cmp    $0x3e,%al
     672:	75 1c                	jne    690 <gettoken+0xc0>
    if(*s == '>'){
     674:	80 7e 01 3e          	cmpb   $0x3e,0x1(%esi)
     678:	0f 84 82 00 00 00    	je     700 <gettoken+0x130>
    s++;
     67e:	83 c6 01             	add    $0x1,%esi
     681:	bf 3e 00 00 00       	mov    $0x3e,%edi
     686:	eb a6                	jmp    62e <gettoken+0x5e>
     688:	90                   	nop
     689:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     690:	7f 56                	jg     6e8 <gettoken+0x118>
     692:	8d 48 c5             	lea    -0x3b(%eax),%ecx
     695:	80 f9 01             	cmp    $0x1,%cl
     698:	76 52                	jbe    6ec <gettoken+0x11c>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     69a:	39 f3                	cmp    %esi,%ebx
     69c:	77 24                	ja     6c2 <gettoken+0xf2>
     69e:	eb 7a                	jmp    71a <gettoken+0x14a>
     6a0:	0f be 06             	movsbl (%esi),%eax
     6a3:	83 ec 08             	sub    $0x8,%esp
     6a6:	50                   	push   %eax
     6a7:	68 3c 1a 00 00       	push   $0x1a3c
     6ac:	e8 cf 06 00 00       	call   d80 <strchr>
     6b1:	83 c4 10             	add    $0x10,%esp
     6b4:	85 c0                	test   %eax,%eax
     6b6:	75 1f                	jne    6d7 <gettoken+0x107>
      s++;
     6b8:	83 c6 01             	add    $0x1,%esi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     6bb:	39 f3                	cmp    %esi,%ebx
     6bd:	74 5b                	je     71a <gettoken+0x14a>
     6bf:	0f be 06             	movsbl (%esi),%eax
     6c2:	83 ec 08             	sub    $0x8,%esp
     6c5:	50                   	push   %eax
     6c6:	68 44 1a 00 00       	push   $0x1a44
     6cb:	e8 b0 06 00 00       	call   d80 <strchr>
     6d0:	83 c4 10             	add    $0x10,%esp
     6d3:	85 c0                	test   %eax,%eax
     6d5:	74 c9                	je     6a0 <gettoken+0xd0>
    ret = 'a';
     6d7:	bf 61 00 00 00       	mov    $0x61,%edi
     6dc:	e9 4d ff ff ff       	jmp    62e <gettoken+0x5e>
     6e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     6e8:	3c 7c                	cmp    $0x7c,%al
     6ea:	75 ae                	jne    69a <gettoken+0xca>
  ret = *s;
     6ec:	0f be f8             	movsbl %al,%edi
    s++;
     6ef:	83 c6 01             	add    $0x1,%esi
    break;
     6f2:	e9 37 ff ff ff       	jmp    62e <gettoken+0x5e>
     6f7:	89 f6                	mov    %esi,%esi
     6f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      s++;
     700:	83 c6 02             	add    $0x2,%esi
      ret = '+';
     703:	bf 2b 00 00 00       	mov    $0x2b,%edi
     708:	e9 21 ff ff ff       	jmp    62e <gettoken+0x5e>
     70d:	8d 76 00             	lea    0x0(%esi),%esi
  switch(*s){
     710:	3c 26                	cmp    $0x26,%al
     712:	0f 85 82 ff ff ff    	jne    69a <gettoken+0xca>
     718:	eb d2                	jmp    6ec <gettoken+0x11c>
  if(eq)
     71a:	8b 45 14             	mov    0x14(%ebp),%eax
     71d:	bf 61 00 00 00       	mov    $0x61,%edi
     722:	85 c0                	test   %eax,%eax
     724:	0f 85 0b ff ff ff    	jne    635 <gettoken+0x65>
     72a:	e9 30 ff ff ff       	jmp    65f <gettoken+0x8f>
     72f:	90                   	nop

00000730 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     730:	55                   	push   %ebp
     731:	89 e5                	mov    %esp,%ebp
     733:	57                   	push   %edi
     734:	56                   	push   %esi
     735:	53                   	push   %ebx
     736:	83 ec 0c             	sub    $0xc,%esp
     739:	8b 7d 08             	mov    0x8(%ebp),%edi
     73c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     73f:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     741:	39 f3                	cmp    %esi,%ebx
     743:	72 12                	jb     757 <peek+0x27>
     745:	eb 28                	jmp    76f <peek+0x3f>
     747:	89 f6                	mov    %esi,%esi
     749:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    s++;
     750:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     753:	39 de                	cmp    %ebx,%esi
     755:	74 18                	je     76f <peek+0x3f>
     757:	0f be 03             	movsbl (%ebx),%eax
     75a:	83 ec 08             	sub    $0x8,%esp
     75d:	50                   	push   %eax
     75e:	68 44 1a 00 00       	push   $0x1a44
     763:	e8 18 06 00 00       	call   d80 <strchr>
     768:	83 c4 10             	add    $0x10,%esp
     76b:	85 c0                	test   %eax,%eax
     76d:	75 e1                	jne    750 <peek+0x20>
  *ps = s;
     76f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     771:	0f be 13             	movsbl (%ebx),%edx
     774:	31 c0                	xor    %eax,%eax
     776:	84 d2                	test   %dl,%dl
     778:	74 17                	je     791 <peek+0x61>
     77a:	83 ec 08             	sub    $0x8,%esp
     77d:	52                   	push   %edx
     77e:	ff 75 10             	pushl  0x10(%ebp)
     781:	e8 fa 05 00 00       	call   d80 <strchr>
     786:	83 c4 10             	add    $0x10,%esp
     789:	85 c0                	test   %eax,%eax
     78b:	0f 95 c0             	setne  %al
     78e:	0f b6 c0             	movzbl %al,%eax
}
     791:	8d 65 f4             	lea    -0xc(%ebp),%esp
     794:	5b                   	pop    %ebx
     795:	5e                   	pop    %esi
     796:	5f                   	pop    %edi
     797:	5d                   	pop    %ebp
     798:	c3                   	ret    
     799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000007a0 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     7a0:	55                   	push   %ebp
     7a1:	89 e5                	mov    %esp,%ebp
     7a3:	57                   	push   %edi
     7a4:	56                   	push   %esi
     7a5:	53                   	push   %ebx
     7a6:	83 ec 1c             	sub    $0x1c,%esp
     7a9:	8b 75 0c             	mov    0xc(%ebp),%esi
     7ac:	8b 7d 10             	mov    0x10(%ebp),%edi
     7af:	90                   	nop
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     7b0:	83 ec 04             	sub    $0x4,%esp
     7b3:	68 b1 13 00 00       	push   $0x13b1
     7b8:	57                   	push   %edi
     7b9:	56                   	push   %esi
     7ba:	e8 71 ff ff ff       	call   730 <peek>
     7bf:	83 c4 10             	add    $0x10,%esp
     7c2:	85 c0                	test   %eax,%eax
     7c4:	0f 84 8e 00 00 00    	je     858 <parseredirs+0xb8>
    tok = gettoken(ps, es, 0, 0);
     7ca:	6a 00                	push   $0x0
     7cc:	6a 00                	push   $0x0
     7ce:	57                   	push   %edi
     7cf:	56                   	push   %esi
     7d0:	e8 fb fd ff ff       	call   5d0 <gettoken>
     7d5:	89 c3                	mov    %eax,%ebx
    if(gettoken(ps, es, &q, &eq) != 'a')
     7d7:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     7da:	50                   	push   %eax
     7db:	8d 45 e0             	lea    -0x20(%ebp),%eax
     7de:	50                   	push   %eax
     7df:	57                   	push   %edi
     7e0:	56                   	push   %esi
     7e1:	e8 ea fd ff ff       	call   5d0 <gettoken>
     7e6:	83 c4 20             	add    $0x20,%esp
     7e9:	83 f8 61             	cmp    $0x61,%eax
     7ec:	74 23                	je     811 <parseredirs+0x71>
  printf(2, "%s\n", s);
     7ee:	83 ec 04             	sub    $0x4,%esp
     7f1:	68 94 13 00 00       	push   $0x1394
     7f6:	68 fd 13 00 00       	push   $0x13fd
     7fb:	6a 02                	push   $0x2
     7fd:	e8 3e 08 00 00       	call   1040 <printf>
  exit(0);
     802:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     809:	e8 e4 06 00 00       	call   ef2 <exit>
     80e:	83 c4 10             	add    $0x10,%esp
      panic("missing file for redirection");
    switch(tok){
     811:	83 fb 3c             	cmp    $0x3c,%ebx
     814:	74 32                	je     848 <parseredirs+0xa8>
     816:	83 fb 3e             	cmp    $0x3e,%ebx
     819:	74 05                	je     820 <parseredirs+0x80>
     81b:	83 fb 2b             	cmp    $0x2b,%ebx
     81e:	75 90                	jne    7b0 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     820:	83 ec 0c             	sub    $0xc,%esp
     823:	6a 01                	push   $0x1
     825:	68 01 02 00 00       	push   $0x201
     82a:	ff 75 e4             	pushl  -0x1c(%ebp)
     82d:	ff 75 e0             	pushl  -0x20(%ebp)
     830:	ff 75 08             	pushl  0x8(%ebp)
     833:	e8 98 fc ff ff       	call   4d0 <redircmd>
      break;
     838:	83 c4 20             	add    $0x20,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     83b:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     83e:	e9 6d ff ff ff       	jmp    7b0 <parseredirs+0x10>
     843:	90                   	nop
     844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     848:	83 ec 0c             	sub    $0xc,%esp
     84b:	6a 00                	push   $0x0
     84d:	6a 00                	push   $0x0
     84f:	eb d9                	jmp    82a <parseredirs+0x8a>
     851:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  return cmd;
}
     858:	8b 45 08             	mov    0x8(%ebp),%eax
     85b:	8d 65 f4             	lea    -0xc(%ebp),%esp
     85e:	5b                   	pop    %ebx
     85f:	5e                   	pop    %esi
     860:	5f                   	pop    %edi
     861:	5d                   	pop    %ebp
     862:	c3                   	ret    
     863:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     869:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000870 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     870:	55                   	push   %ebp
     871:	89 e5                	mov    %esp,%ebp
     873:	57                   	push   %edi
     874:	56                   	push   %esi
     875:	53                   	push   %ebx
     876:	83 ec 30             	sub    $0x30,%esp
     879:	8b 75 08             	mov    0x8(%ebp),%esi
     87c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     87f:	68 b4 13 00 00       	push   $0x13b4
     884:	57                   	push   %edi
     885:	56                   	push   %esi
     886:	e8 a5 fe ff ff       	call   730 <peek>
     88b:	83 c4 10             	add    $0x10,%esp
     88e:	85 c0                	test   %eax,%eax
     890:	0f 85 ea 00 00 00    	jne    980 <parseexec+0x110>
     896:	89 c3                	mov    %eax,%ebx
    return parseblock(ps, es);

  ret = execcmd();
     898:	e8 03 fc ff ff       	call   4a0 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     89d:	83 ec 04             	sub    $0x4,%esp
  ret = execcmd();
     8a0:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = parseredirs(ret, ps, es);
     8a3:	57                   	push   %edi
     8a4:	56                   	push   %esi
     8a5:	50                   	push   %eax
     8a6:	e8 f5 fe ff ff       	call   7a0 <parseredirs>
     8ab:	83 c4 10             	add    $0x10,%esp
     8ae:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     8b1:	eb 18                	jmp    8cb <parseexec+0x5b>
     8b3:	90                   	nop
     8b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     8b8:	83 ec 04             	sub    $0x4,%esp
     8bb:	57                   	push   %edi
     8bc:	56                   	push   %esi
     8bd:	ff 75 d4             	pushl  -0x2c(%ebp)
     8c0:	e8 db fe ff ff       	call   7a0 <parseredirs>
     8c5:	83 c4 10             	add    $0x10,%esp
     8c8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     8cb:	83 ec 04             	sub    $0x4,%esp
     8ce:	68 cb 13 00 00       	push   $0x13cb
     8d3:	57                   	push   %edi
     8d4:	56                   	push   %esi
     8d5:	e8 56 fe ff ff       	call   730 <peek>
     8da:	83 c4 10             	add    $0x10,%esp
     8dd:	85 c0                	test   %eax,%eax
     8df:	75 7f                	jne    960 <parseexec+0xf0>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     8e1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     8e4:	50                   	push   %eax
     8e5:	8d 45 e0             	lea    -0x20(%ebp),%eax
     8e8:	50                   	push   %eax
     8e9:	57                   	push   %edi
     8ea:	56                   	push   %esi
     8eb:	e8 e0 fc ff ff       	call   5d0 <gettoken>
     8f0:	83 c4 10             	add    $0x10,%esp
     8f3:	85 c0                	test   %eax,%eax
     8f5:	74 69                	je     960 <parseexec+0xf0>
    if(tok != 'a')
     8f7:	83 f8 61             	cmp    $0x61,%eax
     8fa:	74 23                	je     91f <parseexec+0xaf>
  printf(2, "%s\n", s);
     8fc:	83 ec 04             	sub    $0x4,%esp
     8ff:	68 b6 13 00 00       	push   $0x13b6
     904:	68 fd 13 00 00       	push   $0x13fd
     909:	6a 02                	push   $0x2
     90b:	e8 30 07 00 00       	call   1040 <printf>
  exit(0);
     910:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     917:	e8 d6 05 00 00       	call   ef2 <exit>
     91c:	83 c4 10             	add    $0x10,%esp
    cmd->argv[argc] = q;
     91f:	8b 45 e0             	mov    -0x20(%ebp),%eax
     922:	8b 55 d0             	mov    -0x30(%ebp),%edx
     925:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
    cmd->eargv[argc] = eq;
     929:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     92c:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
    argc++;
     930:	83 c3 01             	add    $0x1,%ebx
    if(argc >= MAXARGS)
     933:	83 fb 09             	cmp    $0x9,%ebx
     936:	7e 80                	jle    8b8 <parseexec+0x48>
  printf(2, "%s\n", s);
     938:	83 ec 04             	sub    $0x4,%esp
     93b:	68 bd 13 00 00       	push   $0x13bd
     940:	68 fd 13 00 00       	push   $0x13fd
     945:	6a 02                	push   $0x2
     947:	e8 f4 06 00 00       	call   1040 <printf>
  exit(0);
     94c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     953:	e8 9a 05 00 00       	call   ef2 <exit>
     958:	83 c4 10             	add    $0x10,%esp
     95b:	e9 58 ff ff ff       	jmp    8b8 <parseexec+0x48>
     960:	8b 45 d0             	mov    -0x30(%ebp),%eax
     963:	8d 04 98             	lea    (%eax,%ebx,4),%eax
  }
  cmd->argv[argc] = 0;
     966:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     96d:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
  return ret;
}
     974:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     977:	8d 65 f4             	lea    -0xc(%ebp),%esp
     97a:	5b                   	pop    %ebx
     97b:	5e                   	pop    %esi
     97c:	5f                   	pop    %edi
     97d:	5d                   	pop    %ebp
     97e:	c3                   	ret    
     97f:	90                   	nop
    return parseblock(ps, es);
     980:	83 ec 08             	sub    $0x8,%esp
     983:	57                   	push   %edi
     984:	56                   	push   %esi
     985:	e8 26 01 00 00       	call   ab0 <parseblock>
     98a:	83 c4 10             	add    $0x10,%esp
     98d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
}
     990:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     993:	8d 65 f4             	lea    -0xc(%ebp),%esp
     996:	5b                   	pop    %ebx
     997:	5e                   	pop    %esi
     998:	5f                   	pop    %edi
     999:	5d                   	pop    %ebp
     99a:	c3                   	ret    
     99b:	90                   	nop
     99c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000009a0 <parsepipe>:
{
     9a0:	55                   	push   %ebp
     9a1:	89 e5                	mov    %esp,%ebp
     9a3:	57                   	push   %edi
     9a4:	56                   	push   %esi
     9a5:	53                   	push   %ebx
     9a6:	83 ec 14             	sub    $0x14,%esp
     9a9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     9ac:	8b 75 0c             	mov    0xc(%ebp),%esi
  cmd = parseexec(ps, es);
     9af:	56                   	push   %esi
     9b0:	53                   	push   %ebx
     9b1:	e8 ba fe ff ff       	call   870 <parseexec>
  if(peek(ps, es, "|")){
     9b6:	83 c4 0c             	add    $0xc,%esp
  cmd = parseexec(ps, es);
     9b9:	89 c7                	mov    %eax,%edi
  if(peek(ps, es, "|")){
     9bb:	68 d0 13 00 00       	push   $0x13d0
     9c0:	56                   	push   %esi
     9c1:	53                   	push   %ebx
     9c2:	e8 69 fd ff ff       	call   730 <peek>
     9c7:	83 c4 10             	add    $0x10,%esp
     9ca:	85 c0                	test   %eax,%eax
     9cc:	75 12                	jne    9e0 <parsepipe+0x40>
}
     9ce:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9d1:	89 f8                	mov    %edi,%eax
     9d3:	5b                   	pop    %ebx
     9d4:	5e                   	pop    %esi
     9d5:	5f                   	pop    %edi
     9d6:	5d                   	pop    %ebp
     9d7:	c3                   	ret    
     9d8:	90                   	nop
     9d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    gettoken(ps, es, 0, 0);
     9e0:	6a 00                	push   $0x0
     9e2:	6a 00                	push   $0x0
     9e4:	56                   	push   %esi
     9e5:	53                   	push   %ebx
     9e6:	e8 e5 fb ff ff       	call   5d0 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     9eb:	58                   	pop    %eax
     9ec:	5a                   	pop    %edx
     9ed:	56                   	push   %esi
     9ee:	53                   	push   %ebx
     9ef:	e8 ac ff ff ff       	call   9a0 <parsepipe>
     9f4:	89 7d 08             	mov    %edi,0x8(%ebp)
     9f7:	89 45 0c             	mov    %eax,0xc(%ebp)
     9fa:	83 c4 10             	add    $0x10,%esp
}
     9fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a00:	5b                   	pop    %ebx
     a01:	5e                   	pop    %esi
     a02:	5f                   	pop    %edi
     a03:	5d                   	pop    %ebp
    cmd = pipecmd(cmd, parsepipe(ps, es));
     a04:	e9 17 fb ff ff       	jmp    520 <pipecmd>
     a09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000a10 <parseline>:
{
     a10:	55                   	push   %ebp
     a11:	89 e5                	mov    %esp,%ebp
     a13:	57                   	push   %edi
     a14:	56                   	push   %esi
     a15:	53                   	push   %ebx
     a16:	83 ec 14             	sub    $0x14,%esp
     a19:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a1c:	8b 75 0c             	mov    0xc(%ebp),%esi
  cmd = parsepipe(ps, es);
     a1f:	56                   	push   %esi
     a20:	53                   	push   %ebx
     a21:	e8 7a ff ff ff       	call   9a0 <parsepipe>
  while(peek(ps, es, "&")){
     a26:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     a29:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     a2b:	eb 1b                	jmp    a48 <parseline+0x38>
     a2d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     a30:	6a 00                	push   $0x0
     a32:	6a 00                	push   $0x0
     a34:	56                   	push   %esi
     a35:	53                   	push   %ebx
     a36:	e8 95 fb ff ff       	call   5d0 <gettoken>
    cmd = backcmd(cmd);
     a3b:	89 3c 24             	mov    %edi,(%esp)
     a3e:	e8 5d fb ff ff       	call   5a0 <backcmd>
     a43:	83 c4 10             	add    $0x10,%esp
     a46:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     a48:	83 ec 04             	sub    $0x4,%esp
     a4b:	68 d2 13 00 00       	push   $0x13d2
     a50:	56                   	push   %esi
     a51:	53                   	push   %ebx
     a52:	e8 d9 fc ff ff       	call   730 <peek>
     a57:	83 c4 10             	add    $0x10,%esp
     a5a:	85 c0                	test   %eax,%eax
     a5c:	75 d2                	jne    a30 <parseline+0x20>
  if(peek(ps, es, ";")){
     a5e:	83 ec 04             	sub    $0x4,%esp
     a61:	68 ce 13 00 00       	push   $0x13ce
     a66:	56                   	push   %esi
     a67:	53                   	push   %ebx
     a68:	e8 c3 fc ff ff       	call   730 <peek>
     a6d:	83 c4 10             	add    $0x10,%esp
     a70:	85 c0                	test   %eax,%eax
     a72:	75 0c                	jne    a80 <parseline+0x70>
}
     a74:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a77:	89 f8                	mov    %edi,%eax
     a79:	5b                   	pop    %ebx
     a7a:	5e                   	pop    %esi
     a7b:	5f                   	pop    %edi
     a7c:	5d                   	pop    %ebp
     a7d:	c3                   	ret    
     a7e:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     a80:	6a 00                	push   $0x0
     a82:	6a 00                	push   $0x0
     a84:	56                   	push   %esi
     a85:	53                   	push   %ebx
     a86:	e8 45 fb ff ff       	call   5d0 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     a8b:	58                   	pop    %eax
     a8c:	5a                   	pop    %edx
     a8d:	56                   	push   %esi
     a8e:	53                   	push   %ebx
     a8f:	e8 7c ff ff ff       	call   a10 <parseline>
     a94:	89 7d 08             	mov    %edi,0x8(%ebp)
     a97:	89 45 0c             	mov    %eax,0xc(%ebp)
     a9a:	83 c4 10             	add    $0x10,%esp
}
     a9d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     aa0:	5b                   	pop    %ebx
     aa1:	5e                   	pop    %esi
     aa2:	5f                   	pop    %edi
     aa3:	5d                   	pop    %ebp
    cmd = listcmd(cmd, parseline(ps, es));
     aa4:	e9 b7 fa ff ff       	jmp    560 <listcmd>
     aa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ab0 <parseblock>:
{
     ab0:	55                   	push   %ebp
     ab1:	89 e5                	mov    %esp,%ebp
     ab3:	57                   	push   %edi
     ab4:	56                   	push   %esi
     ab5:	53                   	push   %ebx
     ab6:	83 ec 10             	sub    $0x10,%esp
     ab9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     abc:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     abf:	68 b4 13 00 00       	push   $0x13b4
     ac4:	56                   	push   %esi
     ac5:	53                   	push   %ebx
     ac6:	e8 65 fc ff ff       	call   730 <peek>
     acb:	83 c4 10             	add    $0x10,%esp
     ace:	85 c0                	test   %eax,%eax
     ad0:	74 6e                	je     b40 <parseblock+0x90>
  gettoken(ps, es, 0, 0);
     ad2:	6a 00                	push   $0x0
     ad4:	6a 00                	push   $0x0
     ad6:	56                   	push   %esi
     ad7:	53                   	push   %ebx
     ad8:	e8 f3 fa ff ff       	call   5d0 <gettoken>
  cmd = parseline(ps, es);
     add:	58                   	pop    %eax
     ade:	5a                   	pop    %edx
     adf:	56                   	push   %esi
     ae0:	53                   	push   %ebx
     ae1:	e8 2a ff ff ff       	call   a10 <parseline>
  if(!peek(ps, es, ")"))
     ae6:	83 c4 0c             	add    $0xc,%esp
  cmd = parseline(ps, es);
     ae9:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     aeb:	68 f0 13 00 00       	push   $0x13f0
     af0:	56                   	push   %esi
     af1:	53                   	push   %ebx
     af2:	e8 39 fc ff ff       	call   730 <peek>
     af7:	83 c4 10             	add    $0x10,%esp
     afa:	85 c0                	test   %eax,%eax
     afc:	75 23                	jne    b21 <parseblock+0x71>
  printf(2, "%s\n", s);
     afe:	83 ec 04             	sub    $0x4,%esp
     b01:	68 df 13 00 00       	push   $0x13df
     b06:	68 fd 13 00 00       	push   $0x13fd
     b0b:	6a 02                	push   $0x2
     b0d:	e8 2e 05 00 00       	call   1040 <printf>
  exit(0);
     b12:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b19:	e8 d4 03 00 00       	call   ef2 <exit>
     b1e:	83 c4 10             	add    $0x10,%esp
  gettoken(ps, es, 0, 0);
     b21:	6a 00                	push   $0x0
     b23:	6a 00                	push   $0x0
     b25:	56                   	push   %esi
     b26:	53                   	push   %ebx
     b27:	e8 a4 fa ff ff       	call   5d0 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     b2c:	83 c4 0c             	add    $0xc,%esp
     b2f:	56                   	push   %esi
     b30:	53                   	push   %ebx
     b31:	57                   	push   %edi
     b32:	e8 69 fc ff ff       	call   7a0 <parseredirs>
}
     b37:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b3a:	5b                   	pop    %ebx
     b3b:	5e                   	pop    %esi
     b3c:	5f                   	pop    %edi
     b3d:	5d                   	pop    %ebp
     b3e:	c3                   	ret    
     b3f:	90                   	nop
  printf(2, "%s\n", s);
     b40:	83 ec 04             	sub    $0x4,%esp
     b43:	68 d4 13 00 00       	push   $0x13d4
     b48:	68 fd 13 00 00       	push   $0x13fd
     b4d:	6a 02                	push   $0x2
     b4f:	e8 ec 04 00 00       	call   1040 <printf>
  exit(0);
     b54:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b5b:	e8 92 03 00 00       	call   ef2 <exit>
     b60:	83 c4 10             	add    $0x10,%esp
     b63:	e9 6a ff ff ff       	jmp    ad2 <parseblock+0x22>
     b68:	90                   	nop
     b69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000b70 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     b70:	55                   	push   %ebp
     b71:	89 e5                	mov    %esp,%ebp
     b73:	53                   	push   %ebx
     b74:	83 ec 04             	sub    $0x4,%esp
     b77:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     b7a:	85 db                	test   %ebx,%ebx
     b7c:	74 20                	je     b9e <nulterminate+0x2e>
    return 0;

  switch(cmd->type){
     b7e:	83 3b 05             	cmpl   $0x5,(%ebx)
     b81:	77 1b                	ja     b9e <nulterminate+0x2e>
     b83:	8b 03                	mov    (%ebx),%eax
     b85:	ff 24 85 30 14 00 00 	jmp    *0x1430(,%eax,4)
     b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    nulterminate(lcmd->right);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
     b90:	83 ec 0c             	sub    $0xc,%esp
     b93:	ff 73 04             	pushl  0x4(%ebx)
     b96:	e8 d5 ff ff ff       	call   b70 <nulterminate>
    break;
     b9b:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     b9e:	89 d8                	mov    %ebx,%eax
     ba0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     ba3:	c9                   	leave  
     ba4:	c3                   	ret    
     ba5:	8d 76 00             	lea    0x0(%esi),%esi
    nulterminate(lcmd->left);
     ba8:	83 ec 0c             	sub    $0xc,%esp
     bab:	ff 73 04             	pushl  0x4(%ebx)
     bae:	e8 bd ff ff ff       	call   b70 <nulterminate>
    nulterminate(lcmd->right);
     bb3:	58                   	pop    %eax
     bb4:	ff 73 08             	pushl  0x8(%ebx)
     bb7:	e8 b4 ff ff ff       	call   b70 <nulterminate>
}
     bbc:	89 d8                	mov    %ebx,%eax
    break;
     bbe:	83 c4 10             	add    $0x10,%esp
}
     bc1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     bc4:	c9                   	leave  
     bc5:	c3                   	ret    
     bc6:	8d 76 00             	lea    0x0(%esi),%esi
     bc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    for(i=0; ecmd->argv[i]; i++)
     bd0:	8b 4b 04             	mov    0x4(%ebx),%ecx
     bd3:	8d 43 08             	lea    0x8(%ebx),%eax
     bd6:	85 c9                	test   %ecx,%ecx
     bd8:	74 c4                	je     b9e <nulterminate+0x2e>
     bda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     be0:	8b 50 24             	mov    0x24(%eax),%edx
     be3:	83 c0 04             	add    $0x4,%eax
     be6:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     be9:	8b 50 fc             	mov    -0x4(%eax),%edx
     bec:	85 d2                	test   %edx,%edx
     bee:	75 f0                	jne    be0 <nulterminate+0x70>
}
     bf0:	89 d8                	mov    %ebx,%eax
     bf2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     bf5:	c9                   	leave  
     bf6:	c3                   	ret    
     bf7:	89 f6                	mov    %esi,%esi
     bf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    nulterminate(rcmd->cmd);
     c00:	83 ec 0c             	sub    $0xc,%esp
     c03:	ff 73 04             	pushl  0x4(%ebx)
     c06:	e8 65 ff ff ff       	call   b70 <nulterminate>
    *rcmd->efile = 0;
     c0b:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     c0e:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     c11:	c6 00 00             	movb   $0x0,(%eax)
}
     c14:	89 d8                	mov    %ebx,%eax
     c16:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c19:	c9                   	leave  
     c1a:	c3                   	ret    
     c1b:	90                   	nop
     c1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000c20 <parsecmd>:
{
     c20:	55                   	push   %ebp
     c21:	89 e5                	mov    %esp,%ebp
     c23:	56                   	push   %esi
     c24:	53                   	push   %ebx
  es = s + strlen(s);
     c25:	8b 5d 08             	mov    0x8(%ebp),%ebx
     c28:	83 ec 0c             	sub    $0xc,%esp
     c2b:	53                   	push   %ebx
     c2c:	e8 ff 00 00 00       	call   d30 <strlen>
     c31:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     c33:	58                   	pop    %eax
     c34:	8d 45 08             	lea    0x8(%ebp),%eax
     c37:	5a                   	pop    %edx
     c38:	53                   	push   %ebx
     c39:	50                   	push   %eax
     c3a:	e8 d1 fd ff ff       	call   a10 <parseline>
     c3f:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     c41:	8d 45 08             	lea    0x8(%ebp),%eax
     c44:	83 c4 0c             	add    $0xc,%esp
     c47:	68 7b 13 00 00       	push   $0x137b
     c4c:	53                   	push   %ebx
     c4d:	50                   	push   %eax
     c4e:	e8 dd fa ff ff       	call   730 <peek>
  if(s != es){
     c53:	8b 45 08             	mov    0x8(%ebp),%eax
     c56:	83 c4 10             	add    $0x10,%esp
     c59:	39 c3                	cmp    %eax,%ebx
     c5b:	74 33                	je     c90 <parsecmd+0x70>
    printf(2, "leftovers: %s\n", s);
     c5d:	83 ec 04             	sub    $0x4,%esp
     c60:	50                   	push   %eax
     c61:	68 f2 13 00 00       	push   $0x13f2
     c66:	6a 02                	push   $0x2
     c68:	e8 d3 03 00 00       	call   1040 <printf>
  printf(2, "%s\n", s);
     c6d:	83 c4 0c             	add    $0xc,%esp
     c70:	68 b6 13 00 00       	push   $0x13b6
     c75:	68 fd 13 00 00       	push   $0x13fd
     c7a:	6a 02                	push   $0x2
     c7c:	e8 bf 03 00 00       	call   1040 <printf>
  exit(0);
     c81:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c88:	e8 65 02 00 00       	call   ef2 <exit>
     c8d:	83 c4 10             	add    $0x10,%esp
  nulterminate(cmd);
     c90:	83 ec 0c             	sub    $0xc,%esp
     c93:	56                   	push   %esi
     c94:	e8 d7 fe ff ff       	call   b70 <nulterminate>
}
     c99:	8d 65 f8             	lea    -0x8(%ebp),%esp
     c9c:	89 f0                	mov    %esi,%eax
     c9e:	5b                   	pop    %ebx
     c9f:	5e                   	pop    %esi
     ca0:	5d                   	pop    %ebp
     ca1:	c3                   	ret    
     ca2:	66 90                	xchg   %ax,%ax
     ca4:	66 90                	xchg   %ax,%ax
     ca6:	66 90                	xchg   %ax,%ax
     ca8:	66 90                	xchg   %ax,%ax
     caa:	66 90                	xchg   %ax,%ax
     cac:	66 90                	xchg   %ax,%ax
     cae:	66 90                	xchg   %ax,%ax

00000cb0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     cb0:	55                   	push   %ebp
     cb1:	89 e5                	mov    %esp,%ebp
     cb3:	53                   	push   %ebx
     cb4:	8b 45 08             	mov    0x8(%ebp),%eax
     cb7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     cba:	89 c2                	mov    %eax,%edx
     cbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     cc0:	83 c1 01             	add    $0x1,%ecx
     cc3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     cc7:	83 c2 01             	add    $0x1,%edx
     cca:	84 db                	test   %bl,%bl
     ccc:	88 5a ff             	mov    %bl,-0x1(%edx)
     ccf:	75 ef                	jne    cc0 <strcpy+0x10>
    ;
  return os;
}
     cd1:	5b                   	pop    %ebx
     cd2:	5d                   	pop    %ebp
     cd3:	c3                   	ret    
     cd4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     cda:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000ce0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     ce0:	55                   	push   %ebp
     ce1:	89 e5                	mov    %esp,%ebp
     ce3:	56                   	push   %esi
     ce4:	53                   	push   %ebx
     ce5:	8b 55 08             	mov    0x8(%ebp),%edx
     ce8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     ceb:	0f b6 02             	movzbl (%edx),%eax
     cee:	0f b6 19             	movzbl (%ecx),%ebx
     cf1:	84 c0                	test   %al,%al
     cf3:	75 1e                	jne    d13 <strcmp+0x33>
     cf5:	eb 29                	jmp    d20 <strcmp+0x40>
     cf7:	89 f6                	mov    %esi,%esi
     cf9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     d00:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     d03:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     d06:	8d 71 01             	lea    0x1(%ecx),%esi
  while(*p && *p == *q)
     d09:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     d0d:	84 c0                	test   %al,%al
     d0f:	74 0f                	je     d20 <strcmp+0x40>
     d11:	89 f1                	mov    %esi,%ecx
     d13:	38 d8                	cmp    %bl,%al
     d15:	74 e9                	je     d00 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
     d17:	29 d8                	sub    %ebx,%eax
}
     d19:	5b                   	pop    %ebx
     d1a:	5e                   	pop    %esi
     d1b:	5d                   	pop    %ebp
     d1c:	c3                   	ret    
     d1d:	8d 76 00             	lea    0x0(%esi),%esi
  while(*p && *p == *q)
     d20:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     d22:	29 d8                	sub    %ebx,%eax
}
     d24:	5b                   	pop    %ebx
     d25:	5e                   	pop    %esi
     d26:	5d                   	pop    %ebp
     d27:	c3                   	ret    
     d28:	90                   	nop
     d29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000d30 <strlen>:

uint
strlen(char *s)
{
     d30:	55                   	push   %ebp
     d31:	89 e5                	mov    %esp,%ebp
     d33:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     d36:	80 39 00             	cmpb   $0x0,(%ecx)
     d39:	74 12                	je     d4d <strlen+0x1d>
     d3b:	31 d2                	xor    %edx,%edx
     d3d:	8d 76 00             	lea    0x0(%esi),%esi
     d40:	83 c2 01             	add    $0x1,%edx
     d43:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     d47:	89 d0                	mov    %edx,%eax
     d49:	75 f5                	jne    d40 <strlen+0x10>
    ;
  return n;
}
     d4b:	5d                   	pop    %ebp
     d4c:	c3                   	ret    
  for(n = 0; s[n]; n++)
     d4d:	31 c0                	xor    %eax,%eax
}
     d4f:	5d                   	pop    %ebp
     d50:	c3                   	ret    
     d51:	eb 0d                	jmp    d60 <memset>
     d53:	90                   	nop
     d54:	90                   	nop
     d55:	90                   	nop
     d56:	90                   	nop
     d57:	90                   	nop
     d58:	90                   	nop
     d59:	90                   	nop
     d5a:	90                   	nop
     d5b:	90                   	nop
     d5c:	90                   	nop
     d5d:	90                   	nop
     d5e:	90                   	nop
     d5f:	90                   	nop

00000d60 <memset>:

void*
memset(void *dst, int c, uint n)
{
     d60:	55                   	push   %ebp
     d61:	89 e5                	mov    %esp,%ebp
     d63:	57                   	push   %edi
     d64:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     d67:	8b 4d 10             	mov    0x10(%ebp),%ecx
     d6a:	8b 45 0c             	mov    0xc(%ebp),%eax
     d6d:	89 d7                	mov    %edx,%edi
     d6f:	fc                   	cld    
     d70:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     d72:	89 d0                	mov    %edx,%eax
     d74:	5f                   	pop    %edi
     d75:	5d                   	pop    %ebp
     d76:	c3                   	ret    
     d77:	89 f6                	mov    %esi,%esi
     d79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d80 <strchr>:

char*
strchr(const char *s, char c)
{
     d80:	55                   	push   %ebp
     d81:	89 e5                	mov    %esp,%ebp
     d83:	53                   	push   %ebx
     d84:	8b 45 08             	mov    0x8(%ebp),%eax
     d87:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
     d8a:	0f b6 10             	movzbl (%eax),%edx
     d8d:	84 d2                	test   %dl,%dl
     d8f:	74 1d                	je     dae <strchr+0x2e>
    if(*s == c)
     d91:	38 d3                	cmp    %dl,%bl
     d93:	89 d9                	mov    %ebx,%ecx
     d95:	75 0d                	jne    da4 <strchr+0x24>
     d97:	eb 17                	jmp    db0 <strchr+0x30>
     d99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     da0:	38 ca                	cmp    %cl,%dl
     da2:	74 0c                	je     db0 <strchr+0x30>
  for(; *s; s++)
     da4:	83 c0 01             	add    $0x1,%eax
     da7:	0f b6 10             	movzbl (%eax),%edx
     daa:	84 d2                	test   %dl,%dl
     dac:	75 f2                	jne    da0 <strchr+0x20>
      return (char*)s;
  return 0;
     dae:	31 c0                	xor    %eax,%eax
}
     db0:	5b                   	pop    %ebx
     db1:	5d                   	pop    %ebp
     db2:	c3                   	ret    
     db3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     db9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000dc0 <gets>:

char*
gets(char *buf, int max)
{
     dc0:	55                   	push   %ebp
     dc1:	89 e5                	mov    %esp,%ebp
     dc3:	57                   	push   %edi
     dc4:	56                   	push   %esi
     dc5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     dc6:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
     dc8:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
     dcb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
     dce:	eb 29                	jmp    df9 <gets+0x39>
    cc = read(0, &c, 1);
     dd0:	83 ec 04             	sub    $0x4,%esp
     dd3:	6a 01                	push   $0x1
     dd5:	57                   	push   %edi
     dd6:	6a 00                	push   $0x0
     dd8:	e8 2d 01 00 00       	call   f0a <read>
    if(cc < 1)
     ddd:	83 c4 10             	add    $0x10,%esp
     de0:	85 c0                	test   %eax,%eax
     de2:	7e 1d                	jle    e01 <gets+0x41>
      break;
    buf[i++] = c;
     de4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     de8:	8b 55 08             	mov    0x8(%ebp),%edx
     deb:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
     ded:	3c 0a                	cmp    $0xa,%al
    buf[i++] = c;
     def:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     df3:	74 1b                	je     e10 <gets+0x50>
     df5:	3c 0d                	cmp    $0xd,%al
     df7:	74 17                	je     e10 <gets+0x50>
  for(i=0; i+1 < max; ){
     df9:	8d 5e 01             	lea    0x1(%esi),%ebx
     dfc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     dff:	7c cf                	jl     dd0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
     e01:	8b 45 08             	mov    0x8(%ebp),%eax
     e04:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     e08:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e0b:	5b                   	pop    %ebx
     e0c:	5e                   	pop    %esi
     e0d:	5f                   	pop    %edi
     e0e:	5d                   	pop    %ebp
     e0f:	c3                   	ret    
  buf[i] = '\0';
     e10:	8b 45 08             	mov    0x8(%ebp),%eax
  for(i=0; i+1 < max; ){
     e13:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
     e15:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
     e19:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e1c:	5b                   	pop    %ebx
     e1d:	5e                   	pop    %esi
     e1e:	5f                   	pop    %edi
     e1f:	5d                   	pop    %ebp
     e20:	c3                   	ret    
     e21:	eb 0d                	jmp    e30 <stat>
     e23:	90                   	nop
     e24:	90                   	nop
     e25:	90                   	nop
     e26:	90                   	nop
     e27:	90                   	nop
     e28:	90                   	nop
     e29:	90                   	nop
     e2a:	90                   	nop
     e2b:	90                   	nop
     e2c:	90                   	nop
     e2d:	90                   	nop
     e2e:	90                   	nop
     e2f:	90                   	nop

00000e30 <stat>:

int
stat(char *n, struct stat *st)
{
     e30:	55                   	push   %ebp
     e31:	89 e5                	mov    %esp,%ebp
     e33:	56                   	push   %esi
     e34:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     e35:	83 ec 08             	sub    $0x8,%esp
     e38:	6a 00                	push   $0x0
     e3a:	ff 75 08             	pushl  0x8(%ebp)
     e3d:	e8 f0 00 00 00       	call   f32 <open>
  if(fd < 0)
     e42:	83 c4 10             	add    $0x10,%esp
     e45:	85 c0                	test   %eax,%eax
     e47:	78 27                	js     e70 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     e49:	83 ec 08             	sub    $0x8,%esp
     e4c:	ff 75 0c             	pushl  0xc(%ebp)
     e4f:	89 c3                	mov    %eax,%ebx
     e51:	50                   	push   %eax
     e52:	e8 f3 00 00 00       	call   f4a <fstat>
  close(fd);
     e57:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     e5a:	89 c6                	mov    %eax,%esi
  close(fd);
     e5c:	e8 b9 00 00 00       	call   f1a <close>
  return r;
     e61:	83 c4 10             	add    $0x10,%esp
}
     e64:	8d 65 f8             	lea    -0x8(%ebp),%esp
     e67:	89 f0                	mov    %esi,%eax
     e69:	5b                   	pop    %ebx
     e6a:	5e                   	pop    %esi
     e6b:	5d                   	pop    %ebp
     e6c:	c3                   	ret    
     e6d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     e70:	be ff ff ff ff       	mov    $0xffffffff,%esi
     e75:	eb ed                	jmp    e64 <stat+0x34>
     e77:	89 f6                	mov    %esi,%esi
     e79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000e80 <atoi>:

int
atoi(const char *s)
{
     e80:	55                   	push   %ebp
     e81:	89 e5                	mov    %esp,%ebp
     e83:	53                   	push   %ebx
     e84:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     e87:	0f be 11             	movsbl (%ecx),%edx
     e8a:	8d 42 d0             	lea    -0x30(%edx),%eax
     e8d:	3c 09                	cmp    $0x9,%al
     e8f:	b8 00 00 00 00       	mov    $0x0,%eax
     e94:	77 1f                	ja     eb5 <atoi+0x35>
     e96:	8d 76 00             	lea    0x0(%esi),%esi
     e99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
     ea0:	8d 04 80             	lea    (%eax,%eax,4),%eax
     ea3:	83 c1 01             	add    $0x1,%ecx
     ea6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
     eaa:	0f be 11             	movsbl (%ecx),%edx
     ead:	8d 5a d0             	lea    -0x30(%edx),%ebx
     eb0:	80 fb 09             	cmp    $0x9,%bl
     eb3:	76 eb                	jbe    ea0 <atoi+0x20>
  return n;
}
     eb5:	5b                   	pop    %ebx
     eb6:	5d                   	pop    %ebp
     eb7:	c3                   	ret    
     eb8:	90                   	nop
     eb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ec0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     ec0:	55                   	push   %ebp
     ec1:	89 e5                	mov    %esp,%ebp
     ec3:	56                   	push   %esi
     ec4:	53                   	push   %ebx
     ec5:	8b 5d 10             	mov    0x10(%ebp),%ebx
     ec8:	8b 45 08             	mov    0x8(%ebp),%eax
     ecb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     ece:	85 db                	test   %ebx,%ebx
     ed0:	7e 14                	jle    ee6 <memmove+0x26>
     ed2:	31 d2                	xor    %edx,%edx
     ed4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     ed8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     edc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     edf:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
     ee2:	39 da                	cmp    %ebx,%edx
     ee4:	75 f2                	jne    ed8 <memmove+0x18>
  return vdst;
}
     ee6:	5b                   	pop    %ebx
     ee7:	5e                   	pop    %esi
     ee8:	5d                   	pop    %ebp
     ee9:	c3                   	ret    

00000eea <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     eea:	b8 01 00 00 00       	mov    $0x1,%eax
     eef:	cd 40                	int    $0x40
     ef1:	c3                   	ret    

00000ef2 <exit>:
SYSCALL(exit)
     ef2:	b8 02 00 00 00       	mov    $0x2,%eax
     ef7:	cd 40                	int    $0x40
     ef9:	c3                   	ret    

00000efa <wait>:
SYSCALL(wait)
     efa:	b8 03 00 00 00       	mov    $0x3,%eax
     eff:	cd 40                	int    $0x40
     f01:	c3                   	ret    

00000f02 <pipe>:
SYSCALL(pipe)
     f02:	b8 04 00 00 00       	mov    $0x4,%eax
     f07:	cd 40                	int    $0x40
     f09:	c3                   	ret    

00000f0a <read>:
SYSCALL(read)
     f0a:	b8 05 00 00 00       	mov    $0x5,%eax
     f0f:	cd 40                	int    $0x40
     f11:	c3                   	ret    

00000f12 <write>:
SYSCALL(write)
     f12:	b8 10 00 00 00       	mov    $0x10,%eax
     f17:	cd 40                	int    $0x40
     f19:	c3                   	ret    

00000f1a <close>:
SYSCALL(close)
     f1a:	b8 15 00 00 00       	mov    $0x15,%eax
     f1f:	cd 40                	int    $0x40
     f21:	c3                   	ret    

00000f22 <kill>:
SYSCALL(kill)
     f22:	b8 06 00 00 00       	mov    $0x6,%eax
     f27:	cd 40                	int    $0x40
     f29:	c3                   	ret    

00000f2a <exec>:
SYSCALL(exec)
     f2a:	b8 07 00 00 00       	mov    $0x7,%eax
     f2f:	cd 40                	int    $0x40
     f31:	c3                   	ret    

00000f32 <open>:
SYSCALL(open)
     f32:	b8 0f 00 00 00       	mov    $0xf,%eax
     f37:	cd 40                	int    $0x40
     f39:	c3                   	ret    

00000f3a <mknod>:
SYSCALL(mknod)
     f3a:	b8 11 00 00 00       	mov    $0x11,%eax
     f3f:	cd 40                	int    $0x40
     f41:	c3                   	ret    

00000f42 <unlink>:
SYSCALL(unlink)
     f42:	b8 12 00 00 00       	mov    $0x12,%eax
     f47:	cd 40                	int    $0x40
     f49:	c3                   	ret    

00000f4a <fstat>:
SYSCALL(fstat)
     f4a:	b8 08 00 00 00       	mov    $0x8,%eax
     f4f:	cd 40                	int    $0x40
     f51:	c3                   	ret    

00000f52 <link>:
SYSCALL(link)
     f52:	b8 13 00 00 00       	mov    $0x13,%eax
     f57:	cd 40                	int    $0x40
     f59:	c3                   	ret    

00000f5a <mkdir>:
SYSCALL(mkdir)
     f5a:	b8 14 00 00 00       	mov    $0x14,%eax
     f5f:	cd 40                	int    $0x40
     f61:	c3                   	ret    

00000f62 <chdir>:
SYSCALL(chdir)
     f62:	b8 09 00 00 00       	mov    $0x9,%eax
     f67:	cd 40                	int    $0x40
     f69:	c3                   	ret    

00000f6a <dup>:
SYSCALL(dup)
     f6a:	b8 0a 00 00 00       	mov    $0xa,%eax
     f6f:	cd 40                	int    $0x40
     f71:	c3                   	ret    

00000f72 <getpid>:
SYSCALL(getpid)
     f72:	b8 0b 00 00 00       	mov    $0xb,%eax
     f77:	cd 40                	int    $0x40
     f79:	c3                   	ret    

00000f7a <sbrk>:
SYSCALL(sbrk)
     f7a:	b8 0c 00 00 00       	mov    $0xc,%eax
     f7f:	cd 40                	int    $0x40
     f81:	c3                   	ret    

00000f82 <sleep>:
SYSCALL(sleep)
     f82:	b8 0d 00 00 00       	mov    $0xd,%eax
     f87:	cd 40                	int    $0x40
     f89:	c3                   	ret    

00000f8a <uptime>:
SYSCALL(uptime)
     f8a:	b8 0e 00 00 00       	mov    $0xe,%eax
     f8f:	cd 40                	int    $0x40
     f91:	c3                   	ret    

00000f92 <waitpid>:
SYSCALL(waitpid)
     f92:	b8 16 00 00 00       	mov    $0x16,%eax
     f97:	cd 40                	int    $0x40
     f99:	c3                   	ret    
     f9a:	66 90                	xchg   %ax,%ax
     f9c:	66 90                	xchg   %ax,%ax
     f9e:	66 90                	xchg   %ax,%ax

00000fa0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     fa0:	55                   	push   %ebp
     fa1:	89 e5                	mov    %esp,%ebp
     fa3:	57                   	push   %edi
     fa4:	56                   	push   %esi
     fa5:	53                   	push   %ebx
     fa6:	89 c6                	mov    %eax,%esi
     fa8:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     fab:	8b 5d 08             	mov    0x8(%ebp),%ebx
     fae:	85 db                	test   %ebx,%ebx
     fb0:	74 7e                	je     1030 <printint+0x90>
     fb2:	89 d0                	mov    %edx,%eax
     fb4:	c1 e8 1f             	shr    $0x1f,%eax
     fb7:	84 c0                	test   %al,%al
     fb9:	74 75                	je     1030 <printint+0x90>
    neg = 1;
    x = -xx;
     fbb:	89 d0                	mov    %edx,%eax
    neg = 1;
     fbd:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
     fc4:	f7 d8                	neg    %eax
     fc6:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
     fc9:	31 ff                	xor    %edi,%edi
     fcb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     fce:	89 ce                	mov    %ecx,%esi
     fd0:	eb 08                	jmp    fda <printint+0x3a>
     fd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
     fd8:	89 cf                	mov    %ecx,%edi
     fda:	31 d2                	xor    %edx,%edx
     fdc:	8d 4f 01             	lea    0x1(%edi),%ecx
     fdf:	f7 f6                	div    %esi
     fe1:	0f b6 92 50 14 00 00 	movzbl 0x1450(%edx),%edx
  }while((x /= base) != 0);
     fe8:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
     fea:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
     fed:	75 e9                	jne    fd8 <printint+0x38>
  if(neg)
     fef:	8b 45 c4             	mov    -0x3c(%ebp),%eax
     ff2:	8b 75 c0             	mov    -0x40(%ebp),%esi
     ff5:	85 c0                	test   %eax,%eax
     ff7:	74 08                	je     1001 <printint+0x61>
    buf[i++] = '-';
     ff9:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
     ffe:	8d 4f 02             	lea    0x2(%edi),%ecx

  while(--i >= 0)
    1001:	8d 79 ff             	lea    -0x1(%ecx),%edi
    1004:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1008:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
  write(fd, &c, 1);
    100d:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
    1010:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
    1013:	6a 01                	push   $0x1
    1015:	53                   	push   %ebx
    1016:	56                   	push   %esi
    1017:	88 45 d7             	mov    %al,-0x29(%ebp)
    101a:	e8 f3 fe ff ff       	call   f12 <write>
  while(--i >= 0)
    101f:	83 c4 10             	add    $0x10,%esp
    1022:	83 ff ff             	cmp    $0xffffffff,%edi
    1025:	75 e1                	jne    1008 <printint+0x68>
    putc(fd, buf[i]);
}
    1027:	8d 65 f4             	lea    -0xc(%ebp),%esp
    102a:	5b                   	pop    %ebx
    102b:	5e                   	pop    %esi
    102c:	5f                   	pop    %edi
    102d:	5d                   	pop    %ebp
    102e:	c3                   	ret    
    102f:	90                   	nop
    x = xx;
    1030:	89 d0                	mov    %edx,%eax
  neg = 0;
    1032:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    1039:	eb 8b                	jmp    fc6 <printint+0x26>
    103b:	90                   	nop
    103c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001040 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    1040:	55                   	push   %ebp
    1041:	89 e5                	mov    %esp,%ebp
    1043:	57                   	push   %edi
    1044:	56                   	push   %esi
    1045:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    1046:	8d 45 10             	lea    0x10(%ebp),%eax
{
    1049:	83 ec 2c             	sub    $0x2c,%esp
  for(i = 0; fmt[i]; i++){
    104c:	8b 75 0c             	mov    0xc(%ebp),%esi
{
    104f:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
    1052:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1055:	0f b6 1e             	movzbl (%esi),%ebx
    1058:	83 c6 01             	add    $0x1,%esi
    105b:	84 db                	test   %bl,%bl
    105d:	0f 84 b0 00 00 00    	je     1113 <printf+0xd3>
    1063:	31 d2                	xor    %edx,%edx
    1065:	eb 39                	jmp    10a0 <printf+0x60>
    1067:	89 f6                	mov    %esi,%esi
    1069:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1070:	83 f8 25             	cmp    $0x25,%eax
    1073:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
    1076:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    107b:	74 18                	je     1095 <printf+0x55>
  write(fd, &c, 1);
    107d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1080:	83 ec 04             	sub    $0x4,%esp
    1083:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    1086:	6a 01                	push   $0x1
    1088:	50                   	push   %eax
    1089:	57                   	push   %edi
    108a:	e8 83 fe ff ff       	call   f12 <write>
    108f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1092:	83 c4 10             	add    $0x10,%esp
    1095:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    1098:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    109c:	84 db                	test   %bl,%bl
    109e:	74 73                	je     1113 <printf+0xd3>
    if(state == 0){
    10a0:	85 d2                	test   %edx,%edx
    c = fmt[i] & 0xff;
    10a2:	0f be cb             	movsbl %bl,%ecx
    10a5:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    10a8:	74 c6                	je     1070 <printf+0x30>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    10aa:	83 fa 25             	cmp    $0x25,%edx
    10ad:	75 e6                	jne    1095 <printf+0x55>
      if(c == 'd'){
    10af:	83 f8 64             	cmp    $0x64,%eax
    10b2:	0f 84 f8 00 00 00    	je     11b0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    10b8:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    10be:	83 f9 70             	cmp    $0x70,%ecx
    10c1:	74 5d                	je     1120 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    10c3:	83 f8 73             	cmp    $0x73,%eax
    10c6:	0f 84 84 00 00 00    	je     1150 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    10cc:	83 f8 63             	cmp    $0x63,%eax
    10cf:	0f 84 ea 00 00 00    	je     11bf <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    10d5:	83 f8 25             	cmp    $0x25,%eax
    10d8:	0f 84 c2 00 00 00    	je     11a0 <printf+0x160>
  write(fd, &c, 1);
    10de:	8d 45 e7             	lea    -0x19(%ebp),%eax
    10e1:	83 ec 04             	sub    $0x4,%esp
    10e4:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    10e8:	6a 01                	push   $0x1
    10ea:	50                   	push   %eax
    10eb:	57                   	push   %edi
    10ec:	e8 21 fe ff ff       	call   f12 <write>
    10f1:	83 c4 0c             	add    $0xc,%esp
    10f4:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    10f7:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    10fa:	6a 01                	push   $0x1
    10fc:	50                   	push   %eax
    10fd:	57                   	push   %edi
    10fe:	83 c6 01             	add    $0x1,%esi
    1101:	e8 0c fe ff ff       	call   f12 <write>
  for(i = 0; fmt[i]; i++){
    1106:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    110a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    110d:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    110f:	84 db                	test   %bl,%bl
    1111:	75 8d                	jne    10a0 <printf+0x60>
    }
  }
}
    1113:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1116:	5b                   	pop    %ebx
    1117:	5e                   	pop    %esi
    1118:	5f                   	pop    %edi
    1119:	5d                   	pop    %ebp
    111a:	c3                   	ret    
    111b:	90                   	nop
    111c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 16, 0);
    1120:	83 ec 0c             	sub    $0xc,%esp
    1123:	b9 10 00 00 00       	mov    $0x10,%ecx
    1128:	6a 00                	push   $0x0
    112a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    112d:	89 f8                	mov    %edi,%eax
    112f:	8b 13                	mov    (%ebx),%edx
    1131:	e8 6a fe ff ff       	call   fa0 <printint>
        ap++;
    1136:	89 d8                	mov    %ebx,%eax
    1138:	83 c4 10             	add    $0x10,%esp
      state = 0;
    113b:	31 d2                	xor    %edx,%edx
        ap++;
    113d:	83 c0 04             	add    $0x4,%eax
    1140:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1143:	e9 4d ff ff ff       	jmp    1095 <printf+0x55>
    1148:	90                   	nop
    1149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    1150:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1153:	8b 18                	mov    (%eax),%ebx
        ap++;
    1155:	83 c0 04             	add    $0x4,%eax
    1158:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    115b:	85 db                	test   %ebx,%ebx
    115d:	74 7c                	je     11db <printf+0x19b>
        while(*s != 0){
    115f:	0f b6 03             	movzbl (%ebx),%eax
    1162:	84 c0                	test   %al,%al
    1164:	74 29                	je     118f <printf+0x14f>
    1166:	8d 76 00             	lea    0x0(%esi),%esi
    1169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    1170:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1173:	8d 45 e3             	lea    -0x1d(%ebp),%eax
    1176:	83 ec 04             	sub    $0x4,%esp
    1179:	6a 01                	push   $0x1
          s++;
    117b:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    117e:	50                   	push   %eax
    117f:	57                   	push   %edi
    1180:	e8 8d fd ff ff       	call   f12 <write>
        while(*s != 0){
    1185:	0f b6 03             	movzbl (%ebx),%eax
    1188:	83 c4 10             	add    $0x10,%esp
    118b:	84 c0                	test   %al,%al
    118d:	75 e1                	jne    1170 <printf+0x130>
      state = 0;
    118f:	31 d2                	xor    %edx,%edx
    1191:	e9 ff fe ff ff       	jmp    1095 <printf+0x55>
    1196:	8d 76 00             	lea    0x0(%esi),%esi
    1199:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  write(fd, &c, 1);
    11a0:	83 ec 04             	sub    $0x4,%esp
    11a3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    11a6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    11a9:	6a 01                	push   $0x1
    11ab:	e9 4c ff ff ff       	jmp    10fc <printf+0xbc>
        printint(fd, *ap, 10, 1);
    11b0:	83 ec 0c             	sub    $0xc,%esp
    11b3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    11b8:	6a 01                	push   $0x1
    11ba:	e9 6b ff ff ff       	jmp    112a <printf+0xea>
        putc(fd, *ap);
    11bf:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    11c2:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    11c5:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    11c7:	6a 01                	push   $0x1
        putc(fd, *ap);
    11c9:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    11cc:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    11cf:	50                   	push   %eax
    11d0:	57                   	push   %edi
    11d1:	e8 3c fd ff ff       	call   f12 <write>
    11d6:	e9 5b ff ff ff       	jmp    1136 <printf+0xf6>
        while(*s != 0){
    11db:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
    11e0:	bb 48 14 00 00       	mov    $0x1448,%ebx
    11e5:	eb 89                	jmp    1170 <printf+0x130>
    11e7:	66 90                	xchg   %ax,%ax
    11e9:	66 90                	xchg   %ax,%ax
    11eb:	66 90                	xchg   %ax,%ax
    11ed:	66 90                	xchg   %ax,%ax
    11ef:	90                   	nop

000011f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    11f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11f1:	a1 c4 1a 00 00       	mov    0x1ac4,%eax
{
    11f6:	89 e5                	mov    %esp,%ebp
    11f8:	57                   	push   %edi
    11f9:	56                   	push   %esi
    11fa:	53                   	push   %ebx
    11fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11fe:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1200:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1203:	39 c8                	cmp    %ecx,%eax
    1205:	73 19                	jae    1220 <free+0x30>
    1207:	89 f6                	mov    %esi,%esi
    1209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    1210:	39 d1                	cmp    %edx,%ecx
    1212:	72 1c                	jb     1230 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1214:	39 d0                	cmp    %edx,%eax
    1216:	73 18                	jae    1230 <free+0x40>
{
    1218:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    121a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    121c:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    121e:	72 f0                	jb     1210 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1220:	39 d0                	cmp    %edx,%eax
    1222:	72 f4                	jb     1218 <free+0x28>
    1224:	39 d1                	cmp    %edx,%ecx
    1226:	73 f0                	jae    1218 <free+0x28>
    1228:	90                   	nop
    1229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
    1230:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1233:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    1236:	39 fa                	cmp    %edi,%edx
    1238:	74 19                	je     1253 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    123a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    123d:	8b 50 04             	mov    0x4(%eax),%edx
    1240:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1243:	39 f1                	cmp    %esi,%ecx
    1245:	74 23                	je     126a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    1247:	89 08                	mov    %ecx,(%eax)
  freep = p;
    1249:	a3 c4 1a 00 00       	mov    %eax,0x1ac4
}
    124e:	5b                   	pop    %ebx
    124f:	5e                   	pop    %esi
    1250:	5f                   	pop    %edi
    1251:	5d                   	pop    %ebp
    1252:	c3                   	ret    
    bp->s.size += p->s.ptr->s.size;
    1253:	03 72 04             	add    0x4(%edx),%esi
    1256:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1259:	8b 10                	mov    (%eax),%edx
    125b:	8b 12                	mov    (%edx),%edx
    125d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1260:	8b 50 04             	mov    0x4(%eax),%edx
    1263:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1266:	39 f1                	cmp    %esi,%ecx
    1268:	75 dd                	jne    1247 <free+0x57>
    p->s.size += bp->s.size;
    126a:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    126d:	a3 c4 1a 00 00       	mov    %eax,0x1ac4
    p->s.size += bp->s.size;
    1272:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1275:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1278:	89 10                	mov    %edx,(%eax)
}
    127a:	5b                   	pop    %ebx
    127b:	5e                   	pop    %esi
    127c:	5f                   	pop    %edi
    127d:	5d                   	pop    %ebp
    127e:	c3                   	ret    
    127f:	90                   	nop

00001280 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1280:	55                   	push   %ebp
    1281:	89 e5                	mov    %esp,%ebp
    1283:	57                   	push   %edi
    1284:	56                   	push   %esi
    1285:	53                   	push   %ebx
    1286:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1289:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    128c:	8b 15 c4 1a 00 00    	mov    0x1ac4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1292:	8d 78 07             	lea    0x7(%eax),%edi
    1295:	c1 ef 03             	shr    $0x3,%edi
    1298:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    129b:	85 d2                	test   %edx,%edx
    129d:	0f 84 93 00 00 00    	je     1336 <malloc+0xb6>
    12a3:	8b 02                	mov    (%edx),%eax
    12a5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    12a8:	39 cf                	cmp    %ecx,%edi
    12aa:	76 64                	jbe    1310 <malloc+0x90>
    12ac:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    12b2:	bb 00 10 00 00       	mov    $0x1000,%ebx
    12b7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    12ba:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    12c1:	eb 0e                	jmp    12d1 <malloc+0x51>
    12c3:	90                   	nop
    12c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    12c8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    12ca:	8b 48 04             	mov    0x4(%eax),%ecx
    12cd:	39 cf                	cmp    %ecx,%edi
    12cf:	76 3f                	jbe    1310 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    12d1:	39 05 c4 1a 00 00    	cmp    %eax,0x1ac4
    12d7:	89 c2                	mov    %eax,%edx
    12d9:	75 ed                	jne    12c8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    12db:	83 ec 0c             	sub    $0xc,%esp
    12de:	56                   	push   %esi
    12df:	e8 96 fc ff ff       	call   f7a <sbrk>
  if(p == (char*)-1)
    12e4:	83 c4 10             	add    $0x10,%esp
    12e7:	83 f8 ff             	cmp    $0xffffffff,%eax
    12ea:	74 1c                	je     1308 <malloc+0x88>
  hp->s.size = nu;
    12ec:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    12ef:	83 ec 0c             	sub    $0xc,%esp
    12f2:	83 c0 08             	add    $0x8,%eax
    12f5:	50                   	push   %eax
    12f6:	e8 f5 fe ff ff       	call   11f0 <free>
  return freep;
    12fb:	8b 15 c4 1a 00 00    	mov    0x1ac4,%edx
      if((p = morecore(nunits)) == 0)
    1301:	83 c4 10             	add    $0x10,%esp
    1304:	85 d2                	test   %edx,%edx
    1306:	75 c0                	jne    12c8 <malloc+0x48>
        return 0;
    1308:	31 c0                	xor    %eax,%eax
    130a:	eb 1c                	jmp    1328 <malloc+0xa8>
    130c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1310:	39 cf                	cmp    %ecx,%edi
    1312:	74 1c                	je     1330 <malloc+0xb0>
        p->s.size -= nunits;
    1314:	29 f9                	sub    %edi,%ecx
    1316:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1319:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    131c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    131f:	89 15 c4 1a 00 00    	mov    %edx,0x1ac4
      return (void*)(p + 1);
    1325:	83 c0 08             	add    $0x8,%eax
  }
}
    1328:	8d 65 f4             	lea    -0xc(%ebp),%esp
    132b:	5b                   	pop    %ebx
    132c:	5e                   	pop    %esi
    132d:	5f                   	pop    %edi
    132e:	5d                   	pop    %ebp
    132f:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
    1330:	8b 08                	mov    (%eax),%ecx
    1332:	89 0a                	mov    %ecx,(%edx)
    1334:	eb e9                	jmp    131f <malloc+0x9f>
    base.s.ptr = freep = prevp = &base;
    1336:	c7 05 c4 1a 00 00 c8 	movl   $0x1ac8,0x1ac4
    133d:	1a 00 00 
    1340:	c7 05 c8 1a 00 00 c8 	movl   $0x1ac8,0x1ac8
    1347:	1a 00 00 
    base.s.size = 0;
    134a:	b8 c8 1a 00 00       	mov    $0x1ac8,%eax
    134f:	c7 05 cc 1a 00 00 00 	movl   $0x0,0x1acc
    1356:	00 00 00 
    1359:	e9 4e ff ff ff       	jmp    12ac <malloc+0x2c>
