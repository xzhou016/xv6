
_grep:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  }
}

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
  14:	8b 01                	mov    (%ecx),%eax
  16:	8b 71 04             	mov    0x4(%ecx),%esi
  int fd, i;
  char *pattern;

  if(argc <= 1){
  19:	83 f8 01             	cmp    $0x1,%eax
{
  1c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(argc <= 1){
  1f:	0f 8e a6 00 00 00    	jle    cb <main+0xcb>
    printf(2, "usage: grep pattern [file ...]\n");
    exit(0);
  }
  pattern = argv[1];

  if(argc <= 2){
  25:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
  pattern = argv[1];
  29:	8b 46 04             	mov    0x4(%esi),%eax
  2c:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if(argc <= 2){
  2f:	74 67                	je     98 <main+0x98>
  31:	bb 02 00 00 00       	mov    $0x2,%ebx
  36:	eb 27                	jmp    5f <main+0x5f>
  38:	90                   	nop
  39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(i = 2; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
      printf(1, "grep: cannot open %s\n", argv[i]);
      exit(0);
    }
    grep(pattern, fd);
  40:	83 ec 08             	sub    $0x8,%esp
  for(i = 2; i < argc; i++){
  43:	83 c3 01             	add    $0x1,%ebx
    grep(pattern, fd);
  46:	57                   	push   %edi
  47:	ff 75 e0             	pushl  -0x20(%ebp)
  4a:	e8 31 02 00 00       	call   280 <grep>
    close(fd);
  4f:	89 3c 24             	mov    %edi,(%esp)
  52:	e8 93 05 00 00       	call   5ea <close>
  for(i = 2; i < argc; i++){
  57:	83 c4 10             	add    $0x10,%esp
  5a:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
  5d:	7e 54                	jle    b3 <main+0xb3>
    if((fd = open(argv[i], 0)) < 0){
  5f:	83 ec 08             	sub    $0x8,%esp
  62:	6a 00                	push   $0x0
  64:	ff 34 9e             	pushl  (%esi,%ebx,4)
  67:	e8 96 05 00 00       	call   602 <open>
  6c:	83 c4 10             	add    $0x10,%esp
  6f:	85 c0                	test   %eax,%eax
  71:	89 c7                	mov    %eax,%edi
  73:	79 cb                	jns    40 <main+0x40>
      printf(1, "grep: cannot open %s\n", argv[i]);
  75:	83 ec 04             	sub    $0x4,%esp
  78:	ff 34 9e             	pushl  (%esi,%ebx,4)
  7b:	68 50 0a 00 00       	push   $0xa50
  80:	6a 01                	push   $0x1
  82:	e8 89 06 00 00       	call   710 <printf>
      exit(0);
  87:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  8e:	e8 2f 05 00 00       	call   5c2 <exit>
  93:	83 c4 10             	add    $0x10,%esp
  96:	eb a8                	jmp    40 <main+0x40>
    grep(pattern, 0);
  98:	50                   	push   %eax
  99:	50                   	push   %eax
  9a:	6a 00                	push   $0x0
  9c:	ff 75 e0             	pushl  -0x20(%ebp)
  9f:	e8 dc 01 00 00       	call   280 <grep>
    exit(0);
  a4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  ab:	e8 12 05 00 00       	call   5c2 <exit>
  b0:	83 c4 10             	add    $0x10,%esp
  }
  exit(0);
  b3:	83 ec 0c             	sub    $0xc,%esp
  b6:	6a 00                	push   $0x0
  b8:	e8 05 05 00 00       	call   5c2 <exit>
}
  bd:	8d 65 f0             	lea    -0x10(%ebp),%esp
  c0:	31 c0                	xor    %eax,%eax
  c2:	59                   	pop    %ecx
  c3:	5b                   	pop    %ebx
  c4:	5e                   	pop    %esi
  c5:	5f                   	pop    %edi
  c6:	5d                   	pop    %ebp
  c7:	8d 61 fc             	lea    -0x4(%ecx),%esp
  ca:	c3                   	ret    
    printf(2, "usage: grep pattern [file ...]\n");
  cb:	52                   	push   %edx
  cc:	52                   	push   %edx
  cd:	68 30 0a 00 00       	push   $0xa30
  d2:	6a 02                	push   $0x2
  d4:	e8 37 06 00 00       	call   710 <printf>
    exit(0);
  d9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  e0:	e8 dd 04 00 00       	call   5c2 <exit>
    grep(pattern, 0);
  e5:	59                   	pop    %ecx
  e6:	5b                   	pop    %ebx
  e7:	6a 00                	push   $0x0
  e9:	ff 76 04             	pushl  0x4(%esi)
  ec:	e8 8f 01 00 00       	call   280 <grep>
    exit(0);
  f1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f8:	e8 c5 04 00 00       	call   5c2 <exit>
  fd:	83 c4 10             	add    $0x10,%esp
 100:	eb b1                	jmp    b3 <main+0xb3>
 102:	66 90                	xchg   %ax,%ax
 104:	66 90                	xchg   %ax,%ax
 106:	66 90                	xchg   %ax,%ax
 108:	66 90                	xchg   %ax,%ax
 10a:	66 90                	xchg   %ax,%ax
 10c:	66 90                	xchg   %ax,%ax
 10e:	66 90                	xchg   %ax,%ax

00000110 <matchstar>:
  return 0;
}

// matchstar: search for c*re at beginning of text
int matchstar(int c, char *re, char *text)
{
 110:	55                   	push   %ebp
 111:	89 e5                	mov    %esp,%ebp
 113:	57                   	push   %edi
 114:	56                   	push   %esi
 115:	53                   	push   %ebx
 116:	83 ec 0c             	sub    $0xc,%esp
 119:	8b 75 08             	mov    0x8(%ebp),%esi
 11c:	8b 7d 0c             	mov    0xc(%ebp),%edi
 11f:	8b 5d 10             	mov    0x10(%ebp),%ebx
 122:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{  // a * matches zero or more instances
    if(matchhere(re, text))
 128:	83 ec 08             	sub    $0x8,%esp
 12b:	53                   	push   %ebx
 12c:	57                   	push   %edi
 12d:	e8 3e 00 00 00       	call   170 <matchhere>
 132:	83 c4 10             	add    $0x10,%esp
 135:	85 c0                	test   %eax,%eax
 137:	75 1f                	jne    158 <matchstar+0x48>
      return 1;
  }while(*text!='\0' && (*text++==c || c=='.'));
 139:	0f be 13             	movsbl (%ebx),%edx
 13c:	84 d2                	test   %dl,%dl
 13e:	74 0c                	je     14c <matchstar+0x3c>
 140:	83 c3 01             	add    $0x1,%ebx
 143:	83 fe 2e             	cmp    $0x2e,%esi
 146:	74 e0                	je     128 <matchstar+0x18>
 148:	39 f2                	cmp    %esi,%edx
 14a:	74 dc                	je     128 <matchstar+0x18>
  return 0;
}
 14c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 14f:	5b                   	pop    %ebx
 150:	5e                   	pop    %esi
 151:	5f                   	pop    %edi
 152:	5d                   	pop    %ebp
 153:	c3                   	ret    
 154:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 158:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return 1;
 15b:	b8 01 00 00 00       	mov    $0x1,%eax
}
 160:	5b                   	pop    %ebx
 161:	5e                   	pop    %esi
 162:	5f                   	pop    %edi
 163:	5d                   	pop    %ebp
 164:	c3                   	ret    
 165:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000170 <matchhere>:
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	57                   	push   %edi
 174:	56                   	push   %esi
 175:	53                   	push   %ebx
 176:	83 ec 0c             	sub    $0xc,%esp
 179:	8b 45 08             	mov    0x8(%ebp),%eax
 17c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if(re[0] == '\0')
 17f:	0f b6 18             	movzbl (%eax),%ebx
 182:	84 db                	test   %bl,%bl
 184:	74 63                	je     1e9 <matchhere+0x79>
  if(re[1] == '*')
 186:	0f be 50 01          	movsbl 0x1(%eax),%edx
 18a:	80 fa 2a             	cmp    $0x2a,%dl
 18d:	74 7b                	je     20a <matchhere+0x9a>
  if(re[0] == '$' && re[1] == '\0')
 18f:	80 fb 24             	cmp    $0x24,%bl
 192:	75 08                	jne    19c <matchhere+0x2c>
 194:	84 d2                	test   %dl,%dl
 196:	0f 84 8a 00 00 00    	je     226 <matchhere+0xb6>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
 19c:	0f b6 37             	movzbl (%edi),%esi
 19f:	89 f1                	mov    %esi,%ecx
 1a1:	84 c9                	test   %cl,%cl
 1a3:	74 5b                	je     200 <matchhere+0x90>
 1a5:	38 cb                	cmp    %cl,%bl
 1a7:	74 05                	je     1ae <matchhere+0x3e>
 1a9:	80 fb 2e             	cmp    $0x2e,%bl
 1ac:	75 52                	jne    200 <matchhere+0x90>
    return matchhere(re+1, text+1);
 1ae:	83 c7 01             	add    $0x1,%edi
 1b1:	83 c0 01             	add    $0x1,%eax
  if(re[0] == '\0')
 1b4:	84 d2                	test   %dl,%dl
 1b6:	74 31                	je     1e9 <matchhere+0x79>
  if(re[1] == '*')
 1b8:	0f b6 58 01          	movzbl 0x1(%eax),%ebx
 1bc:	80 fb 2a             	cmp    $0x2a,%bl
 1bf:	74 4c                	je     20d <matchhere+0x9d>
  if(re[0] == '$' && re[1] == '\0')
 1c1:	80 fa 24             	cmp    $0x24,%dl
 1c4:	75 04                	jne    1ca <matchhere+0x5a>
 1c6:	84 db                	test   %bl,%bl
 1c8:	74 5c                	je     226 <matchhere+0xb6>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
 1ca:	0f b6 37             	movzbl (%edi),%esi
 1cd:	89 f1                	mov    %esi,%ecx
 1cf:	84 c9                	test   %cl,%cl
 1d1:	74 2d                	je     200 <matchhere+0x90>
 1d3:	80 fa 2e             	cmp    $0x2e,%dl
 1d6:	74 04                	je     1dc <matchhere+0x6c>
 1d8:	38 d1                	cmp    %dl,%cl
 1da:	75 24                	jne    200 <matchhere+0x90>
 1dc:	0f be d3             	movsbl %bl,%edx
    return matchhere(re+1, text+1);
 1df:	83 c7 01             	add    $0x1,%edi
 1e2:	83 c0 01             	add    $0x1,%eax
  if(re[0] == '\0')
 1e5:	84 d2                	test   %dl,%dl
 1e7:	75 cf                	jne    1b8 <matchhere+0x48>
    return 1;
 1e9:	b8 01 00 00 00       	mov    $0x1,%eax
}
 1ee:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1f1:	5b                   	pop    %ebx
 1f2:	5e                   	pop    %esi
 1f3:	5f                   	pop    %edi
 1f4:	5d                   	pop    %ebp
 1f5:	c3                   	ret    
 1f6:	8d 76 00             	lea    0x0(%esi),%esi
 1f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 200:	8d 65 f4             	lea    -0xc(%ebp),%esp
  return 0;
 203:	31 c0                	xor    %eax,%eax
}
 205:	5b                   	pop    %ebx
 206:	5e                   	pop    %esi
 207:	5f                   	pop    %edi
 208:	5d                   	pop    %ebp
 209:	c3                   	ret    
  if(re[1] == '*')
 20a:	0f be d3             	movsbl %bl,%edx
    return matchstar(re[0], re+2, text);
 20d:	83 ec 04             	sub    $0x4,%esp
 210:	83 c0 02             	add    $0x2,%eax
 213:	57                   	push   %edi
 214:	50                   	push   %eax
 215:	52                   	push   %edx
 216:	e8 f5 fe ff ff       	call   110 <matchstar>
 21b:	83 c4 10             	add    $0x10,%esp
}
 21e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 221:	5b                   	pop    %ebx
 222:	5e                   	pop    %esi
 223:	5f                   	pop    %edi
 224:	5d                   	pop    %ebp
 225:	c3                   	ret    
    return *text == '\0';
 226:	31 c0                	xor    %eax,%eax
 228:	80 3f 00             	cmpb   $0x0,(%edi)
 22b:	0f 94 c0             	sete   %al
 22e:	eb be                	jmp    1ee <matchhere+0x7e>

