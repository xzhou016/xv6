
_forktest:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "fork test OK\n");
}

int
main(void)
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 04             	sub    $0x4,%esp
  forktest();
  11:	e8 4a 00 00 00       	call   60 <forktest>
  exit(0);
  16:	83 ec 0c             	sub    $0xc,%esp
  19:	6a 00                	push   $0x0
  1b:	e8 e2 03 00 00       	call   402 <exit>
}
  20:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  23:	31 c0                	xor    %eax,%eax
  25:	c9                   	leave  
  26:	8d 61 fc             	lea    -0x4(%ecx),%esp
  29:	c3                   	ret    
  2a:	66 90                	xchg   %ax,%ax
  2c:	66 90                	xchg   %ax,%ax
  2e:	66 90                	xchg   %ax,%ax

00000030 <printf>:
{
  30:	55                   	push   %ebp
  31:	89 e5                	mov    %esp,%ebp
  33:	53                   	push   %ebx
  34:	83 ec 10             	sub    $0x10,%esp
  37:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  write(fd, s, strlen(s));
  3a:	53                   	push   %ebx
  3b:	e8 00 02 00 00       	call   240 <strlen>
  40:	83 c4 0c             	add    $0xc,%esp
  43:	50                   	push   %eax
  44:	53                   	push   %ebx
  45:	ff 75 08             	pushl  0x8(%ebp)
  48:	e8 d5 03 00 00       	call   422 <write>
}
  4d:	83 c4 10             	add    $0x10,%esp
  50:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  53:	c9                   	leave  
  54:	c3                   	ret    
  55:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000060 <forktest>:
{
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	56                   	push   %esi
  64:	53                   	push   %ebx
  for(n=0; n<N; n++){
  65:	31 db                	xor    %ebx,%ebx
{
  67:	83 ec 1c             	sub    $0x1c,%esp
  write(fd, s, strlen(s));
  6a:	68 ac 04 00 00       	push   $0x4ac
  6f:	e8 cc 01 00 00       	call   240 <strlen>
  74:	83 c4 0c             	add    $0xc,%esp
  77:	50                   	push   %eax
  78:	68 ac 04 00 00       	push   $0x4ac
  7d:	6a 01                	push   $0x1
  7f:	e8 9e 03 00 00       	call   422 <write>
  84:	83 c4 10             	add    $0x10,%esp
  87:	eb 12                	jmp    9b <forktest+0x3b>
  89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(n=0; n<N; n++){
  90:	83 c3 01             	add    $0x1,%ebx
  93:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  99:	74 23                	je     be <forktest+0x5e>
    pid = fork();
  9b:	e8 5a 03 00 00       	call   3fa <fork>
    if(pid < 0)
  a0:	85 c0                	test   %eax,%eax
  a2:	78 4c                	js     f0 <forktest+0x90>
    if(pid == 0)
  a4:	75 ea                	jne    90 <forktest+0x30>
      exit(0);
  a6:	83 ec 0c             	sub    $0xc,%esp
  for(n=0; n<N; n++){
  a9:	83 c3 01             	add    $0x1,%ebx
      exit(0);
  ac:	6a 00                	push   $0x0
  ae:	e8 4f 03 00 00       	call   402 <exit>
  b3:	83 c4 10             	add    $0x10,%esp
  for(n=0; n<N; n++){
  b6:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  bc:	75 dd                	jne    9b <forktest+0x3b>
  write(fd, s, strlen(s));
  be:	83 ec 0c             	sub    $0xc,%esp
  c1:	68 ec 04 00 00       	push   $0x4ec
  c6:	e8 75 01 00 00       	call   240 <strlen>
  cb:	83 c4 0c             	add    $0xc,%esp
  ce:	50                   	push   %eax
  cf:	68 ec 04 00 00       	push   $0x4ec
  d4:	6a 01                	push   $0x1
  d6:	e8 47 03 00 00       	call   422 <write>
    exit(0);
  db:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  e2:	e8 1b 03 00 00       	call   402 <exit>
  e7:	83 c4 10             	add    $0x10,%esp
  ea:	eb 0b                	jmp    f7 <forktest+0x97>
  ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(; n > 0; n--){
  f0:	85 db                	test   %ebx,%ebx
  f2:	8d 75 f4             	lea    -0xc(%ebp),%esi
  f5:	74 59                	je     150 <forktest+0xf0>
  f7:	8d 75 f4             	lea    -0xc(%ebp),%esi
  fa:	eb 09                	jmp    105 <forktest+0xa5>
  fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 100:	83 eb 01             	sub    $0x1,%ebx
 103:	74 4b                	je     150 <forktest+0xf0>
    if(wait(&child_status) < 0){
 105:	83 ec 0c             	sub    $0xc,%esp
 108:	56                   	push   %esi
 109:	e8 fc 02 00 00       	call   40a <wait>
 10e:	83 c4 10             	add    $0x10,%esp
 111:	85 c0                	test   %eax,%eax
 113:	79 eb                	jns    100 <forktest+0xa0>
  write(fd, s, strlen(s));
 115:	83 ec 0c             	sub    $0xc,%esp
 118:	68 b7 04 00 00       	push   $0x4b7
 11d:	e8 1e 01 00 00       	call   240 <strlen>
 122:	83 c4 0c             	add    $0xc,%esp
 125:	50                   	push   %eax
 126:	68 b7 04 00 00       	push   $0x4b7
 12b:	6a 01                	push   $0x1
 12d:	e8 f0 02 00 00       	call   422 <write>
      exit(0);
 132:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 139:	e8 c4 02 00 00       	call   402 <exit>
 13e:	83 c4 10             	add    $0x10,%esp
  for(; n > 0; n--){
 141:	83 eb 01             	sub    $0x1,%ebx
 144:	75 bf                	jne    105 <forktest+0xa5>
 146:	8d 76 00             	lea    0x0(%esi),%esi
 149:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  if(wait(&child_status) != -1){
 150:	83 ec 0c             	sub    $0xc,%esp
 153:	56                   	push   %esi
 154:	e8 b1 02 00 00       	call   40a <wait>
 159:	83 c4 10             	add    $0x10,%esp
 15c:	83 f8 ff             	cmp    $0xffffffff,%eax
 15f:	74 2c                	je     18d <forktest+0x12d>
  write(fd, s, strlen(s));
 161:	83 ec 0c             	sub    $0xc,%esp
 164:	68 cb 04 00 00       	push   $0x4cb
 169:	e8 d2 00 00 00       	call   240 <strlen>
 16e:	83 c4 0c             	add    $0xc,%esp
 171:	50                   	push   %eax
 172:	68 cb 04 00 00       	push   $0x4cb
 177:	6a 01                	push   $0x1
 179:	e8 a4 02 00 00       	call   422 <write>
    exit(0);
 17e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 185:	e8 78 02 00 00       	call   402 <exit>
 18a:	83 c4 10             	add    $0x10,%esp
  write(fd, s, strlen(s));
 18d:	83 ec 0c             	sub    $0xc,%esp
 190:	68 de 04 00 00       	push   $0x4de
 195:	e8 a6 00 00 00       	call   240 <strlen>
 19a:	83 c4 0c             	add    $0xc,%esp
 19d:	50                   	push   %eax
 19e:	68 de 04 00 00       	push   $0x4de
 1a3:	6a 01                	push   $0x1
 1a5:	e8 78 02 00 00       	call   422 <write>
}
 1aa:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1ad:	5b                   	pop    %ebx
 1ae:	5e                   	pop    %esi
 1af:	5d                   	pop    %ebp
 1b0:	c3                   	ret    
 1b1:	66 90                	xchg   %ax,%ax
 1b3:	66 90                	xchg   %ax,%ax
 1b5:	66 90                	xchg   %ax,%ax
 1b7:	66 90                	xchg   %ax,%ax
 1b9:	66 90                	xchg   %ax,%ax
 1bb:	66 90                	xchg   %ax,%ax
 1bd:	66 90                	xchg   %ax,%ax
 1bf:	90                   	nop

000001c0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	53                   	push   %ebx
 1c4:	8b 45 08             	mov    0x8(%ebp),%eax
 1c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1ca:	89 c2                	mov    %eax,%edx
 1cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1d0:	83 c1 01             	add    $0x1,%ecx
 1d3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 1d7:	83 c2 01             	add    $0x1,%edx
 1da:	84 db                	test   %bl,%bl
 1dc:	88 5a ff             	mov    %bl,-0x1(%edx)
 1df:	75 ef                	jne    1d0 <strcpy+0x10>
    ;
  return os;
}
 1e1:	5b                   	pop    %ebx
 1e2:	5d                   	pop    %ebp
 1e3:	c3                   	ret    
 1e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000001f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	56                   	push   %esi
 1f4:	53                   	push   %ebx
 1f5:	8b 55 08             	mov    0x8(%ebp),%edx
 1f8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1fb:	0f b6 02             	movzbl (%edx),%eax
 1fe:	0f b6 19             	movzbl (%ecx),%ebx
 201:	84 c0                	test   %al,%al
 203:	75 1e                	jne    223 <strcmp+0x33>
 205:	eb 29                	jmp    230 <strcmp+0x40>
 207:	89 f6                	mov    %esi,%esi
 209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 210:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 213:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 216:	8d 71 01             	lea    0x1(%ecx),%esi
  while(*p && *p == *q)
 219:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 21d:	84 c0                	test   %al,%al
 21f:	74 0f                	je     230 <strcmp+0x40>
 221:	89 f1                	mov    %esi,%ecx
 223:	38 d8                	cmp    %bl,%al
 225:	74 e9                	je     210 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 227:	29 d8                	sub    %ebx,%eax
}
 229:	5b                   	pop    %ebx
 22a:	5e                   	pop    %esi
 22b:	5d                   	pop    %ebp
 22c:	c3                   	ret    
 22d:	8d 76 00             	lea    0x0(%esi),%esi
  while(*p && *p == *q)
 230:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 232:	29 d8                	sub    %ebx,%eax
}
 234:	5b                   	pop    %ebx
 235:	5e                   	pop    %esi
 236:	5d                   	pop    %ebp
 237:	c3                   	ret    
 238:	90                   	nop
 239:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000240 <strlen>:

uint
strlen(char *s)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 246:	80 39 00             	cmpb   $0x0,(%ecx)
 249:	74 12                	je     25d <strlen+0x1d>
 24b:	31 d2                	xor    %edx,%edx
 24d:	8d 76 00             	lea    0x0(%esi),%esi
 250:	83 c2 01             	add    $0x1,%edx
 253:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 257:	89 d0                	mov    %edx,%eax
 259:	75 f5                	jne    250 <strlen+0x10>
    ;
  return n;
}
 25b:	5d                   	pop    %ebp
 25c:	c3                   	ret    
  for(n = 0; s[n]; n++)
 25d:	31 c0                	xor    %eax,%eax
}
 25f:	5d                   	pop    %ebp
 260:	c3                   	ret    
 261:	eb 0d                	jmp    270 <memset>
 263:	90                   	nop
 264:	90                   	nop
 265:	90                   	nop
 266:	90                   	nop
 267:	90                   	nop
 268:	90                   	nop
 269:	90                   	nop
 26a:	90                   	nop
 26b:	90                   	nop
 26c:	90                   	nop
 26d:	90                   	nop
 26e:	90                   	nop
 26f:	90                   	nop

00000270 <memset>:

void*
memset(void *dst, int c, uint n)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	57                   	push   %edi
 274:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 277:	8b 4d 10             	mov    0x10(%ebp),%ecx
 27a:	8b 45 0c             	mov    0xc(%ebp),%eax
 27d:	89 d7                	mov    %edx,%edi
 27f:	fc                   	cld    
 280:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 282:	89 d0                	mov    %edx,%eax
 284:	5f                   	pop    %edi
 285:	5d                   	pop    %ebp
 286:	c3                   	ret    
 287:	89 f6                	mov    %esi,%esi
 289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000290 <strchr>:

char*
strchr(const char *s, char c)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	53                   	push   %ebx
 294:	8b 45 08             	mov    0x8(%ebp),%eax
 297:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 29a:	0f b6 10             	movzbl (%eax),%edx
 29d:	84 d2                	test   %dl,%dl
 29f:	74 1d                	je     2be <strchr+0x2e>
    if(*s == c)
 2a1:	38 d3                	cmp    %dl,%bl
 2a3:	89 d9                	mov    %ebx,%ecx
 2a5:	75 0d                	jne    2b4 <strchr+0x24>
 2a7:	eb 17                	jmp    2c0 <strchr+0x30>
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2b0:	38 ca                	cmp    %cl,%dl
 2b2:	74 0c                	je     2c0 <strchr+0x30>
  for(; *s; s++)
 2b4:	83 c0 01             	add    $0x1,%eax
 2b7:	0f b6 10             	movzbl (%eax),%edx
 2ba:	84 d2                	test   %dl,%dl
 2bc:	75 f2                	jne    2b0 <strchr+0x20>
      return (char*)s;
  return 0;
 2be:	31 c0                	xor    %eax,%eax
}
 2c0:	5b                   	pop    %ebx
 2c1:	5d                   	pop    %ebp
 2c2:	c3                   	ret    
 2c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002d0 <gets>:

char*
gets(char *buf, int max)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	57                   	push   %edi
 2d4:	56                   	push   %esi
 2d5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2d6:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 2d8:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 2db:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2de:	eb 29                	jmp    309 <gets+0x39>
    cc = read(0, &c, 1);
 2e0:	83 ec 04             	sub    $0x4,%esp
 2e3:	6a 01                	push   $0x1
 2e5:	57                   	push   %edi
 2e6:	6a 00                	push   $0x0
 2e8:	e8 2d 01 00 00       	call   41a <read>
    if(cc < 1)
 2ed:	83 c4 10             	add    $0x10,%esp
 2f0:	85 c0                	test   %eax,%eax
 2f2:	7e 1d                	jle    311 <gets+0x41>
      break;
    buf[i++] = c;
 2f4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2f8:	8b 55 08             	mov    0x8(%ebp),%edx
 2fb:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 2fd:	3c 0a                	cmp    $0xa,%al
    buf[i++] = c;
 2ff:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 303:	74 1b                	je     320 <gets+0x50>
 305:	3c 0d                	cmp    $0xd,%al
 307:	74 17                	je     320 <gets+0x50>
  for(i=0; i+1 < max; ){
 309:	8d 5e 01             	lea    0x1(%esi),%ebx
 30c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 30f:	7c cf                	jl     2e0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 311:	8b 45 08             	mov    0x8(%ebp),%eax
 314:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 318:	8d 65 f4             	lea    -0xc(%ebp),%esp
 31b:	5b                   	pop    %ebx
 31c:	5e                   	pop    %esi
 31d:	5f                   	pop    %edi
 31e:	5d                   	pop    %ebp
 31f:	c3                   	ret    
  buf[i] = '\0';
 320:	8b 45 08             	mov    0x8(%ebp),%eax
  for(i=0; i+1 < max; ){
 323:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
 325:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 329:	8d 65 f4             	lea    -0xc(%ebp),%esp
 32c:	5b                   	pop    %ebx
 32d:	5e                   	pop    %esi
 32e:	5f                   	pop    %edi
 32f:	5d                   	pop    %ebp
 330:	c3                   	ret    
 331:	eb 0d                	jmp    340 <stat>
 333:	90                   	nop
 334:	90                   	nop
 335:	90                   	nop
 336:	90                   	nop
 337:	90                   	nop
 338:	90                   	nop
 339:	90                   	nop
 33a:	90                   	nop
 33b:	90                   	nop
 33c:	90                   	nop
 33d:	90                   	nop
 33e:	90                   	nop
 33f:	90                   	nop

00000340 <stat>:

int
stat(char *n, struct stat *st)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	56                   	push   %esi
 344:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 345:	83 ec 08             	sub    $0x8,%esp
 348:	6a 00                	push   $0x0
 34a:	ff 75 08             	pushl  0x8(%ebp)
 34d:	e8 f0 00 00 00       	call   442 <open>
  if(fd < 0)
 352:	83 c4 10             	add    $0x10,%esp
 355:	85 c0                	test   %eax,%eax
 357:	78 27                	js     380 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 359:	83 ec 08             	sub    $0x8,%esp
 35c:	ff 75 0c             	pushl  0xc(%ebp)
 35f:	89 c3                	mov    %eax,%ebx
 361:	50                   	push   %eax
 362:	e8 f3 00 00 00       	call   45a <fstat>
  close(fd);
 367:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 36a:	89 c6                	mov    %eax,%esi
  close(fd);
 36c:	e8 b9 00 00 00       	call   42a <close>
  return r;
 371:	83 c4 10             	add    $0x10,%esp
}
 374:	8d 65 f8             	lea    -0x8(%ebp),%esp
 377:	89 f0                	mov    %esi,%eax
 379:	5b                   	pop    %ebx
 37a:	5e                   	pop    %esi
 37b:	5d                   	pop    %ebp
 37c:	c3                   	ret    
 37d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 380:	be ff ff ff ff       	mov    $0xffffffff,%esi
 385:	eb ed                	jmp    374 <stat+0x34>
 387:	89 f6                	mov    %esi,%esi
 389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000390 <atoi>:

int
atoi(const char *s)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	53                   	push   %ebx
 394:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 397:	0f be 11             	movsbl (%ecx),%edx
 39a:	8d 42 d0             	lea    -0x30(%edx),%eax
 39d:	3c 09                	cmp    $0x9,%al
 39f:	b8 00 00 00 00       	mov    $0x0,%eax
 3a4:	77 1f                	ja     3c5 <atoi+0x35>
 3a6:	8d 76 00             	lea    0x0(%esi),%esi
 3a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 3b0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 3b3:	83 c1 01             	add    $0x1,%ecx
 3b6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 3ba:	0f be 11             	movsbl (%ecx),%edx
 3bd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 3c0:	80 fb 09             	cmp    $0x9,%bl
 3c3:	76 eb                	jbe    3b0 <atoi+0x20>
  return n;
}
 3c5:	5b                   	pop    %ebx
 3c6:	5d                   	pop    %ebp
 3c7:	c3                   	ret    
 3c8:	90                   	nop
 3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003d0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	56                   	push   %esi
 3d4:	53                   	push   %ebx
 3d5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 3d8:	8b 45 08             	mov    0x8(%ebp),%eax
 3db:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3de:	85 db                	test   %ebx,%ebx
 3e0:	7e 14                	jle    3f6 <memmove+0x26>
 3e2:	31 d2                	xor    %edx,%edx
 3e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 3e8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 3ec:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 3ef:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 3f2:	39 da                	cmp    %ebx,%edx
 3f4:	75 f2                	jne    3e8 <memmove+0x18>
  return vdst;
}
 3f6:	5b                   	pop    %ebx
 3f7:	5e                   	pop    %esi
 3f8:	5d                   	pop    %ebp
 3f9:	c3                   	ret    

000003fa <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3fa:	b8 01 00 00 00       	mov    $0x1,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <exit>:
SYSCALL(exit)
 402:	b8 02 00 00 00       	mov    $0x2,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <wait>:
SYSCALL(wait)
 40a:	b8 03 00 00 00       	mov    $0x3,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <pipe>:
SYSCALL(pipe)
 412:	b8 04 00 00 00       	mov    $0x4,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <read>:
SYSCALL(read)
 41a:	b8 05 00 00 00       	mov    $0x5,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <write>:
SYSCALL(write)
 422:	b8 10 00 00 00       	mov    $0x10,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <close>:
SYSCALL(close)
 42a:	b8 15 00 00 00       	mov    $0x15,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <kill>:
SYSCALL(kill)
 432:	b8 06 00 00 00       	mov    $0x6,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <exec>:
SYSCALL(exec)
 43a:	b8 07 00 00 00       	mov    $0x7,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <open>:
SYSCALL(open)
 442:	b8 0f 00 00 00       	mov    $0xf,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <mknod>:
SYSCALL(mknod)
 44a:	b8 11 00 00 00       	mov    $0x11,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <unlink>:
SYSCALL(unlink)
 452:	b8 12 00 00 00       	mov    $0x12,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <fstat>:
SYSCALL(fstat)
 45a:	b8 08 00 00 00       	mov    $0x8,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <link>:
SYSCALL(link)
 462:	b8 13 00 00 00       	mov    $0x13,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    

0000046a <mkdir>:
SYSCALL(mkdir)
 46a:	b8 14 00 00 00       	mov    $0x14,%eax
 46f:	cd 40                	int    $0x40
 471:	c3                   	ret    

00000472 <chdir>:
SYSCALL(chdir)
 472:	b8 09 00 00 00       	mov    $0x9,%eax
 477:	cd 40                	int    $0x40
 479:	c3                   	ret    

0000047a <dup>:
SYSCALL(dup)
 47a:	b8 0a 00 00 00       	mov    $0xa,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    

00000482 <getpid>:
SYSCALL(getpid)
 482:	b8 0b 00 00 00       	mov    $0xb,%eax
 487:	cd 40                	int    $0x40
 489:	c3                   	ret    

0000048a <sbrk>:
SYSCALL(sbrk)
 48a:	b8 0c 00 00 00       	mov    $0xc,%eax
 48f:	cd 40                	int    $0x40
 491:	c3                   	ret    

00000492 <sleep>:
SYSCALL(sleep)
 492:	b8 0d 00 00 00       	mov    $0xd,%eax
 497:	cd 40                	int    $0x40
 499:	c3                   	ret    

0000049a <uptime>:
SYSCALL(uptime)
 49a:	b8 0e 00 00 00       	mov    $0xe,%eax
 49f:	cd 40                	int    $0x40
 4a1:	c3                   	ret    

000004a2 <waitpid>:
SYSCALL(waitpid)
 4a2:	b8 16 00 00 00       	mov    $0x16,%eax
 4a7:	cd 40                	int    $0x40
 4a9:	c3                   	ret    