00000230 <match>:
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	56                   	push   %esi
 234:	53                   	push   %ebx
 235:	8b 75 08             	mov    0x8(%ebp),%esi
 238:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  if(re[0] == '^')
 23b:	80 3e 5e             	cmpb   $0x5e,(%esi)
 23e:	75 11                	jne    251 <match+0x21>
 240:	eb 2c                	jmp    26e <match+0x3e>
 242:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  }while(*text++ != '\0');
 248:	83 c3 01             	add    $0x1,%ebx
 24b:	80 7b ff 00          	cmpb   $0x0,-0x1(%ebx)
 24f:	74 16                	je     267 <match+0x37>
    if(matchhere(re, text))
 251:	83 ec 08             	sub    $0x8,%esp
 254:	53                   	push   %ebx
 255:	56                   	push   %esi
 256:	e8 15 ff ff ff       	call   170 <matchhere>
 25b:	83 c4 10             	add    $0x10,%esp
 25e:	85 c0                	test   %eax,%eax
 260:	74 e6                	je     248 <match+0x18>
      return 1;
 262:	b8 01 00 00 00       	mov    $0x1,%eax
}
 267:	8d 65 f8             	lea    -0x8(%ebp),%esp
 26a:	5b                   	pop    %ebx
 26b:	5e                   	pop    %esi
 26c:	5d                   	pop    %ebp
 26d:	c3                   	ret    
    return matchhere(re+1, text);
 26e:	83 c6 01             	add    $0x1,%esi
 271:	89 75 08             	mov    %esi,0x8(%ebp)
}
 274:	8d 65 f8             	lea    -0x8(%ebp),%esp
 277:	5b                   	pop    %ebx
 278:	5e                   	pop    %esi
 279:	5d                   	pop    %ebp
    return matchhere(re+1, text);
 27a:	e9 f1 fe ff ff       	jmp    170 <matchhere>
 27f:	90                   	nop

00000280 <grep>:
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	57                   	push   %edi
 284:	56                   	push   %esi
 285:	53                   	push   %ebx
 286:	83 ec 1c             	sub    $0x1c,%esp
 289:	8b 75 08             	mov    0x8(%ebp),%esi
  m = 0;
 28c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 293:	90                   	nop
 294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf+m, sizeof(buf)-m-1)) > 0){
 298:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 29b:	b8 ff 03 00 00       	mov    $0x3ff,%eax
 2a0:	83 ec 04             	sub    $0x4,%esp
 2a3:	29 c8                	sub    %ecx,%eax
 2a5:	50                   	push   %eax
 2a6:	8d 81 40 0e 00 00    	lea    0xe40(%ecx),%eax
 2ac:	50                   	push   %eax
 2ad:	ff 75 0c             	pushl  0xc(%ebp)
 2b0:	e8 25 03 00 00       	call   5da <read>
 2b5:	83 c4 10             	add    $0x10,%esp
 2b8:	85 c0                	test   %eax,%eax
 2ba:	0f 8e ac 00 00 00    	jle    36c <grep+0xec>
    m += n;
 2c0:	01 45 e4             	add    %eax,-0x1c(%ebp)
    p = buf;
 2c3:	bb 40 0e 00 00       	mov    $0xe40,%ebx
    m += n;
 2c8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    buf[m] = '\0';
 2cb:	c6 82 40 0e 00 00 00 	movb   $0x0,0xe40(%edx)
 2d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    while((q = strchr(p, '\n')) != 0){
 2d8:	83 ec 08             	sub    $0x8,%esp
 2db:	6a 0a                	push   $0xa
 2dd:	53                   	push   %ebx
 2de:	e8 6d 01 00 00       	call   450 <strchr>
 2e3:	83 c4 10             	add    $0x10,%esp
 2e6:	85 c0                	test   %eax,%eax
 2e8:	89 c7                	mov    %eax,%edi
 2ea:	74 3c                	je     328 <grep+0xa8>
      if(match(pattern, p)){
 2ec:	83 ec 08             	sub    $0x8,%esp
      *q = 0;
 2ef:	c6 07 00             	movb   $0x0,(%edi)
      if(match(pattern, p)){
 2f2:	53                   	push   %ebx
 2f3:	56                   	push   %esi
 2f4:	e8 37 ff ff ff       	call   230 <match>
 2f9:	83 c4 10             	add    $0x10,%esp
 2fc:	85 c0                	test   %eax,%eax
 2fe:	75 08                	jne    308 <grep+0x88>
 300:	8d 5f 01             	lea    0x1(%edi),%ebx
 303:	eb d3                	jmp    2d8 <grep+0x58>
 305:	8d 76 00             	lea    0x0(%esi),%esi
        *q = '\n';
 308:	c6 07 0a             	movb   $0xa,(%edi)
        write(1, p, q+1 - p);
 30b:	83 c7 01             	add    $0x1,%edi
 30e:	83 ec 04             	sub    $0x4,%esp
 311:	89 f8                	mov    %edi,%eax
 313:	29 d8                	sub    %ebx,%eax
 315:	50                   	push   %eax
 316:	53                   	push   %ebx
 317:	89 fb                	mov    %edi,%ebx
 319:	6a 01                	push   $0x1
 31b:	e8 c2 02 00 00       	call   5e2 <write>
 320:	83 c4 10             	add    $0x10,%esp
 323:	eb b3                	jmp    2d8 <grep+0x58>
 325:	8d 76 00             	lea    0x0(%esi),%esi
    if(p == buf)
 328:	81 fb 40 0e 00 00    	cmp    $0xe40,%ebx
 32e:	74 30                	je     360 <grep+0xe0>
    if(m > 0){
 330:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 333:	85 c0                	test   %eax,%eax
 335:	0f 8e 5d ff ff ff    	jle    298 <grep+0x18>
      m -= p - buf;
 33b:	89 d8                	mov    %ebx,%eax
      memmove(buf, p, m);
 33d:	83 ec 04             	sub    $0x4,%esp
      m -= p - buf;
 340:	2d 40 0e 00 00       	sub    $0xe40,%eax
 345:	29 45 e4             	sub    %eax,-0x1c(%ebp)
 348:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
      memmove(buf, p, m);
 34b:	51                   	push   %ecx
 34c:	53                   	push   %ebx
 34d:	68 40 0e 00 00       	push   $0xe40
 352:	e8 39 02 00 00       	call   590 <memmove>
 357:	83 c4 10             	add    $0x10,%esp
 35a:	e9 39 ff ff ff       	jmp    298 <grep+0x18>
 35f:	90                   	nop
      m = 0;
 360:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 367:	e9 2c ff ff ff       	jmp    298 <grep+0x18>
}
 36c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 36f:	5b                   	pop    %ebx
 370:	5e                   	pop    %esi
 371:	5f                   	pop    %edi
 372:	5d                   	pop    %ebp
 373:	c3                   	ret    
 374:	66 90                	xchg   %ax,%ax
 376:	66 90                	xchg   %ax,%ax
 378:	66 90                	xchg   %ax,%ax
 37a:	66 90                	xchg   %ax,%ax
 37c:	66 90                	xchg   %ax,%ax
 37e:	66 90                	xchg   %ax,%ax

00000380 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	53                   	push   %ebx
 384:	8b 45 08             	mov    0x8(%ebp),%eax
 387:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 38a:	89 c2                	mov    %eax,%edx
 38c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 390:	83 c1 01             	add    $0x1,%ecx
 393:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 397:	83 c2 01             	add    $0x1,%edx
 39a:	84 db                	test   %bl,%bl
 39c:	88 5a ff             	mov    %bl,-0x1(%edx)
 39f:	75 ef                	jne    390 <strcpy+0x10>
    ;
  return os;
}
 3a1:	5b                   	pop    %ebx
 3a2:	5d                   	pop    %ebp
 3a3:	c3                   	ret    
 3a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000003b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	56                   	push   %esi
 3b4:	53                   	push   %ebx
 3b5:	8b 55 08             	mov    0x8(%ebp),%edx
 3b8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3bb:	0f b6 02             	movzbl (%edx),%eax
 3be:	0f b6 19             	movzbl (%ecx),%ebx
 3c1:	84 c0                	test   %al,%al
 3c3:	75 1e                	jne    3e3 <strcmp+0x33>
 3c5:	eb 29                	jmp    3f0 <strcmp+0x40>
 3c7:	89 f6                	mov    %esi,%esi
 3c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 3d0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 3d3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 3d6:	8d 71 01             	lea    0x1(%ecx),%esi
  while(*p && *p == *q)
 3d9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3dd:	84 c0                	test   %al,%al
 3df:	74 0f                	je     3f0 <strcmp+0x40>
 3e1:	89 f1                	mov    %esi,%ecx
 3e3:	38 d8                	cmp    %bl,%al
 3e5:	74 e9                	je     3d0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 3e7:	29 d8                	sub    %ebx,%eax
}
 3e9:	5b                   	pop    %ebx
 3ea:	5e                   	pop    %esi
 3eb:	5d                   	pop    %ebp
 3ec:	c3                   	ret    
 3ed:	8d 76 00             	lea    0x0(%esi),%esi
  while(*p && *p == *q)
 3f0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 3f2:	29 d8                	sub    %ebx,%eax
}
 3f4:	5b                   	pop    %ebx
 3f5:	5e                   	pop    %esi
 3f6:	5d                   	pop    %ebp
 3f7:	c3                   	ret    
 3f8:	90                   	nop
 3f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000400 <strlen>:

uint
strlen(char *s)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 406:	80 39 00             	cmpb   $0x0,(%ecx)
 409:	74 12                	je     41d <strlen+0x1d>
 40b:	31 d2                	xor    %edx,%edx
 40d:	8d 76 00             	lea    0x0(%esi),%esi
 410:	83 c2 01             	add    $0x1,%edx
 413:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 417:	89 d0                	mov    %edx,%eax
 419:	75 f5                	jne    410 <strlen+0x10>
    ;
  return n;
}
 41b:	5d                   	pop    %ebp
 41c:	c3                   	ret    
  for(n = 0; s[n]; n++)
 41d:	31 c0                	xor    %eax,%eax
}
 41f:	5d                   	pop    %ebp
 420:	c3                   	ret    
 421:	eb 0d                	jmp    430 <memset>
 423:	90                   	nop
 424:	90                   	nop
 425:	90                   	nop
 426:	90                   	nop
 427:	90                   	nop
 428:	90                   	nop
 429:	90                   	nop
 42a:	90                   	nop
 42b:	90                   	nop
 42c:	90                   	nop
 42d:	90                   	nop
 42e:	90                   	nop
 42f:	90                   	nop

00000430 <memset>:

void*
memset(void *dst, int c, uint n)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
 434:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 437:	8b 4d 10             	mov    0x10(%ebp),%ecx
 43a:	8b 45 0c             	mov    0xc(%ebp),%eax
 43d:	89 d7                	mov    %edx,%edi
 43f:	fc                   	cld    
 440:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 442:	89 d0                	mov    %edx,%eax
 444:	5f                   	pop    %edi
 445:	5d                   	pop    %ebp
 446:	c3                   	ret    
 447:	89 f6                	mov    %esi,%esi
 449:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000450 <strchr>:

char*
strchr(const char *s, char c)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	53                   	push   %ebx
 454:	8b 45 08             	mov    0x8(%ebp),%eax
 457:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 45a:	0f b6 10             	movzbl (%eax),%edx
 45d:	84 d2                	test   %dl,%dl
 45f:	74 1d                	je     47e <strchr+0x2e>
    if(*s == c)
 461:	38 d3                	cmp    %dl,%bl
 463:	89 d9                	mov    %ebx,%ecx
 465:	75 0d                	jne    474 <strchr+0x24>
 467:	eb 17                	jmp    480 <strchr+0x30>
 469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 470:	38 ca                	cmp    %cl,%dl
 472:	74 0c                	je     480 <strchr+0x30>
  for(; *s; s++)
 474:	83 c0 01             	add    $0x1,%eax
 477:	0f b6 10             	movzbl (%eax),%edx
 47a:	84 d2                	test   %dl,%dl
 47c:	75 f2                	jne    470 <strchr+0x20>
      return (char*)s;
  return 0;
 47e:	31 c0                	xor    %eax,%eax
}
 480:	5b                   	pop    %ebx
 481:	5d                   	pop    %ebp
 482:	c3                   	ret    
 483:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000490 <gets>:

char*
gets(char *buf, int max)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	56                   	push   %esi
 495:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 496:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 498:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 49b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 49e:	eb 29                	jmp    4c9 <gets+0x39>
    cc = read(0, &c, 1);
 4a0:	83 ec 04             	sub    $0x4,%esp
 4a3:	6a 01                	push   $0x1
 4a5:	57                   	push   %edi
 4a6:	6a 00                	push   $0x0
 4a8:	e8 2d 01 00 00       	call   5da <read>
    if(cc < 1)
 4ad:	83 c4 10             	add    $0x10,%esp
 4b0:	85 c0                	test   %eax,%eax
 4b2:	7e 1d                	jle    4d1 <gets+0x41>
      break;
    buf[i++] = c;
 4b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4b8:	8b 55 08             	mov    0x8(%ebp),%edx
 4bb:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 4bd:	3c 0a                	cmp    $0xa,%al
    buf[i++] = c;
 4bf:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4c3:	74 1b                	je     4e0 <gets+0x50>
 4c5:	3c 0d                	cmp    $0xd,%al
 4c7:	74 17                	je     4e0 <gets+0x50>
  for(i=0; i+1 < max; ){
 4c9:	8d 5e 01             	lea    0x1(%esi),%ebx
 4cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4cf:	7c cf                	jl     4a0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 4d1:	8b 45 08             	mov    0x8(%ebp),%eax
 4d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4db:	5b                   	pop    %ebx
 4dc:	5e                   	pop    %esi
 4dd:	5f                   	pop    %edi
 4de:	5d                   	pop    %ebp
 4df:	c3                   	ret    
  buf[i] = '\0';
 4e0:	8b 45 08             	mov    0x8(%ebp),%eax
  for(i=0; i+1 < max; ){
 4e3:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
 4e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 4e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ec:	5b                   	pop    %ebx
 4ed:	5e                   	pop    %esi
 4ee:	5f                   	pop    %edi
 4ef:	5d                   	pop    %ebp
 4f0:	c3                   	ret    
 4f1:	eb 0d                	jmp    500 <stat>
 4f3:	90                   	nop
 4f4:	90                   	nop
 4f5:	90                   	nop
 4f6:	90                   	nop
 4f7:	90                   	nop
 4f8:	90                   	nop
 4f9:	90                   	nop
 4fa:	90                   	nop
 4fb:	90                   	nop
 4fc:	90                   	nop
 4fd:	90                   	nop
 4fe:	90                   	nop
 4ff:	90                   	nop

00000500 <stat>:

int
stat(char *n, struct stat *st)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	56                   	push   %esi
 504:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 505:	83 ec 08             	sub    $0x8,%esp
 508:	6a 00                	push   $0x0
 50a:	ff 75 08             	pushl  0x8(%ebp)
 50d:	e8 f0 00 00 00       	call   602 <open>
  if(fd < 0)
 512:	83 c4 10             	add    $0x10,%esp
 515:	85 c0                	test   %eax,%eax
 517:	78 27                	js     540 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 519:	83 ec 08             	sub    $0x8,%esp
 51c:	ff 75 0c             	pushl  0xc(%ebp)
 51f:	89 c3                	mov    %eax,%ebx
 521:	50                   	push   %eax
 522:	e8 f3 00 00 00       	call   61a <fstat>
  close(fd);
 527:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 52a:	89 c6                	mov    %eax,%esi
  close(fd);
 52c:	e8 b9 00 00 00       	call   5ea <close>
  return r;
 531:	83 c4 10             	add    $0x10,%esp
}
 534:	8d 65 f8             	lea    -0x8(%ebp),%esp
 537:	89 f0                	mov    %esi,%eax
 539:	5b                   	pop    %ebx
 53a:	5e                   	pop    %esi
 53b:	5d                   	pop    %ebp
 53c:	c3                   	ret    
 53d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 540:	be ff ff ff ff       	mov    $0xffffffff,%esi
 545:	eb ed                	jmp    534 <stat+0x34>
 547:	89 f6                	mov    %esi,%esi
 549:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000550 <atoi>:

int
atoi(const char *s)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	53                   	push   %ebx
 554:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 557:	0f be 11             	movsbl (%ecx),%edx
 55a:	8d 42 d0             	lea    -0x30(%edx),%eax
 55d:	3c 09                	cmp    $0x9,%al
 55f:	b8 00 00 00 00       	mov    $0x0,%eax
 564:	77 1f                	ja     585 <atoi+0x35>
 566:	8d 76 00             	lea    0x0(%esi),%esi
 569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 570:	8d 04 80             	lea    (%eax,%eax,4),%eax
 573:	83 c1 01             	add    $0x1,%ecx
 576:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 57a:	0f be 11             	movsbl (%ecx),%edx
 57d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 580:	80 fb 09             	cmp    $0x9,%bl
 583:	76 eb                	jbe    570 <atoi+0x20>
  return n;
}
 585:	5b                   	pop    %ebx
 586:	5d                   	pop    %ebp
 587:	c3                   	ret    
 588:	90                   	nop
 589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000590 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	56                   	push   %esi
 594:	53                   	push   %ebx
 595:	8b 5d 10             	mov    0x10(%ebp),%ebx
 598:	8b 45 08             	mov    0x8(%ebp),%eax
 59b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 59e:	85 db                	test   %ebx,%ebx
 5a0:	7e 14                	jle    5b6 <memmove+0x26>
 5a2:	31 d2                	xor    %edx,%edx
 5a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 5a8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 5ac:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 5af:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 5b2:	39 da                	cmp    %ebx,%edx
 5b4:	75 f2                	jne    5a8 <memmove+0x18>
  return vdst;
}
 5b6:	5b                   	pop    %ebx
 5b7:	5e                   	pop    %esi
 5b8:	5d                   	pop    %ebp
 5b9:	c3                   	ret    

000005ba <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5ba:	b8 01 00 00 00       	mov    $0x1,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <exit>:
SYSCALL(exit)
 5c2:	b8 02 00 00 00       	mov    $0x2,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <wait>:
SYSCALL(wait)
 5ca:	b8 03 00 00 00       	mov    $0x3,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <pipe>:
SYSCALL(pipe)
 5d2:	b8 04 00 00 00       	mov    $0x4,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <read>:
SYSCALL(read)
 5da:	b8 05 00 00 00       	mov    $0x5,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <write>:
SYSCALL(write)
 5e2:	b8 10 00 00 00       	mov    $0x10,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <close>:
SYSCALL(close)
 5ea:	b8 15 00 00 00       	mov    $0x15,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <kill>:
SYSCALL(kill)
 5f2:	b8 06 00 00 00       	mov    $0x6,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    

000005fa <exec>:
SYSCALL(exec)
 5fa:	b8 07 00 00 00       	mov    $0x7,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <open>:
SYSCALL(open)
 602:	b8 0f 00 00 00       	mov    $0xf,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <mknod>:
SYSCALL(mknod)
 60a:	b8 11 00 00 00       	mov    $0x11,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <unlink>:
SYSCALL(unlink)
 612:	b8 12 00 00 00       	mov    $0x12,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    

0000061a <fstat>:
SYSCALL(fstat)
 61a:	b8 08 00 00 00       	mov    $0x8,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    

00000622 <link>:
SYSCALL(link)
 622:	b8 13 00 00 00       	mov    $0x13,%eax
 627:	cd 40                	int    $0x40
 629:	c3                   	ret    

0000062a <mkdir>:
SYSCALL(mkdir)
 62a:	b8 14 00 00 00       	mov    $0x14,%eax
 62f:	cd 40                	int    $0x40
 631:	c3                   	ret    

00000632 <chdir>:
SYSCALL(chdir)
 632:	b8 09 00 00 00       	mov    $0x9,%eax
 637:	cd 40                	int    $0x40
 639:	c3                   	ret    

0000063a <dup>:
SYSCALL(dup)
 63a:	b8 0a 00 00 00       	mov    $0xa,%eax
 63f:	cd 40                	int    $0x40
 641:	c3                   	ret    

00000642 <getpid>:
SYSCALL(getpid)
 642:	b8 0b 00 00 00       	mov    $0xb,%eax
 647:	cd 40                	int    $0x40
 649:	c3                   	ret    

0000064a <sbrk>:
SYSCALL(sbrk)
 64a:	b8 0c 00 00 00       	mov    $0xc,%eax
 64f:	cd 40                	int    $0x40
 651:	c3                   	ret    

00000652 <sleep>:
SYSCALL(sleep)
 652:	b8 0d 00 00 00       	mov    $0xd,%eax
 657:	cd 40                	int    $0x40
 659:	c3                   	ret    

0000065a <uptime>:
SYSCALL(uptime)
 65a:	b8 0e 00 00 00       	mov    $0xe,%eax
 65f:	cd 40                	int    $0x40
 661:	c3                   	ret    

00000662 <waitpid>:
SYSCALL(waitpid)
 662:	b8 16 00 00 00       	mov    $0x16,%eax
 667:	cd 40                	int    $0x40
 669:	c3                   	ret    
 66a:	66 90                	xchg   %ax,%ax
 66c:	66 90                	xchg   %ax,%ax
 66e:	66 90                	xchg   %ax,%ax

00000670 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	57                   	push   %edi
 674:	56                   	push   %esi
 675:	53                   	push   %ebx
 676:	89 c6                	mov    %eax,%esi
 678:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 67b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 67e:	85 db                	test   %ebx,%ebx
 680:	74 7e                	je     700 <printint+0x90>
 682:	89 d0                	mov    %edx,%eax
 684:	c1 e8 1f             	shr    $0x1f,%eax
 687:	84 c0                	test   %al,%al
 689:	74 75                	je     700 <printint+0x90>
    neg = 1;
    x = -xx;
 68b:	89 d0                	mov    %edx,%eax
    neg = 1;
 68d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 694:	f7 d8                	neg    %eax
 696:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 699:	31 ff                	xor    %edi,%edi
 69b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 69e:	89 ce                	mov    %ecx,%esi
 6a0:	eb 08                	jmp    6aa <printint+0x3a>
 6a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6a8:	89 cf                	mov    %ecx,%edi
 6aa:	31 d2                	xor    %edx,%edx
 6ac:	8d 4f 01             	lea    0x1(%edi),%ecx
 6af:	f7 f6                	div    %esi
 6b1:	0f b6 92 70 0a 00 00 	movzbl 0xa70(%edx),%edx
  }while((x /= base) != 0);
 6b8:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 6ba:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 6bd:	75 e9                	jne    6a8 <printint+0x38>
  if(neg)
 6bf:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 6c2:	8b 75 c0             	mov    -0x40(%ebp),%esi
 6c5:	85 c0                	test   %eax,%eax
 6c7:	74 08                	je     6d1 <printint+0x61>
    buf[i++] = '-';
 6c9:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 6ce:	8d 4f 02             	lea    0x2(%edi),%ecx

  while(--i >= 0)
 6d1:	8d 79 ff             	lea    -0x1(%ecx),%edi
 6d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6d8:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
  write(fd, &c, 1);
 6dd:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
 6e0:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
 6e3:	6a 01                	push   $0x1
 6e5:	53                   	push   %ebx
 6e6:	56                   	push   %esi
 6e7:	88 45 d7             	mov    %al,-0x29(%ebp)
 6ea:	e8 f3 fe ff ff       	call   5e2 <write>
  while(--i >= 0)
 6ef:	83 c4 10             	add    $0x10,%esp
 6f2:	83 ff ff             	cmp    $0xffffffff,%edi
 6f5:	75 e1                	jne    6d8 <printint+0x68>
    putc(fd, buf[i]);
}
 6f7:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6fa:	5b                   	pop    %ebx
 6fb:	5e                   	pop    %esi
 6fc:	5f                   	pop    %edi
 6fd:	5d                   	pop    %ebp
 6fe:	c3                   	ret    
 6ff:	90                   	nop
    x = xx;
 700:	89 d0                	mov    %edx,%eax
  neg = 0;
 702:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 709:	eb 8b                	jmp    696 <printint+0x26>
 70b:	90                   	nop
 70c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000710 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	57                   	push   %edi
 714:	56                   	push   %esi
 715:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 716:	8d 45 10             	lea    0x10(%ebp),%eax
{
 719:	83 ec 2c             	sub    $0x2c,%esp
  for(i = 0; fmt[i]; i++){
 71c:	8b 75 0c             	mov    0xc(%ebp),%esi
{
 71f:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
 722:	89 45 d0             	mov    %eax,-0x30(%ebp)
 725:	0f b6 1e             	movzbl (%esi),%ebx
 728:	83 c6 01             	add    $0x1,%esi
 72b:	84 db                	test   %bl,%bl
 72d:	0f 84 b0 00 00 00    	je     7e3 <printf+0xd3>
 733:	31 d2                	xor    %edx,%edx
 735:	eb 39                	jmp    770 <printf+0x60>
 737:	89 f6                	mov    %esi,%esi
 739:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 740:	83 f8 25             	cmp    $0x25,%eax
 743:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 746:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 74b:	74 18                	je     765 <printf+0x55>
  write(fd, &c, 1);
 74d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 750:	83 ec 04             	sub    $0x4,%esp
 753:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 756:	6a 01                	push   $0x1
 758:	50                   	push   %eax
 759:	57                   	push   %edi
 75a:	e8 83 fe ff ff       	call   5e2 <write>
 75f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 762:	83 c4 10             	add    $0x10,%esp
 765:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 768:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 76c:	84 db                	test   %bl,%bl
 76e:	74 73                	je     7e3 <printf+0xd3>
    if(state == 0){
 770:	85 d2                	test   %edx,%edx
    c = fmt[i] & 0xff;
 772:	0f be cb             	movsbl %bl,%ecx
 775:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 778:	74 c6                	je     740 <printf+0x30>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 77a:	83 fa 25             	cmp    $0x25,%edx
 77d:	75 e6                	jne    765 <printf+0x55>
      if(c == 'd'){
 77f:	83 f8 64             	cmp    $0x64,%eax
 782:	0f 84 f8 00 00 00    	je     880 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 788:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 78e:	83 f9 70             	cmp    $0x70,%ecx
 791:	74 5d                	je     7f0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 793:	83 f8 73             	cmp    $0x73,%eax
 796:	0f 84 84 00 00 00    	je     820 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 79c:	83 f8 63             	cmp    $0x63,%eax
 79f:	0f 84 ea 00 00 00    	je     88f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 7a5:	83 f8 25             	cmp    $0x25,%eax
 7a8:	0f 84 c2 00 00 00    	je     870 <printf+0x160>
  write(fd, &c, 1);
 7ae:	8d 45 e7             	lea    -0x19(%ebp),%eax
 7b1:	83 ec 04             	sub    $0x4,%esp
 7b4:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7b8:	6a 01                	push   $0x1
 7ba:	50                   	push   %eax
 7bb:	57                   	push   %edi
 7bc:	e8 21 fe ff ff       	call   5e2 <write>
 7c1:	83 c4 0c             	add    $0xc,%esp
 7c4:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 7c7:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 7ca:	6a 01                	push   $0x1
 7cc:	50                   	push   %eax
 7cd:	57                   	push   %edi
 7ce:	83 c6 01             	add    $0x1,%esi
 7d1:	e8 0c fe ff ff       	call   5e2 <write>
  for(i = 0; fmt[i]; i++){
 7d6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 7da:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 7dd:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
 7df:	84 db                	test   %bl,%bl
 7e1:	75 8d                	jne    770 <printf+0x60>
    }
  }
}
 7e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7e6:	5b                   	pop    %ebx
 7e7:	5e                   	pop    %esi
 7e8:	5f                   	pop    %edi
 7e9:	5d                   	pop    %ebp
 7ea:	c3                   	ret    
 7eb:	90                   	nop
 7ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 16, 0);
 7f0:	83 ec 0c             	sub    $0xc,%esp
 7f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7f8:	6a 00                	push   $0x0
 7fa:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 7fd:	89 f8                	mov    %edi,%eax
 7ff:	8b 13                	mov    (%ebx),%edx
 801:	e8 6a fe ff ff       	call   670 <printint>
        ap++;
 806:	89 d8                	mov    %ebx,%eax
 808:	83 c4 10             	add    $0x10,%esp
      state = 0;
 80b:	31 d2                	xor    %edx,%edx
        ap++;
 80d:	83 c0 04             	add    $0x4,%eax
 810:	89 45 d0             	mov    %eax,-0x30(%ebp)
 813:	e9 4d ff ff ff       	jmp    765 <printf+0x55>
 818:	90                   	nop
 819:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 820:	8b 45 d0             	mov    -0x30(%ebp),%eax
 823:	8b 18                	mov    (%eax),%ebx
        ap++;
 825:	83 c0 04             	add    $0x4,%eax
 828:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 82b:	85 db                	test   %ebx,%ebx
 82d:	74 7c                	je     8ab <printf+0x19b>
        while(*s != 0){
 82f:	0f b6 03             	movzbl (%ebx),%eax
 832:	84 c0                	test   %al,%al
 834:	74 29                	je     85f <printf+0x14f>
 836:	8d 76 00             	lea    0x0(%esi),%esi
 839:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 840:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 843:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 846:	83 ec 04             	sub    $0x4,%esp
 849:	6a 01                	push   $0x1
          s++;
 84b:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 84e:	50                   	push   %eax
 84f:	57                   	push   %edi
 850:	e8 8d fd ff ff       	call   5e2 <write>
        while(*s != 0){
 855:	0f b6 03             	movzbl (%ebx),%eax
 858:	83 c4 10             	add    $0x10,%esp
 85b:	84 c0                	test   %al,%al
 85d:	75 e1                	jne    840 <printf+0x130>
      state = 0;
 85f:	31 d2                	xor    %edx,%edx
 861:	e9 ff fe ff ff       	jmp    765 <printf+0x55>
 866:	8d 76 00             	lea    0x0(%esi),%esi
 869:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  write(fd, &c, 1);
 870:	83 ec 04             	sub    $0x4,%esp
 873:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 876:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 879:	6a 01                	push   $0x1
 87b:	e9 4c ff ff ff       	jmp    7cc <printf+0xbc>
        printint(fd, *ap, 10, 1);
 880:	83 ec 0c             	sub    $0xc,%esp
 883:	b9 0a 00 00 00       	mov    $0xa,%ecx
 888:	6a 01                	push   $0x1
 88a:	e9 6b ff ff ff       	jmp    7fa <printf+0xea>
        putc(fd, *ap);
 88f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
 892:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 895:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
 897:	6a 01                	push   $0x1
        putc(fd, *ap);
 899:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 89c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 89f:	50                   	push   %eax
 8a0:	57                   	push   %edi
 8a1:	e8 3c fd ff ff       	call   5e2 <write>
 8a6:	e9 5b ff ff ff       	jmp    806 <printf+0xf6>
        while(*s != 0){
 8ab:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
 8b0:	bb 66 0a 00 00       	mov    $0xa66,%ebx
 8b5:	eb 89                	jmp    840 <printf+0x130>
 8b7:	66 90                	xchg   %ax,%ax
 8b9:	66 90                	xchg   %ax,%ax
 8bb:	66 90                	xchg   %ax,%ax
 8bd:	66 90                	xchg   %ax,%ax
 8bf:	90                   	nop

000008c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8c1:	a1 20 0e 00 00       	mov    0xe20,%eax
{
 8c6:	89 e5                	mov    %esp,%ebp
 8c8:	57                   	push   %edi
 8c9:	56                   	push   %esi
 8ca:	53                   	push   %ebx
 8cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8ce:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
 8d0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8d3:	39 c8                	cmp    %ecx,%eax
 8d5:	73 19                	jae    8f0 <free+0x30>
 8d7:	89 f6                	mov    %esi,%esi
 8d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 8e0:	39 d1                	cmp    %edx,%ecx
 8e2:	72 1c                	jb     900 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8e4:	39 d0                	cmp    %edx,%eax
 8e6:	73 18                	jae    900 <free+0x40>
{
 8e8:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8ea:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8ec:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8ee:	72 f0                	jb     8e0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8f0:	39 d0                	cmp    %edx,%eax
 8f2:	72 f4                	jb     8e8 <free+0x28>
 8f4:	39 d1                	cmp    %edx,%ecx
 8f6:	73 f0                	jae    8e8 <free+0x28>
 8f8:	90                   	nop
 8f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 900:	8b 73 fc             	mov    -0x4(%ebx),%esi
 903:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 906:	39 fa                	cmp    %edi,%edx
 908:	74 19                	je     923 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 90a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 90d:	8b 50 04             	mov    0x4(%eax),%edx
 910:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 913:	39 f1                	cmp    %esi,%ecx
 915:	74 23                	je     93a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 917:	89 08                	mov    %ecx,(%eax)
  freep = p;
 919:	a3 20 0e 00 00       	mov    %eax,0xe20
}
 91e:	5b                   	pop    %ebx
 91f:	5e                   	pop    %esi
 920:	5f                   	pop    %edi
 921:	5d                   	pop    %ebp
 922:	c3                   	ret    
    bp->s.size += p->s.ptr->s.size;
 923:	03 72 04             	add    0x4(%edx),%esi
 926:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 929:	8b 10                	mov    (%eax),%edx
 92b:	8b 12                	mov    (%edx),%edx
 92d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 930:	8b 50 04             	mov    0x4(%eax),%edx
 933:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 936:	39 f1                	cmp    %esi,%ecx
 938:	75 dd                	jne    917 <free+0x57>
    p->s.size += bp->s.size;
 93a:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 93d:	a3 20 0e 00 00       	mov    %eax,0xe20
    p->s.size += bp->s.size;
 942:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 945:	8b 53 f8             	mov    -0x8(%ebx),%edx
 948:	89 10                	mov    %edx,(%eax)
}
 94a:	5b                   	pop    %ebx
 94b:	5e                   	pop    %esi
 94c:	5f                   	pop    %edi
 94d:	5d                   	pop    %ebp
 94e:	c3                   	ret    
 94f:	90                   	nop

00000950 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 950:	55                   	push   %ebp
 951:	89 e5                	mov    %esp,%ebp
 953:	57                   	push   %edi
 954:	56                   	push   %esi
 955:	53                   	push   %ebx
 956:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 959:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 95c:	8b 15 20 0e 00 00    	mov    0xe20,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 962:	8d 78 07             	lea    0x7(%eax),%edi
 965:	c1 ef 03             	shr    $0x3,%edi
 968:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 96b:	85 d2                	test   %edx,%edx
 96d:	0f 84 93 00 00 00    	je     a06 <malloc+0xb6>
 973:	8b 02                	mov    (%edx),%eax
 975:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 978:	39 cf                	cmp    %ecx,%edi
 97a:	76 64                	jbe    9e0 <malloc+0x90>
 97c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 982:	bb 00 10 00 00       	mov    $0x1000,%ebx
 987:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 98a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 991:	eb 0e                	jmp    9a1 <malloc+0x51>
 993:	90                   	nop
 994:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 998:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 99a:	8b 48 04             	mov    0x4(%eax),%ecx
 99d:	39 cf                	cmp    %ecx,%edi
 99f:	76 3f                	jbe    9e0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9a1:	39 05 20 0e 00 00    	cmp    %eax,0xe20
 9a7:	89 c2                	mov    %eax,%edx
 9a9:	75 ed                	jne    998 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9ab:	83 ec 0c             	sub    $0xc,%esp
 9ae:	56                   	push   %esi
 9af:	e8 96 fc ff ff       	call   64a <sbrk>
  if(p == (char*)-1)
 9b4:	83 c4 10             	add    $0x10,%esp
 9b7:	83 f8 ff             	cmp    $0xffffffff,%eax
 9ba:	74 1c                	je     9d8 <malloc+0x88>
  hp->s.size = nu;
 9bc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9bf:	83 ec 0c             	sub    $0xc,%esp
 9c2:	83 c0 08             	add    $0x8,%eax
 9c5:	50                   	push   %eax
 9c6:	e8 f5 fe ff ff       	call   8c0 <free>
  return freep;
 9cb:	8b 15 20 0e 00 00    	mov    0xe20,%edx
      if((p = morecore(nunits)) == 0)
 9d1:	83 c4 10             	add    $0x10,%esp
 9d4:	85 d2                	test   %edx,%edx
 9d6:	75 c0                	jne    998 <malloc+0x48>
        return 0;
 9d8:	31 c0                	xor    %eax,%eax
 9da:	eb 1c                	jmp    9f8 <malloc+0xa8>
 9dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
 9e0:	39 cf                	cmp    %ecx,%edi
 9e2:	74 1c                	je     a00 <malloc+0xb0>
        p->s.size -= nunits;
 9e4:	29 f9                	sub    %edi,%ecx
 9e6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9e9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9ec:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 9ef:	89 15 20 0e 00 00    	mov    %edx,0xe20
      return (void*)(p + 1);
 9f5:	83 c0 08             	add    $0x8,%eax
  }
}
 9f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9fb:	5b                   	pop    %ebx
 9fc:	5e                   	pop    %esi
 9fd:	5f                   	pop    %edi
 9fe:	5d                   	pop    %ebp
 9ff:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
 a00:	8b 08                	mov    (%eax),%ecx
 a02:	89 0a                	mov    %ecx,(%edx)
 a04:	eb e9                	jmp    9ef <malloc+0x9f>
    base.s.ptr = freep = prevp = &base;
 a06:	c7 05 20 0e 00 00 24 	movl   $0xe24,0xe20
 a0d:	0e 00 00 
 a10:	c7 05 24 0e 00 00 24 	movl   $0xe24,0xe24
 a17:	0e 00 00 
    base.s.size = 0;
 a1a:	b8 24 0e 00 00       	mov    $0xe24,%eax
 a1f:	c7 05 28 0e 00 00 00 	movl   $0x0,0xe28
 a26:	00 00 00 
 a29:	e9 4e ff ff ff       	jmp    97c <malloc+0x2c>
