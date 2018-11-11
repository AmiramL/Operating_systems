
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}


int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
  static char buf[100];
  int fd;
  for (int h = 0 ; h < 10; h++)
       7:	31 c0                	xor    %eax,%eax
{
       9:	ff 71 fc             	pushl  -0x4(%ecx)
       c:	55                   	push   %ebp
       d:	89 e5                	mov    %esp,%ebp
       f:	51                   	push   %ecx
      10:	83 ec 04             	sub    $0x4,%esp
      13:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      17:	90                   	nop
	  g_path[h] = ":";
      18:	c7 04 85 00 1a 00 00 	movl   $0x1349,0x1a00(,%eax,4)
      1f:	49 13 00 00 
  for (int h = 0 ; h < 10; h++)
      23:	83 c0 01             	add    $0x1,%eax
      26:	83 f8 0a             	cmp    $0xa,%eax
      29:	75 ed                	jne    18 <main+0x18>
  g_path[0] = "/";
      2b:	c7 05 00 1a 00 00 4b 	movl   $0x134b,0x1a00
      32:	13 00 00 

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      35:	eb 12                	jmp    49 <main+0x49>
      37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      3e:	66 90                	xchg   %ax,%ax
    if(fd >= 3){
      40:	83 f8 02             	cmp    $0x2,%eax
      43:	0f 8f b7 00 00 00    	jg     100 <main+0x100>
  while((fd = open("console", O_RDWR)) >= 0){
      49:	83 ec 08             	sub    $0x8,%esp
      4c:	6a 02                	push   $0x2
      4e:	68 4d 13 00 00       	push   $0x134d
      53:	e8 b9 0d 00 00       	call   e11 <open>
      58:	83 c4 10             	add    $0x10,%esp
      5b:	85 c0                	test   %eax,%eax
      5d:	79 e1                	jns    40 <main+0x40>
      5f:	eb 32                	jmp    93 <main+0x93>
      61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      68:	80 3d 82 19 00 00 20 	cmpb   $0x20,0x1982
      6f:	74 51                	je     c2 <main+0xc2>
      71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      78:	e8 4c 0d 00 00       	call   dc9 <fork>
  if(pid == -1)
      7d:	83 f8 ff             	cmp    $0xffffffff,%eax
      80:	0f 84 9d 00 00 00    	je     123 <main+0x123>
    if(fork1() == 0)
      86:	85 c0                	test   %eax,%eax
      88:	0f 84 80 00 00 00    	je     10e <main+0x10e>
    wait();
      8e:	e8 46 0d 00 00       	call   dd9 <wait>
  while(getcmd(buf, sizeof(buf)) >= 0){
      93:	83 ec 08             	sub    $0x8,%esp
      96:	6a 64                	push   $0x64
      98:	68 80 19 00 00       	push   $0x1980
      9d:	e8 8e 00 00 00       	call   130 <getcmd>
      a2:	83 c4 10             	add    $0x10,%esp
      a5:	85 c0                	test   %eax,%eax
      a7:	78 14                	js     bd <main+0xbd>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      a9:	80 3d 80 19 00 00 63 	cmpb   $0x63,0x1980
      b0:	75 c6                	jne    78 <main+0x78>
      b2:	80 3d 81 19 00 00 64 	cmpb   $0x64,0x1981
      b9:	75 bd                	jne    78 <main+0x78>
      bb:	eb ab                	jmp    68 <main+0x68>
  exit();
      bd:	e8 0f 0d 00 00       	call   dd1 <exit>
      buf[strlen(buf)-1] = 0;  // chop \n
      c2:	83 ec 0c             	sub    $0xc,%esp
      c5:	68 80 19 00 00       	push   $0x1980
      ca:	e8 31 0b 00 00       	call   c00 <strlen>
      if(chdir(buf+3) < 0)
      cf:	c7 04 24 83 19 00 00 	movl   $0x1983,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
      d6:	c6 80 7f 19 00 00 00 	movb   $0x0,0x197f(%eax)
      if(chdir(buf+3) < 0)
      dd:	e8 5f 0d 00 00       	call   e41 <chdir>
      e2:	83 c4 10             	add    $0x10,%esp
      e5:	85 c0                	test   %eax,%eax
      e7:	79 aa                	jns    93 <main+0x93>
        printf(2, "cannot cd %s\n", buf+3);
      e9:	50                   	push   %eax
      ea:	68 83 19 00 00       	push   $0x1983
      ef:	68 55 13 00 00       	push   $0x1355
      f4:	6a 02                	push   $0x2
      f6:	e8 45 0e 00 00       	call   f40 <printf>
      fb:	83 c4 10             	add    $0x10,%esp
      fe:	eb 93                	jmp    93 <main+0x93>
      close(fd);
     100:	83 ec 0c             	sub    $0xc,%esp
     103:	50                   	push   %eax
     104:	e8 f0 0c 00 00       	call   df9 <close>
      break;
     109:	83 c4 10             	add    $0x10,%esp
     10c:	eb 85                	jmp    93 <main+0x93>
      runcmd(parsecmd(buf));
     10e:	83 ec 0c             	sub    $0xc,%esp
     111:	68 80 19 00 00       	push   $0x1980
     116:	e8 f5 09 00 00       	call   b10 <parsecmd>
     11b:	89 04 24             	mov    %eax,(%esp)
     11e:	e8 7d 00 00 00       	call   1a0 <runcmd>
    panic("fork");
     123:	83 ec 0c             	sub    $0xc,%esp
     126:	68 d2 12 00 00       	push   $0x12d2
     12b:	e8 50 00 00 00       	call   180 <panic>

00000130 <getcmd>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	56                   	push   %esi
     134:	53                   	push   %ebx
     135:	8b 75 0c             	mov    0xc(%ebp),%esi
     138:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
     13b:	83 ec 08             	sub    $0x8,%esp
     13e:	68 a8 12 00 00       	push   $0x12a8
     143:	6a 02                	push   $0x2
     145:	e8 f6 0d 00 00       	call   f40 <printf>
  memset(buf, 0, nbuf);
     14a:	83 c4 0c             	add    $0xc,%esp
     14d:	56                   	push   %esi
     14e:	6a 00                	push   $0x0
     150:	53                   	push   %ebx
     151:	e8 da 0a 00 00       	call   c30 <memset>
  gets(buf, nbuf);
     156:	58                   	pop    %eax
     157:	5a                   	pop    %edx
     158:	56                   	push   %esi
     159:	53                   	push   %ebx
     15a:	e8 31 0b 00 00       	call   c90 <gets>
  if(buf[0] == 0) // EOF
     15f:	83 c4 10             	add    $0x10,%esp
     162:	31 c0                	xor    %eax,%eax
     164:	80 3b 00             	cmpb   $0x0,(%ebx)
     167:	0f 94 c0             	sete   %al
}
     16a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     16d:	5b                   	pop    %ebx
  if(buf[0] == 0) // EOF
     16e:	f7 d8                	neg    %eax
}
     170:	5e                   	pop    %esi
     171:	5d                   	pop    %ebp
     172:	c3                   	ret    
     173:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     17a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000180 <panic>:
{
     180:	55                   	push   %ebp
     181:	89 e5                	mov    %esp,%ebp
     183:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     186:	ff 75 08             	pushl  0x8(%ebp)
     189:	68 45 13 00 00       	push   $0x1345
     18e:	6a 02                	push   $0x2
     190:	e8 ab 0d 00 00       	call   f40 <printf>
  exit();
     195:	e8 37 0c 00 00       	call   dd1 <exit>
     19a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000001a0 <runcmd>:
{
     1a0:	55                   	push   %ebp
     1a1:	89 e5                	mov    %esp,%ebp
     1a3:	57                   	push   %edi
     1a4:	56                   	push   %esi
     1a5:	53                   	push   %ebx
     1a6:	83 ec 2c             	sub    $0x2c,%esp
     1a9:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     1ac:	85 db                	test   %ebx,%ebx
     1ae:	0f 84 7c 00 00 00    	je     230 <runcmd+0x90>
  switch(cmd->type){
     1b4:	83 3b 05             	cmpl   $0x5,(%ebx)
     1b7:	0f 87 5a 01 00 00    	ja     317 <runcmd+0x177>
     1bd:	8b 03                	mov    (%ebx),%eax
     1bf:	ff 24 85 64 13 00 00 	jmp    *0x1364(,%eax,4)
    if(pipe(p) < 0)
     1c6:	83 ec 0c             	sub    $0xc,%esp
     1c9:	8d 45 e0             	lea    -0x20(%ebp),%eax
     1cc:	50                   	push   %eax
     1cd:	e8 0f 0c 00 00       	call   de1 <pipe>
     1d2:	83 c4 10             	add    $0x10,%esp
     1d5:	85 c0                	test   %eax,%eax
     1d7:	0f 88 47 01 00 00    	js     324 <runcmd+0x184>
  pid = fork();
     1dd:	e8 e7 0b 00 00       	call   dc9 <fork>
  if(pid == -1)
     1e2:	83 f8 ff             	cmp    $0xffffffff,%eax
     1e5:	0f 84 ca 01 00 00    	je     3b5 <runcmd+0x215>
    if(fork1() == 0){
     1eb:	85 c0                	test   %eax,%eax
     1ed:	0f 84 94 01 00 00    	je     387 <runcmd+0x1e7>
  pid = fork();
     1f3:	e8 d1 0b 00 00       	call   dc9 <fork>
  if(pid == -1)
     1f8:	83 f8 ff             	cmp    $0xffffffff,%eax
     1fb:	0f 84 b4 01 00 00    	je     3b5 <runcmd+0x215>
    if(fork1() == 0){
     201:	85 c0                	test   %eax,%eax
     203:	0f 84 50 01 00 00    	je     359 <runcmd+0x1b9>
    close(p[0]);
     209:	83 ec 0c             	sub    $0xc,%esp
     20c:	ff 75 e0             	pushl  -0x20(%ebp)
     20f:	e8 e5 0b 00 00       	call   df9 <close>
    close(p[1]);
     214:	58                   	pop    %eax
     215:	ff 75 e4             	pushl  -0x1c(%ebp)
     218:	e8 dc 0b 00 00       	call   df9 <close>
    wait();
     21d:	e8 b7 0b 00 00       	call   dd9 <wait>
    wait();
     222:	e8 b2 0b 00 00       	call   dd9 <wait>
    break;
     227:	83 c4 10             	add    $0x10,%esp
     22a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
     230:	e8 9c 0b 00 00       	call   dd1 <exit>
  pid = fork();
     235:	e8 8f 0b 00 00       	call   dc9 <fork>
  if(pid == -1)
     23a:	83 f8 ff             	cmp    $0xffffffff,%eax
     23d:	0f 84 72 01 00 00    	je     3b5 <runcmd+0x215>
    if(fork1() == 0)
     243:	85 c0                	test   %eax,%eax
     245:	75 e9                	jne    230 <runcmd+0x90>
     247:	e9 9e 00 00 00       	jmp    2ea <runcmd+0x14a>
    if(ecmd->argv[0] == 0)
     24c:	8b 43 04             	mov    0x4(%ebx),%eax
     24f:	85 c0                	test   %eax,%eax
     251:	74 dd                	je     230 <runcmd+0x90>
    if (*ecmd->argv[0] != '/')
     253:	8d 53 04             	lea    0x4(%ebx),%edx
     256:	80 38 2f             	cmpb   $0x2f,(%eax)
     259:	89 55 d0             	mov    %edx,-0x30(%ebp)
     25c:	0f 84 e4 00 00 00    	je     346 <runcmd+0x1a6>
    	int exec_res = exec(ecmd->argv[0], ecmd->argv);
     262:	51                   	push   %ecx
    	for (int i = 0 ; i < 10 ; i++)
     263:	31 ff                	xor    %edi,%edi
    	int exec_res = exec(ecmd->argv[0], ecmd->argv);
     265:	51                   	push   %ecx
     266:	52                   	push   %edx
     267:	50                   	push   %eax
     268:	e8 9c 0b 00 00       	call   e09 <exec>
     26d:	83 c4 10             	add    $0x10,%esp
	    if (*g_path[i] == ':')
     270:	8b 34 bd 00 1a 00 00 	mov    0x1a00(,%edi,4),%esi
     277:	8b 4b 04             	mov    0x4(%ebx),%ecx
     27a:	80 3e 3a             	cmpb   $0x3a,(%esi)
     27d:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
     280:	74 31                	je     2b3 <runcmd+0x113>
	    strcpy(&tmp[strlen(tmp)], ecmd->argv[0]);
     282:	83 ec 0c             	sub    $0xc,%esp
     285:	56                   	push   %esi
     286:	e8 75 09 00 00       	call   c00 <strlen>
     28b:	5a                   	pop    %edx
     28c:	59                   	pop    %ecx
     28d:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     290:	01 f0                	add    %esi,%eax
     292:	51                   	push   %ecx
     293:	50                   	push   %eax
     294:	e8 e7 08 00 00       	call   b80 <strcpy>
	    exec_res = exec(tmp, ecmd->argv);
     299:	58                   	pop    %eax
     29a:	5a                   	pop    %edx
     29b:	ff 75 d0             	pushl  -0x30(%ebp)
     29e:	56                   	push   %esi
     29f:	e8 65 0b 00 00       	call   e09 <exec>
	    if (exec_res == 0)
     2a4:	83 c4 10             	add    $0x10,%esp
     2a7:	85 c0                	test   %eax,%eax
     2a9:	74 08                	je     2b3 <runcmd+0x113>
    	for (int i = 0 ; i < 10 ; i++)
     2ab:	83 c7 01             	add    $0x1,%edi
     2ae:	83 ff 0a             	cmp    $0xa,%edi
     2b1:	75 bd                	jne    270 <runcmd+0xd0>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     2b3:	51                   	push   %ecx
     2b4:	ff 73 04             	pushl  0x4(%ebx)
     2b7:	68 b2 12 00 00       	push   $0x12b2
     2bc:	6a 02                	push   $0x2
     2be:	e8 7d 0c 00 00       	call   f40 <printf>
    break;
     2c3:	83 c4 10             	add    $0x10,%esp
     2c6:	e9 65 ff ff ff       	jmp    230 <runcmd+0x90>
    close(rcmd->fd);
     2cb:	83 ec 0c             	sub    $0xc,%esp
     2ce:	ff 73 14             	pushl  0x14(%ebx)
     2d1:	e8 23 0b 00 00       	call   df9 <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     2d6:	58                   	pop    %eax
     2d7:	5a                   	pop    %edx
     2d8:	ff 73 10             	pushl  0x10(%ebx)
     2db:	ff 73 08             	pushl  0x8(%ebx)
     2de:	e8 2e 0b 00 00       	call   e11 <open>
     2e3:	83 c4 10             	add    $0x10,%esp
     2e6:	85 c0                	test   %eax,%eax
     2e8:	78 47                	js     331 <runcmd+0x191>
      runcmd(bcmd->cmd);
     2ea:	83 ec 0c             	sub    $0xc,%esp
     2ed:	ff 73 04             	pushl  0x4(%ebx)
     2f0:	e8 ab fe ff ff       	call   1a0 <runcmd>
  pid = fork();
     2f5:	e8 cf 0a 00 00       	call   dc9 <fork>
  if(pid == -1)
     2fa:	83 f8 ff             	cmp    $0xffffffff,%eax
     2fd:	0f 84 b2 00 00 00    	je     3b5 <runcmd+0x215>
    if(fork1() == 0)
     303:	85 c0                	test   %eax,%eax
     305:	74 e3                	je     2ea <runcmd+0x14a>
    wait();
     307:	e8 cd 0a 00 00       	call   dd9 <wait>
    runcmd(lcmd->right);
     30c:	83 ec 0c             	sub    $0xc,%esp
     30f:	ff 73 08             	pushl  0x8(%ebx)
     312:	e8 89 fe ff ff       	call   1a0 <runcmd>
    panic("runcmd");
     317:	83 ec 0c             	sub    $0xc,%esp
     31a:	68 ab 12 00 00       	push   $0x12ab
     31f:	e8 5c fe ff ff       	call   180 <panic>
      panic("pipe");
     324:	83 ec 0c             	sub    $0xc,%esp
     327:	68 d7 12 00 00       	push   $0x12d7
     32c:	e8 4f fe ff ff       	call   180 <panic>
      printf(2, "open %s failed\n", rcmd->file);
     331:	50                   	push   %eax
     332:	ff 73 08             	pushl  0x8(%ebx)
     335:	68 c2 12 00 00       	push   $0x12c2
     33a:	6a 02                	push   $0x2
     33c:	e8 ff 0b 00 00       	call   f40 <printf>
      exit();
     341:	e8 8b 0a 00 00       	call   dd1 <exit>
	exec(ecmd->argv[0], ecmd->argv);
     346:	56                   	push   %esi
     347:	56                   	push   %esi
     348:	ff 75 d0             	pushl  -0x30(%ebp)
     34b:	50                   	push   %eax
     34c:	e8 b8 0a 00 00       	call   e09 <exec>
     351:	83 c4 10             	add    $0x10,%esp
     354:	e9 5a ff ff ff       	jmp    2b3 <runcmd+0x113>
      close(0);
     359:	83 ec 0c             	sub    $0xc,%esp
     35c:	6a 00                	push   $0x0
     35e:	e8 96 0a 00 00       	call   df9 <close>
      dup(p[0]);
     363:	5a                   	pop    %edx
     364:	ff 75 e0             	pushl  -0x20(%ebp)
     367:	e8 dd 0a 00 00       	call   e49 <dup>
      close(p[0]);
     36c:	59                   	pop    %ecx
     36d:	ff 75 e0             	pushl  -0x20(%ebp)
     370:	e8 84 0a 00 00       	call   df9 <close>
      close(p[1]);
     375:	5e                   	pop    %esi
     376:	ff 75 e4             	pushl  -0x1c(%ebp)
     379:	e8 7b 0a 00 00       	call   df9 <close>
      runcmd(pcmd->right);
     37e:	5f                   	pop    %edi
     37f:	ff 73 08             	pushl  0x8(%ebx)
     382:	e8 19 fe ff ff       	call   1a0 <runcmd>
      close(1);
     387:	83 ec 0c             	sub    $0xc,%esp
     38a:	6a 01                	push   $0x1
     38c:	e8 68 0a 00 00       	call   df9 <close>
      dup(p[1]);
     391:	58                   	pop    %eax
     392:	ff 75 e4             	pushl  -0x1c(%ebp)
     395:	e8 af 0a 00 00       	call   e49 <dup>
      close(p[0]);
     39a:	58                   	pop    %eax
     39b:	ff 75 e0             	pushl  -0x20(%ebp)
     39e:	e8 56 0a 00 00       	call   df9 <close>
      close(p[1]);
     3a3:	58                   	pop    %eax
     3a4:	ff 75 e4             	pushl  -0x1c(%ebp)
     3a7:	e8 4d 0a 00 00       	call   df9 <close>
      runcmd(pcmd->left);
     3ac:	58                   	pop    %eax
     3ad:	ff 73 04             	pushl  0x4(%ebx)
     3b0:	e8 eb fd ff ff       	call   1a0 <runcmd>
    panic("fork");
     3b5:	83 ec 0c             	sub    $0xc,%esp
     3b8:	68 d2 12 00 00       	push   $0x12d2
     3bd:	e8 be fd ff ff       	call   180 <panic>
     3c2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003d0 <fork1>:
{
     3d0:	55                   	push   %ebp
     3d1:	89 e5                	mov    %esp,%ebp
     3d3:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     3d6:	e8 ee 09 00 00       	call   dc9 <fork>
  if(pid == -1)
     3db:	83 f8 ff             	cmp    $0xffffffff,%eax
     3de:	74 02                	je     3e2 <fork1+0x12>
  return pid;
}
     3e0:	c9                   	leave  
     3e1:	c3                   	ret    
    panic("fork");
     3e2:	83 ec 0c             	sub    $0xc,%esp
     3e5:	68 d2 12 00 00       	push   $0x12d2
     3ea:	e8 91 fd ff ff       	call   180 <panic>
     3ef:	90                   	nop

000003f0 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	53                   	push   %ebx
     3f4:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3f7:	6a 54                	push   $0x54
     3f9:	e8 a2 0d 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3fe:	83 c4 0c             	add    $0xc,%esp
     401:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
     403:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     405:	6a 00                	push   $0x0
     407:	50                   	push   %eax
     408:	e8 23 08 00 00       	call   c30 <memset>
  cmd->type = EXEC;
     40d:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     413:	89 d8                	mov    %ebx,%eax
     415:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     418:	c9                   	leave  
     419:	c3                   	ret    
     41a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000420 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     420:	55                   	push   %ebp
     421:	89 e5                	mov    %esp,%ebp
     423:	53                   	push   %ebx
     424:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     427:	6a 18                	push   $0x18
     429:	e8 72 0d 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     42e:	83 c4 0c             	add    $0xc,%esp
     431:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     433:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     435:	6a 00                	push   $0x0
     437:	50                   	push   %eax
     438:	e8 f3 07 00 00       	call   c30 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     43d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     440:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     446:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     449:	8b 45 0c             	mov    0xc(%ebp),%eax
     44c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     44f:	8b 45 10             	mov    0x10(%ebp),%eax
     452:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     455:	8b 45 14             	mov    0x14(%ebp),%eax
     458:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     45b:	8b 45 18             	mov    0x18(%ebp),%eax
     45e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     461:	89 d8                	mov    %ebx,%eax
     463:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     466:	c9                   	leave  
     467:	c3                   	ret    
     468:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     46f:	90                   	nop

00000470 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     470:	55                   	push   %ebp
     471:	89 e5                	mov    %esp,%ebp
     473:	53                   	push   %ebx
     474:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     477:	6a 0c                	push   $0xc
     479:	e8 22 0d 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     47e:	83 c4 0c             	add    $0xc,%esp
     481:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     483:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     485:	6a 00                	push   $0x0
     487:	50                   	push   %eax
     488:	e8 a3 07 00 00       	call   c30 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     48d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     490:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     496:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     499:	8b 45 0c             	mov    0xc(%ebp),%eax
     49c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     49f:	89 d8                	mov    %ebx,%eax
     4a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     4a4:	c9                   	leave  
     4a5:	c3                   	ret    
     4a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     4ad:	8d 76 00             	lea    0x0(%esi),%esi

000004b0 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     4b0:	55                   	push   %ebp
     4b1:	89 e5                	mov    %esp,%ebp
     4b3:	53                   	push   %ebx
     4b4:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4b7:	6a 0c                	push   $0xc
     4b9:	e8 e2 0c 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4be:	83 c4 0c             	add    $0xc,%esp
     4c1:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     4c3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     4c5:	6a 00                	push   $0x0
     4c7:	50                   	push   %eax
     4c8:	e8 63 07 00 00       	call   c30 <memset>
  cmd->type = LIST;
  cmd->left = left;
     4cd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     4d0:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     4d6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     4d9:	8b 45 0c             	mov    0xc(%ebp),%eax
     4dc:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     4df:	89 d8                	mov    %ebx,%eax
     4e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     4e4:	c9                   	leave  
     4e5:	c3                   	ret    
     4e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     4ed:	8d 76 00             	lea    0x0(%esi),%esi

000004f0 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     4f0:	55                   	push   %ebp
     4f1:	89 e5                	mov    %esp,%ebp
     4f3:	53                   	push   %ebx
     4f4:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     4f7:	6a 08                	push   $0x8
     4f9:	e8 a2 0c 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     4fe:	83 c4 0c             	add    $0xc,%esp
     501:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
     503:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     505:	6a 00                	push   $0x0
     507:	50                   	push   %eax
     508:	e8 23 07 00 00       	call   c30 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     50d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     510:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     516:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     519:	89 d8                	mov    %ebx,%eax
     51b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     51e:	c9                   	leave  
     51f:	c3                   	ret    

00000520 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     520:	55                   	push   %ebp
     521:	89 e5                	mov    %esp,%ebp
     523:	57                   	push   %edi
     524:	56                   	push   %esi
     525:	53                   	push   %ebx
     526:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     529:	8b 45 08             	mov    0x8(%ebp),%eax
{
     52c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     52f:	8b 7d 10             	mov    0x10(%ebp),%edi
  s = *ps;
     532:	8b 30                	mov    (%eax),%esi
  while(s < es && strchr(whitespace, *s))
     534:	39 de                	cmp    %ebx,%esi
     536:	72 0f                	jb     547 <gettoken+0x27>
     538:	eb 25                	jmp    55f <gettoken+0x3f>
     53a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     540:	83 c6 01             	add    $0x1,%esi
  while(s < es && strchr(whitespace, *s))
     543:	39 f3                	cmp    %esi,%ebx
     545:	74 18                	je     55f <gettoken+0x3f>
     547:	0f be 06             	movsbl (%esi),%eax
     54a:	83 ec 08             	sub    $0x8,%esp
     54d:	50                   	push   %eax
     54e:	68 78 19 00 00       	push   $0x1978
     553:	e8 f8 06 00 00       	call   c50 <strchr>
     558:	83 c4 10             	add    $0x10,%esp
     55b:	85 c0                	test   %eax,%eax
     55d:	75 e1                	jne    540 <gettoken+0x20>
  if(q)
     55f:	85 ff                	test   %edi,%edi
     561:	74 02                	je     565 <gettoken+0x45>
    *q = s;
     563:	89 37                	mov    %esi,(%edi)
  ret = *s;
     565:	0f be 06             	movsbl (%esi),%eax
  switch(*s){
     568:	3c 29                	cmp    $0x29,%al
     56a:	0f 8f b8 00 00 00    	jg     628 <gettoken+0x108>
     570:	3c 28                	cmp    $0x28,%al
     572:	0f 8d de 00 00 00    	jge    656 <gettoken+0x136>
  ret = *s;
     578:	31 ff                	xor    %edi,%edi
     57a:	84 c0                	test   %al,%al
     57c:	75 42                	jne    5c0 <gettoken+0xa0>
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     57e:	8b 55 14             	mov    0x14(%ebp),%edx
     581:	85 d2                	test   %edx,%edx
     583:	74 05                	je     58a <gettoken+0x6a>
    *eq = s;
     585:	8b 45 14             	mov    0x14(%ebp),%eax
     588:	89 30                	mov    %esi,(%eax)

  while(s < es && strchr(whitespace, *s))
     58a:	39 de                	cmp    %ebx,%esi
     58c:	72 09                	jb     597 <gettoken+0x77>
     58e:	eb 1f                	jmp    5af <gettoken+0x8f>
    s++;
     590:	83 c6 01             	add    $0x1,%esi
  while(s < es && strchr(whitespace, *s))
     593:	39 f3                	cmp    %esi,%ebx
     595:	74 18                	je     5af <gettoken+0x8f>
     597:	0f be 06             	movsbl (%esi),%eax
     59a:	83 ec 08             	sub    $0x8,%esp
     59d:	50                   	push   %eax
     59e:	68 78 19 00 00       	push   $0x1978
     5a3:	e8 a8 06 00 00       	call   c50 <strchr>
     5a8:	83 c4 10             	add    $0x10,%esp
     5ab:	85 c0                	test   %eax,%eax
     5ad:	75 e1                	jne    590 <gettoken+0x70>
  *ps = s;
     5af:	8b 45 08             	mov    0x8(%ebp),%eax
     5b2:	89 30                	mov    %esi,(%eax)
  return ret;
}
     5b4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     5b7:	89 f8                	mov    %edi,%eax
     5b9:	5b                   	pop    %ebx
     5ba:	5e                   	pop    %esi
     5bb:	5f                   	pop    %edi
     5bc:	5d                   	pop    %ebp
     5bd:	c3                   	ret    
     5be:	66 90                	xchg   %ax,%ax
     5c0:	3c 26                	cmp    $0x26,%al
     5c2:	0f 84 8e 00 00 00    	je     656 <gettoken+0x136>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     5c8:	39 f3                	cmp    %esi,%ebx
     5ca:	77 36                	ja     602 <gettoken+0xe2>
  if(eq)
     5cc:	8b 45 14             	mov    0x14(%ebp),%eax
     5cf:	bf 61 00 00 00       	mov    $0x61,%edi
     5d4:	85 c0                	test   %eax,%eax
     5d6:	75 ad                	jne    585 <gettoken+0x65>
     5d8:	eb d5                	jmp    5af <gettoken+0x8f>
     5da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     5e0:	0f be 06             	movsbl (%esi),%eax
     5e3:	83 ec 08             	sub    $0x8,%esp
     5e6:	50                   	push   %eax
     5e7:	68 70 19 00 00       	push   $0x1970
     5ec:	e8 5f 06 00 00       	call   c50 <strchr>
     5f1:	83 c4 10             	add    $0x10,%esp
     5f4:	85 c0                	test   %eax,%eax
     5f6:	75 1f                	jne    617 <gettoken+0xf7>
      s++;
     5f8:	83 c6 01             	add    $0x1,%esi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     5fb:	39 f3                	cmp    %esi,%ebx
     5fd:	74 cd                	je     5cc <gettoken+0xac>
     5ff:	0f be 06             	movsbl (%esi),%eax
     602:	83 ec 08             	sub    $0x8,%esp
     605:	50                   	push   %eax
     606:	68 78 19 00 00       	push   $0x1978
     60b:	e8 40 06 00 00       	call   c50 <strchr>
     610:	83 c4 10             	add    $0x10,%esp
     613:	85 c0                	test   %eax,%eax
     615:	74 c9                	je     5e0 <gettoken+0xc0>
    ret = 'a';
     617:	bf 61 00 00 00       	mov    $0x61,%edi
     61c:	e9 5d ff ff ff       	jmp    57e <gettoken+0x5e>
     621:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     628:	3c 3e                	cmp    $0x3e,%al
     62a:	75 1c                	jne    648 <gettoken+0x128>
    if(*s == '>'){
     62c:	80 7e 01 3e          	cmpb   $0x3e,0x1(%esi)
    s++;
     630:	8d 46 01             	lea    0x1(%esi),%eax
    if(*s == '>'){
     633:	74 3c                	je     671 <gettoken+0x151>
    s++;
     635:	89 c6                	mov    %eax,%esi
     637:	bf 3e 00 00 00       	mov    $0x3e,%edi
     63c:	e9 3d ff ff ff       	jmp    57e <gettoken+0x5e>
     641:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     648:	7f 1e                	jg     668 <gettoken+0x148>
     64a:	8d 48 c5             	lea    -0x3b(%eax),%ecx
     64d:	80 f9 01             	cmp    $0x1,%cl
     650:	0f 87 72 ff ff ff    	ja     5c8 <gettoken+0xa8>
  ret = *s;
     656:	0f be f8             	movsbl %al,%edi
    s++;
     659:	83 c6 01             	add    $0x1,%esi
    break;
     65c:	e9 1d ff ff ff       	jmp    57e <gettoken+0x5e>
     661:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     668:	3c 7c                	cmp    $0x7c,%al
     66a:	74 ea                	je     656 <gettoken+0x136>
     66c:	e9 57 ff ff ff       	jmp    5c8 <gettoken+0xa8>
      s++;
     671:	83 c6 02             	add    $0x2,%esi
      ret = '+';
     674:	bf 2b 00 00 00       	mov    $0x2b,%edi
     679:	e9 00 ff ff ff       	jmp    57e <gettoken+0x5e>
     67e:	66 90                	xchg   %ax,%ax

00000680 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     680:	55                   	push   %ebp
     681:	89 e5                	mov    %esp,%ebp
     683:	57                   	push   %edi
     684:	56                   	push   %esi
     685:	53                   	push   %ebx
     686:	83 ec 0c             	sub    $0xc,%esp
     689:	8b 7d 08             	mov    0x8(%ebp),%edi
     68c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     68f:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     691:	39 f3                	cmp    %esi,%ebx
     693:	72 12                	jb     6a7 <peek+0x27>
     695:	eb 28                	jmp    6bf <peek+0x3f>
     697:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     69e:	66 90                	xchg   %ax,%ax
    s++;
     6a0:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     6a3:	39 de                	cmp    %ebx,%esi
     6a5:	74 18                	je     6bf <peek+0x3f>
     6a7:	0f be 03             	movsbl (%ebx),%eax
     6aa:	83 ec 08             	sub    $0x8,%esp
     6ad:	50                   	push   %eax
     6ae:	68 78 19 00 00       	push   $0x1978
     6b3:	e8 98 05 00 00       	call   c50 <strchr>
     6b8:	83 c4 10             	add    $0x10,%esp
     6bb:	85 c0                	test   %eax,%eax
     6bd:	75 e1                	jne    6a0 <peek+0x20>
  *ps = s;
     6bf:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     6c1:	0f be 13             	movsbl (%ebx),%edx
     6c4:	31 c0                	xor    %eax,%eax
     6c6:	84 d2                	test   %dl,%dl
     6c8:	75 0e                	jne    6d8 <peek+0x58>
}
     6ca:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6cd:	5b                   	pop    %ebx
     6ce:	5e                   	pop    %esi
     6cf:	5f                   	pop    %edi
     6d0:	5d                   	pop    %ebp
     6d1:	c3                   	ret    
     6d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  return *s && strchr(toks, *s);
     6d8:	83 ec 08             	sub    $0x8,%esp
     6db:	52                   	push   %edx
     6dc:	ff 75 10             	pushl  0x10(%ebp)
     6df:	e8 6c 05 00 00       	call   c50 <strchr>
     6e4:	83 c4 10             	add    $0x10,%esp
     6e7:	85 c0                	test   %eax,%eax
     6e9:	0f 95 c0             	setne  %al
}
     6ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6ef:	5b                   	pop    %ebx
  return *s && strchr(toks, *s);
     6f0:	0f b6 c0             	movzbl %al,%eax
}
     6f3:	5e                   	pop    %esi
     6f4:	5f                   	pop    %edi
     6f5:	5d                   	pop    %ebp
     6f6:	c3                   	ret    
     6f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6fe:	66 90                	xchg   %ax,%ax

00000700 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     700:	55                   	push   %ebp
     701:	89 e5                	mov    %esp,%ebp
     703:	57                   	push   %edi
     704:	56                   	push   %esi
     705:	53                   	push   %ebx
     706:	83 ec 1c             	sub    $0x1c,%esp
     709:	8b 75 0c             	mov    0xc(%ebp),%esi
     70c:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     70f:	90                   	nop
     710:	83 ec 04             	sub    $0x4,%esp
     713:	68 f9 12 00 00       	push   $0x12f9
     718:	53                   	push   %ebx
     719:	56                   	push   %esi
     71a:	e8 61 ff ff ff       	call   680 <peek>
     71f:	83 c4 10             	add    $0x10,%esp
     722:	85 c0                	test   %eax,%eax
     724:	74 6a                	je     790 <parseredirs+0x90>
    tok = gettoken(ps, es, 0, 0);
     726:	6a 00                	push   $0x0
     728:	6a 00                	push   $0x0
     72a:	53                   	push   %ebx
     72b:	56                   	push   %esi
     72c:	e8 ef fd ff ff       	call   520 <gettoken>
     731:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     733:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     736:	50                   	push   %eax
     737:	8d 45 e0             	lea    -0x20(%ebp),%eax
     73a:	50                   	push   %eax
     73b:	53                   	push   %ebx
     73c:	56                   	push   %esi
     73d:	e8 de fd ff ff       	call   520 <gettoken>
     742:	83 c4 20             	add    $0x20,%esp
     745:	83 f8 61             	cmp    $0x61,%eax
     748:	75 51                	jne    79b <parseredirs+0x9b>
      panic("missing file for redirection");
    switch(tok){
     74a:	83 ff 3c             	cmp    $0x3c,%edi
     74d:	74 31                	je     780 <parseredirs+0x80>
     74f:	83 ff 3e             	cmp    $0x3e,%edi
     752:	74 05                	je     759 <parseredirs+0x59>
     754:	83 ff 2b             	cmp    $0x2b,%edi
     757:	75 b7                	jne    710 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     759:	83 ec 0c             	sub    $0xc,%esp
     75c:	6a 01                	push   $0x1
     75e:	68 01 02 00 00       	push   $0x201
     763:	ff 75 e4             	pushl  -0x1c(%ebp)
     766:	ff 75 e0             	pushl  -0x20(%ebp)
     769:	ff 75 08             	pushl  0x8(%ebp)
     76c:	e8 af fc ff ff       	call   420 <redircmd>
      break;
     771:	83 c4 20             	add    $0x20,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     774:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
     777:	eb 97                	jmp    710 <parseredirs+0x10>
     779:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     780:	83 ec 0c             	sub    $0xc,%esp
     783:	6a 00                	push   $0x0
     785:	6a 00                	push   $0x0
     787:	eb da                	jmp    763 <parseredirs+0x63>
     789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  return cmd;
}
     790:	8b 45 08             	mov    0x8(%ebp),%eax
     793:	8d 65 f4             	lea    -0xc(%ebp),%esp
     796:	5b                   	pop    %ebx
     797:	5e                   	pop    %esi
     798:	5f                   	pop    %edi
     799:	5d                   	pop    %ebp
     79a:	c3                   	ret    
      panic("missing file for redirection");
     79b:	83 ec 0c             	sub    $0xc,%esp
     79e:	68 dc 12 00 00       	push   $0x12dc
     7a3:	e8 d8 f9 ff ff       	call   180 <panic>
     7a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     7af:	90                   	nop

000007b0 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     7b0:	55                   	push   %ebp
     7b1:	89 e5                	mov    %esp,%ebp
     7b3:	57                   	push   %edi
     7b4:	56                   	push   %esi
     7b5:	53                   	push   %ebx
     7b6:	83 ec 30             	sub    $0x30,%esp
     7b9:	8b 75 08             	mov    0x8(%ebp),%esi
     7bc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     7bf:	68 fc 12 00 00       	push   $0x12fc
     7c4:	57                   	push   %edi
     7c5:	56                   	push   %esi
     7c6:	e8 b5 fe ff ff       	call   680 <peek>
     7cb:	83 c4 10             	add    $0x10,%esp
     7ce:	85 c0                	test   %eax,%eax
     7d0:	0f 85 92 00 00 00    	jne    868 <parseexec+0xb8>
     7d6:	89 c3                	mov    %eax,%ebx
    return parseblock(ps, es);

  ret = execcmd();
     7d8:	e8 13 fc ff ff       	call   3f0 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     7dd:	83 ec 04             	sub    $0x4,%esp
     7e0:	57                   	push   %edi
     7e1:	56                   	push   %esi
     7e2:	50                   	push   %eax
  ret = execcmd();
     7e3:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = parseredirs(ret, ps, es);
     7e6:	e8 15 ff ff ff       	call   700 <parseredirs>
     7eb:	83 c4 10             	add    $0x10,%esp
     7ee:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     7f1:	eb 18                	jmp    80b <parseexec+0x5b>
     7f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     7f7:	90                   	nop
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     7f8:	83 ec 04             	sub    $0x4,%esp
     7fb:	57                   	push   %edi
     7fc:	56                   	push   %esi
     7fd:	ff 75 d4             	pushl  -0x2c(%ebp)
     800:	e8 fb fe ff ff       	call   700 <parseredirs>
     805:	83 c4 10             	add    $0x10,%esp
     808:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     80b:	83 ec 04             	sub    $0x4,%esp
     80e:	68 13 13 00 00       	push   $0x1313
     813:	57                   	push   %edi
     814:	56                   	push   %esi
     815:	e8 66 fe ff ff       	call   680 <peek>
     81a:	83 c4 10             	add    $0x10,%esp
     81d:	85 c0                	test   %eax,%eax
     81f:	75 67                	jne    888 <parseexec+0xd8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     821:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     824:	50                   	push   %eax
     825:	8d 45 e0             	lea    -0x20(%ebp),%eax
     828:	50                   	push   %eax
     829:	57                   	push   %edi
     82a:	56                   	push   %esi
     82b:	e8 f0 fc ff ff       	call   520 <gettoken>
     830:	83 c4 10             	add    $0x10,%esp
     833:	85 c0                	test   %eax,%eax
     835:	74 51                	je     888 <parseexec+0xd8>
    if(tok != 'a')
     837:	83 f8 61             	cmp    $0x61,%eax
     83a:	75 6b                	jne    8a7 <parseexec+0xf7>
    cmd->argv[argc] = q;
     83c:	8b 45 e0             	mov    -0x20(%ebp),%eax
     83f:	8b 55 d0             	mov    -0x30(%ebp),%edx
     842:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
    cmd->eargv[argc] = eq;
     846:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     849:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
    argc++;
     84d:	83 c3 01             	add    $0x1,%ebx
    if(argc >= MAXARGS)
     850:	83 fb 0a             	cmp    $0xa,%ebx
     853:	75 a3                	jne    7f8 <parseexec+0x48>
      panic("too many args");
     855:	83 ec 0c             	sub    $0xc,%esp
     858:	68 05 13 00 00       	push   $0x1305
     85d:	e8 1e f9 ff ff       	call   180 <panic>
     862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     868:	83 ec 08             	sub    $0x8,%esp
     86b:	57                   	push   %edi
     86c:	56                   	push   %esi
     86d:	e8 5e 01 00 00       	call   9d0 <parseblock>
     872:	83 c4 10             	add    $0x10,%esp
     875:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     878:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     87b:	8d 65 f4             	lea    -0xc(%ebp),%esp
     87e:	5b                   	pop    %ebx
     87f:	5e                   	pop    %esi
     880:	5f                   	pop    %edi
     881:	5d                   	pop    %ebp
     882:	c3                   	ret    
     883:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     887:	90                   	nop
  cmd->argv[argc] = 0;
     888:	8b 45 d0             	mov    -0x30(%ebp),%eax
     88b:	8d 04 98             	lea    (%eax,%ebx,4),%eax
     88e:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
     895:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
}
     89c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     89f:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8a2:	5b                   	pop    %ebx
     8a3:	5e                   	pop    %esi
     8a4:	5f                   	pop    %edi
     8a5:	5d                   	pop    %ebp
     8a6:	c3                   	ret    
      panic("syntax");
     8a7:	83 ec 0c             	sub    $0xc,%esp
     8aa:	68 fe 12 00 00       	push   $0x12fe
     8af:	e8 cc f8 ff ff       	call   180 <panic>
     8b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     8bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     8bf:	90                   	nop

000008c0 <parsepipe>:
{
     8c0:	55                   	push   %ebp
     8c1:	89 e5                	mov    %esp,%ebp
     8c3:	57                   	push   %edi
     8c4:	56                   	push   %esi
     8c5:	53                   	push   %ebx
     8c6:	83 ec 14             	sub    $0x14,%esp
     8c9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     8cc:	8b 75 0c             	mov    0xc(%ebp),%esi
  cmd = parseexec(ps, es);
     8cf:	56                   	push   %esi
     8d0:	53                   	push   %ebx
     8d1:	e8 da fe ff ff       	call   7b0 <parseexec>
  if(peek(ps, es, "|")){
     8d6:	83 c4 0c             	add    $0xc,%esp
     8d9:	68 18 13 00 00       	push   $0x1318
  cmd = parseexec(ps, es);
     8de:	89 c7                	mov    %eax,%edi
  if(peek(ps, es, "|")){
     8e0:	56                   	push   %esi
     8e1:	53                   	push   %ebx
     8e2:	e8 99 fd ff ff       	call   680 <peek>
     8e7:	83 c4 10             	add    $0x10,%esp
     8ea:	85 c0                	test   %eax,%eax
     8ec:	75 12                	jne    900 <parsepipe+0x40>
}
     8ee:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8f1:	89 f8                	mov    %edi,%eax
     8f3:	5b                   	pop    %ebx
     8f4:	5e                   	pop    %esi
     8f5:	5f                   	pop    %edi
     8f6:	5d                   	pop    %ebp
     8f7:	c3                   	ret    
     8f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     8ff:	90                   	nop
    gettoken(ps, es, 0, 0);
     900:	6a 00                	push   $0x0
     902:	6a 00                	push   $0x0
     904:	56                   	push   %esi
     905:	53                   	push   %ebx
     906:	e8 15 fc ff ff       	call   520 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     90b:	58                   	pop    %eax
     90c:	5a                   	pop    %edx
     90d:	56                   	push   %esi
     90e:	53                   	push   %ebx
     90f:	e8 ac ff ff ff       	call   8c0 <parsepipe>
     914:	89 7d 08             	mov    %edi,0x8(%ebp)
     917:	83 c4 10             	add    $0x10,%esp
     91a:	89 45 0c             	mov    %eax,0xc(%ebp)
}
     91d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     920:	5b                   	pop    %ebx
     921:	5e                   	pop    %esi
     922:	5f                   	pop    %edi
     923:	5d                   	pop    %ebp
    cmd = pipecmd(cmd, parsepipe(ps, es));
     924:	e9 47 fb ff ff       	jmp    470 <pipecmd>
     929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000930 <parseline>:
{
     930:	55                   	push   %ebp
     931:	89 e5                	mov    %esp,%ebp
     933:	57                   	push   %edi
     934:	56                   	push   %esi
     935:	53                   	push   %ebx
     936:	83 ec 14             	sub    $0x14,%esp
     939:	8b 5d 08             	mov    0x8(%ebp),%ebx
     93c:	8b 75 0c             	mov    0xc(%ebp),%esi
  cmd = parsepipe(ps, es);
     93f:	56                   	push   %esi
     940:	53                   	push   %ebx
     941:	e8 7a ff ff ff       	call   8c0 <parsepipe>
  while(peek(ps, es, "&")){
     946:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     949:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     94b:	eb 1b                	jmp    968 <parseline+0x38>
     94d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     950:	6a 00                	push   $0x0
     952:	6a 00                	push   $0x0
     954:	56                   	push   %esi
     955:	53                   	push   %ebx
     956:	e8 c5 fb ff ff       	call   520 <gettoken>
    cmd = backcmd(cmd);
     95b:	89 3c 24             	mov    %edi,(%esp)
     95e:	e8 8d fb ff ff       	call   4f0 <backcmd>
     963:	83 c4 10             	add    $0x10,%esp
     966:	89 c7                	mov    %eax,%edi
  while(peek(ps, es, "&")){
     968:	83 ec 04             	sub    $0x4,%esp
     96b:	68 1a 13 00 00       	push   $0x131a
     970:	56                   	push   %esi
     971:	53                   	push   %ebx
     972:	e8 09 fd ff ff       	call   680 <peek>
     977:	83 c4 10             	add    $0x10,%esp
     97a:	85 c0                	test   %eax,%eax
     97c:	75 d2                	jne    950 <parseline+0x20>
  if(peek(ps, es, ";")){
     97e:	83 ec 04             	sub    $0x4,%esp
     981:	68 16 13 00 00       	push   $0x1316
     986:	56                   	push   %esi
     987:	53                   	push   %ebx
     988:	e8 f3 fc ff ff       	call   680 <peek>
     98d:	83 c4 10             	add    $0x10,%esp
     990:	85 c0                	test   %eax,%eax
     992:	75 0c                	jne    9a0 <parseline+0x70>
}
     994:	8d 65 f4             	lea    -0xc(%ebp),%esp
     997:	89 f8                	mov    %edi,%eax
     999:	5b                   	pop    %ebx
     99a:	5e                   	pop    %esi
     99b:	5f                   	pop    %edi
     99c:	5d                   	pop    %ebp
     99d:	c3                   	ret    
     99e:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     9a0:	6a 00                	push   $0x0
     9a2:	6a 00                	push   $0x0
     9a4:	56                   	push   %esi
     9a5:	53                   	push   %ebx
     9a6:	e8 75 fb ff ff       	call   520 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     9ab:	58                   	pop    %eax
     9ac:	5a                   	pop    %edx
     9ad:	56                   	push   %esi
     9ae:	53                   	push   %ebx
     9af:	e8 7c ff ff ff       	call   930 <parseline>
     9b4:	89 7d 08             	mov    %edi,0x8(%ebp)
     9b7:	83 c4 10             	add    $0x10,%esp
     9ba:	89 45 0c             	mov    %eax,0xc(%ebp)
}
     9bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9c0:	5b                   	pop    %ebx
     9c1:	5e                   	pop    %esi
     9c2:	5f                   	pop    %edi
     9c3:	5d                   	pop    %ebp
    cmd = listcmd(cmd, parseline(ps, es));
     9c4:	e9 e7 fa ff ff       	jmp    4b0 <listcmd>
     9c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000009d0 <parseblock>:
{
     9d0:	55                   	push   %ebp
     9d1:	89 e5                	mov    %esp,%ebp
     9d3:	57                   	push   %edi
     9d4:	56                   	push   %esi
     9d5:	53                   	push   %ebx
     9d6:	83 ec 10             	sub    $0x10,%esp
     9d9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     9dc:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     9df:	68 fc 12 00 00       	push   $0x12fc
     9e4:	56                   	push   %esi
     9e5:	53                   	push   %ebx
     9e6:	e8 95 fc ff ff       	call   680 <peek>
     9eb:	83 c4 10             	add    $0x10,%esp
     9ee:	85 c0                	test   %eax,%eax
     9f0:	74 4a                	je     a3c <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
     9f2:	6a 00                	push   $0x0
     9f4:	6a 00                	push   $0x0
     9f6:	56                   	push   %esi
     9f7:	53                   	push   %ebx
     9f8:	e8 23 fb ff ff       	call   520 <gettoken>
  cmd = parseline(ps, es);
     9fd:	58                   	pop    %eax
     9fe:	5a                   	pop    %edx
     9ff:	56                   	push   %esi
     a00:	53                   	push   %ebx
     a01:	e8 2a ff ff ff       	call   930 <parseline>
  if(!peek(ps, es, ")"))
     a06:	83 c4 0c             	add    $0xc,%esp
     a09:	68 38 13 00 00       	push   $0x1338
  cmd = parseline(ps, es);
     a0e:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     a10:	56                   	push   %esi
     a11:	53                   	push   %ebx
     a12:	e8 69 fc ff ff       	call   680 <peek>
     a17:	83 c4 10             	add    $0x10,%esp
     a1a:	85 c0                	test   %eax,%eax
     a1c:	74 2b                	je     a49 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
     a1e:	6a 00                	push   $0x0
     a20:	6a 00                	push   $0x0
     a22:	56                   	push   %esi
     a23:	53                   	push   %ebx
     a24:	e8 f7 fa ff ff       	call   520 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     a29:	83 c4 0c             	add    $0xc,%esp
     a2c:	56                   	push   %esi
     a2d:	53                   	push   %ebx
     a2e:	57                   	push   %edi
     a2f:	e8 cc fc ff ff       	call   700 <parseredirs>
}
     a34:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a37:	5b                   	pop    %ebx
     a38:	5e                   	pop    %esi
     a39:	5f                   	pop    %edi
     a3a:	5d                   	pop    %ebp
     a3b:	c3                   	ret    
    panic("parseblock");
     a3c:	83 ec 0c             	sub    $0xc,%esp
     a3f:	68 1c 13 00 00       	push   $0x131c
     a44:	e8 37 f7 ff ff       	call   180 <panic>
    panic("syntax - missing )");
     a49:	83 ec 0c             	sub    $0xc,%esp
     a4c:	68 27 13 00 00       	push   $0x1327
     a51:	e8 2a f7 ff ff       	call   180 <panic>
     a56:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a5d:	8d 76 00             	lea    0x0(%esi),%esi

00000a60 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     a60:	55                   	push   %ebp
     a61:	89 e5                	mov    %esp,%ebp
     a63:	53                   	push   %ebx
     a64:	83 ec 04             	sub    $0x4,%esp
     a67:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     a6a:	85 db                	test   %ebx,%ebx
     a6c:	74 20                	je     a8e <nulterminate+0x2e>
    return 0;

  switch(cmd->type){
     a6e:	83 3b 05             	cmpl   $0x5,(%ebx)
     a71:	77 1b                	ja     a8e <nulterminate+0x2e>
     a73:	8b 03                	mov    (%ebx),%eax
     a75:	ff 24 85 7c 13 00 00 	jmp    *0x137c(,%eax,4)
     a7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    nulterminate(lcmd->right);
    break;

  case BACK:
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
     a80:	83 ec 0c             	sub    $0xc,%esp
     a83:	ff 73 04             	pushl  0x4(%ebx)
     a86:	e8 d5 ff ff ff       	call   a60 <nulterminate>
    break;
     a8b:	83 c4 10             	add    $0x10,%esp
  }
  return cmd;
}
     a8e:	89 d8                	mov    %ebx,%eax
     a90:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     a93:	c9                   	leave  
     a94:	c3                   	ret    
     a95:	8d 76 00             	lea    0x0(%esi),%esi
    nulterminate(lcmd->left);
     a98:	83 ec 0c             	sub    $0xc,%esp
     a9b:	ff 73 04             	pushl  0x4(%ebx)
     a9e:	e8 bd ff ff ff       	call   a60 <nulterminate>
    nulterminate(lcmd->right);
     aa3:	58                   	pop    %eax
     aa4:	ff 73 08             	pushl  0x8(%ebx)
     aa7:	e8 b4 ff ff ff       	call   a60 <nulterminate>
}
     aac:	89 d8                	mov    %ebx,%eax
    break;
     aae:	83 c4 10             	add    $0x10,%esp
}
     ab1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     ab4:	c9                   	leave  
     ab5:	c3                   	ret    
     ab6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     abd:	8d 76 00             	lea    0x0(%esi),%esi
    for(i=0; ecmd->argv[i]; i++)
     ac0:	8b 4b 04             	mov    0x4(%ebx),%ecx
     ac3:	8d 43 08             	lea    0x8(%ebx),%eax
     ac6:	85 c9                	test   %ecx,%ecx
     ac8:	74 c4                	je     a8e <nulterminate+0x2e>
     aca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     ad0:	8b 50 24             	mov    0x24(%eax),%edx
     ad3:	83 c0 04             	add    $0x4,%eax
     ad6:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     ad9:	8b 50 fc             	mov    -0x4(%eax),%edx
     adc:	85 d2                	test   %edx,%edx
     ade:	75 f0                	jne    ad0 <nulterminate+0x70>
}
     ae0:	89 d8                	mov    %ebx,%eax
     ae2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     ae5:	c9                   	leave  
     ae6:	c3                   	ret    
     ae7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     aee:	66 90                	xchg   %ax,%ax
    nulterminate(rcmd->cmd);
     af0:	83 ec 0c             	sub    $0xc,%esp
     af3:	ff 73 04             	pushl  0x4(%ebx)
     af6:	e8 65 ff ff ff       	call   a60 <nulterminate>
    *rcmd->efile = 0;
     afb:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     afe:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     b01:	c6 00 00             	movb   $0x0,(%eax)
}
     b04:	89 d8                	mov    %ebx,%eax
     b06:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b09:	c9                   	leave  
     b0a:	c3                   	ret    
     b0b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b0f:	90                   	nop

00000b10 <parsecmd>:
{
     b10:	55                   	push   %ebp
     b11:	89 e5                	mov    %esp,%ebp
     b13:	56                   	push   %esi
     b14:	53                   	push   %ebx
  es = s + strlen(s);
     b15:	8b 5d 08             	mov    0x8(%ebp),%ebx
     b18:	83 ec 0c             	sub    $0xc,%esp
     b1b:	53                   	push   %ebx
     b1c:	e8 df 00 00 00       	call   c00 <strlen>
  cmd = parseline(&s, es);
     b21:	59                   	pop    %ecx
     b22:	5e                   	pop    %esi
  es = s + strlen(s);
     b23:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     b25:	8d 45 08             	lea    0x8(%ebp),%eax
     b28:	53                   	push   %ebx
     b29:	50                   	push   %eax
     b2a:	e8 01 fe ff ff       	call   930 <parseline>
  peek(&s, es, "");
     b2f:	83 c4 0c             	add    $0xc,%esp
  cmd = parseline(&s, es);
     b32:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     b34:	8d 45 08             	lea    0x8(%ebp),%eax
     b37:	68 c1 12 00 00       	push   $0x12c1
     b3c:	53                   	push   %ebx
     b3d:	50                   	push   %eax
     b3e:	e8 3d fb ff ff       	call   680 <peek>
  if(s != es){
     b43:	8b 45 08             	mov    0x8(%ebp),%eax
     b46:	83 c4 10             	add    $0x10,%esp
     b49:	39 d8                	cmp    %ebx,%eax
     b4b:	75 12                	jne    b5f <parsecmd+0x4f>
  nulterminate(cmd);
     b4d:	83 ec 0c             	sub    $0xc,%esp
     b50:	56                   	push   %esi
     b51:	e8 0a ff ff ff       	call   a60 <nulterminate>
}
     b56:	8d 65 f8             	lea    -0x8(%ebp),%esp
     b59:	89 f0                	mov    %esi,%eax
     b5b:	5b                   	pop    %ebx
     b5c:	5e                   	pop    %esi
     b5d:	5d                   	pop    %ebp
     b5e:	c3                   	ret    
    printf(2, "leftovers: %s\n", s);
     b5f:	52                   	push   %edx
     b60:	50                   	push   %eax
     b61:	68 3a 13 00 00       	push   $0x133a
     b66:	6a 02                	push   $0x2
     b68:	e8 d3 03 00 00       	call   f40 <printf>
    panic("syntax");
     b6d:	c7 04 24 fe 12 00 00 	movl   $0x12fe,(%esp)
     b74:	e8 07 f6 ff ff       	call   180 <panic>
     b79:	66 90                	xchg   %ax,%ax
     b7b:	66 90                	xchg   %ax,%ax
     b7d:	66 90                	xchg   %ax,%ax
     b7f:	90                   	nop

00000b80 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     b80:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     b81:	31 d2                	xor    %edx,%edx
{
     b83:	89 e5                	mov    %esp,%ebp
     b85:	53                   	push   %ebx
     b86:	8b 45 08             	mov    0x8(%ebp),%eax
     b89:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
     b90:	0f b6 0c 13          	movzbl (%ebx,%edx,1),%ecx
     b94:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     b97:	83 c2 01             	add    $0x1,%edx
     b9a:	84 c9                	test   %cl,%cl
     b9c:	75 f2                	jne    b90 <strcpy+0x10>
    ;
  return os;
}
     b9e:	5b                   	pop    %ebx
     b9f:	5d                   	pop    %ebp
     ba0:	c3                   	ret    
     ba1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     ba8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     baf:	90                   	nop

00000bb0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     bb0:	55                   	push   %ebp
     bb1:	89 e5                	mov    %esp,%ebp
     bb3:	56                   	push   %esi
     bb4:	53                   	push   %ebx
     bb5:	8b 5d 08             	mov    0x8(%ebp),%ebx
     bb8:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(*p && *p == *q)
     bbb:	0f b6 13             	movzbl (%ebx),%edx
     bbe:	0f b6 0e             	movzbl (%esi),%ecx
     bc1:	84 d2                	test   %dl,%dl
     bc3:	74 1e                	je     be3 <strcmp+0x33>
     bc5:	b8 01 00 00 00       	mov    $0x1,%eax
     bca:	38 ca                	cmp    %cl,%dl
     bcc:	74 09                	je     bd7 <strcmp+0x27>
     bce:	eb 20                	jmp    bf0 <strcmp+0x40>
     bd0:	83 c0 01             	add    $0x1,%eax
     bd3:	38 ca                	cmp    %cl,%dl
     bd5:	75 19                	jne    bf0 <strcmp+0x40>
     bd7:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
     bdb:	0f b6 0c 06          	movzbl (%esi,%eax,1),%ecx
     bdf:	84 d2                	test   %dl,%dl
     be1:	75 ed                	jne    bd0 <strcmp+0x20>
     be3:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
}
     be5:	5b                   	pop    %ebx
     be6:	5e                   	pop    %esi
  return (uchar)*p - (uchar)*q;
     be7:	29 c8                	sub    %ecx,%eax
}
     be9:	5d                   	pop    %ebp
     bea:	c3                   	ret    
     beb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     bef:	90                   	nop
     bf0:	0f b6 c2             	movzbl %dl,%eax
     bf3:	5b                   	pop    %ebx
     bf4:	5e                   	pop    %esi
  return (uchar)*p - (uchar)*q;
     bf5:	29 c8                	sub    %ecx,%eax
}
     bf7:	5d                   	pop    %ebp
     bf8:	c3                   	ret    
     bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000c00 <strlen>:

uint
strlen(const char *s)
{
     c00:	55                   	push   %ebp
     c01:	89 e5                	mov    %esp,%ebp
     c03:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     c06:	80 39 00             	cmpb   $0x0,(%ecx)
     c09:	74 15                	je     c20 <strlen+0x20>
     c0b:	31 d2                	xor    %edx,%edx
     c0d:	8d 76 00             	lea    0x0(%esi),%esi
     c10:	83 c2 01             	add    $0x1,%edx
     c13:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     c17:	89 d0                	mov    %edx,%eax
     c19:	75 f5                	jne    c10 <strlen+0x10>
    ;
  return n;
}
     c1b:	5d                   	pop    %ebp
     c1c:	c3                   	ret    
     c1d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
     c20:	31 c0                	xor    %eax,%eax
}
     c22:	5d                   	pop    %ebp
     c23:	c3                   	ret    
     c24:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c2b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c2f:	90                   	nop

00000c30 <memset>:

void*
memset(void *dst, int c, uint n)
{
     c30:	55                   	push   %ebp
     c31:	89 e5                	mov    %esp,%ebp
     c33:	57                   	push   %edi
     c34:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     c37:	8b 4d 10             	mov    0x10(%ebp),%ecx
     c3a:	8b 45 0c             	mov    0xc(%ebp),%eax
     c3d:	89 d7                	mov    %edx,%edi
     c3f:	fc                   	cld    
     c40:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     c42:	89 d0                	mov    %edx,%eax
     c44:	5f                   	pop    %edi
     c45:	5d                   	pop    %ebp
     c46:	c3                   	ret    
     c47:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c4e:	66 90                	xchg   %ax,%ax

00000c50 <strchr>:

char*
strchr(const char *s, char c)
{
     c50:	55                   	push   %ebp
     c51:	89 e5                	mov    %esp,%ebp
     c53:	53                   	push   %ebx
     c54:	8b 45 08             	mov    0x8(%ebp),%eax
     c57:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
     c5a:	0f b6 18             	movzbl (%eax),%ebx
     c5d:	84 db                	test   %bl,%bl
     c5f:	74 1d                	je     c7e <strchr+0x2e>
     c61:	89 d1                	mov    %edx,%ecx
    if(*s == c)
     c63:	38 d3                	cmp    %dl,%bl
     c65:	75 0d                	jne    c74 <strchr+0x24>
     c67:	eb 17                	jmp    c80 <strchr+0x30>
     c69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c70:	38 ca                	cmp    %cl,%dl
     c72:	74 0c                	je     c80 <strchr+0x30>
  for(; *s; s++)
     c74:	83 c0 01             	add    $0x1,%eax
     c77:	0f b6 10             	movzbl (%eax),%edx
     c7a:	84 d2                	test   %dl,%dl
     c7c:	75 f2                	jne    c70 <strchr+0x20>
      return (char*)s;
  return 0;
     c7e:	31 c0                	xor    %eax,%eax
}
     c80:	5b                   	pop    %ebx
     c81:	5d                   	pop    %ebp
     c82:	c3                   	ret    
     c83:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000c90 <gets>:

char*
gets(char *buf, int max)
{
     c90:	55                   	push   %ebp
     c91:	89 e5                	mov    %esp,%ebp
     c93:	57                   	push   %edi
     c94:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     c95:	31 f6                	xor    %esi,%esi
{
     c97:	53                   	push   %ebx
     c98:	89 f3                	mov    %esi,%ebx
     c9a:	83 ec 1c             	sub    $0x1c,%esp
     c9d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
     ca0:	eb 2f                	jmp    cd1 <gets+0x41>
     ca2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
     ca8:	83 ec 04             	sub    $0x4,%esp
     cab:	8d 45 e7             	lea    -0x19(%ebp),%eax
     cae:	6a 01                	push   $0x1
     cb0:	50                   	push   %eax
     cb1:	6a 00                	push   $0x0
     cb3:	e8 31 01 00 00       	call   de9 <read>
    if(cc < 1)
     cb8:	83 c4 10             	add    $0x10,%esp
     cbb:	85 c0                	test   %eax,%eax
     cbd:	7e 1c                	jle    cdb <gets+0x4b>
      break;
    buf[i++] = c;
     cbf:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     cc3:	83 c7 01             	add    $0x1,%edi
     cc6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
     cc9:	3c 0a                	cmp    $0xa,%al
     ccb:	74 23                	je     cf0 <gets+0x60>
     ccd:	3c 0d                	cmp    $0xd,%al
     ccf:	74 1f                	je     cf0 <gets+0x60>
  for(i=0; i+1 < max; ){
     cd1:	83 c3 01             	add    $0x1,%ebx
     cd4:	89 fe                	mov    %edi,%esi
     cd6:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     cd9:	7c cd                	jl     ca8 <gets+0x18>
     cdb:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
     cdd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
     ce0:	c6 03 00             	movb   $0x0,(%ebx)
}
     ce3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ce6:	5b                   	pop    %ebx
     ce7:	5e                   	pop    %esi
     ce8:	5f                   	pop    %edi
     ce9:	5d                   	pop    %ebp
     cea:	c3                   	ret    
     ceb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     cef:	90                   	nop
     cf0:	8b 75 08             	mov    0x8(%ebp),%esi
     cf3:	8b 45 08             	mov    0x8(%ebp),%eax
     cf6:	01 de                	add    %ebx,%esi
     cf8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
     cfa:	c6 03 00             	movb   $0x0,(%ebx)
}
     cfd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d00:	5b                   	pop    %ebx
     d01:	5e                   	pop    %esi
     d02:	5f                   	pop    %edi
     d03:	5d                   	pop    %ebp
     d04:	c3                   	ret    
     d05:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000d10 <stat>:

int
stat(const char *n, struct stat *st)
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	56                   	push   %esi
     d14:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     d15:	83 ec 08             	sub    $0x8,%esp
     d18:	6a 00                	push   $0x0
     d1a:	ff 75 08             	pushl  0x8(%ebp)
     d1d:	e8 ef 00 00 00       	call   e11 <open>
  if(fd < 0)
     d22:	83 c4 10             	add    $0x10,%esp
     d25:	85 c0                	test   %eax,%eax
     d27:	78 27                	js     d50 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     d29:	83 ec 08             	sub    $0x8,%esp
     d2c:	ff 75 0c             	pushl  0xc(%ebp)
     d2f:	89 c3                	mov    %eax,%ebx
     d31:	50                   	push   %eax
     d32:	e8 f2 00 00 00       	call   e29 <fstat>
  close(fd);
     d37:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     d3a:	89 c6                	mov    %eax,%esi
  close(fd);
     d3c:	e8 b8 00 00 00       	call   df9 <close>
  return r;
     d41:	83 c4 10             	add    $0x10,%esp
}
     d44:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d47:	89 f0                	mov    %esi,%eax
     d49:	5b                   	pop    %ebx
     d4a:	5e                   	pop    %esi
     d4b:	5d                   	pop    %ebp
     d4c:	c3                   	ret    
     d4d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     d50:	be ff ff ff ff       	mov    $0xffffffff,%esi
     d55:	eb ed                	jmp    d44 <stat+0x34>
     d57:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d5e:	66 90                	xchg   %ax,%ax

00000d60 <atoi>:

int
atoi(const char *s)
{
     d60:	55                   	push   %ebp
     d61:	89 e5                	mov    %esp,%ebp
     d63:	53                   	push   %ebx
     d64:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     d67:	0f be 11             	movsbl (%ecx),%edx
     d6a:	8d 42 d0             	lea    -0x30(%edx),%eax
     d6d:	3c 09                	cmp    $0x9,%al
  n = 0;
     d6f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
     d74:	77 1f                	ja     d95 <atoi+0x35>
     d76:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d7d:	8d 76 00             	lea    0x0(%esi),%esi
    n = n*10 + *s++ - '0';
     d80:	83 c1 01             	add    $0x1,%ecx
     d83:	8d 04 80             	lea    (%eax,%eax,4),%eax
     d86:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
     d8a:	0f be 11             	movsbl (%ecx),%edx
     d8d:	8d 5a d0             	lea    -0x30(%edx),%ebx
     d90:	80 fb 09             	cmp    $0x9,%bl
     d93:	76 eb                	jbe    d80 <atoi+0x20>
  return n;
}
     d95:	5b                   	pop    %ebx
     d96:	5d                   	pop    %ebp
     d97:	c3                   	ret    
     d98:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d9f:	90                   	nop

00000da0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     da0:	55                   	push   %ebp
     da1:	89 e5                	mov    %esp,%ebp
     da3:	57                   	push   %edi
     da4:	8b 55 10             	mov    0x10(%ebp),%edx
     da7:	8b 45 08             	mov    0x8(%ebp),%eax
     daa:	56                   	push   %esi
     dab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     dae:	85 d2                	test   %edx,%edx
     db0:	7e 13                	jle    dc5 <memmove+0x25>
     db2:	01 c2                	add    %eax,%edx
  dst = vdst;
     db4:	89 c7                	mov    %eax,%edi
     db6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     dbd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
     dc0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
     dc1:	39 fa                	cmp    %edi,%edx
     dc3:	75 fb                	jne    dc0 <memmove+0x20>
  return vdst;
}
     dc5:	5e                   	pop    %esi
     dc6:	5f                   	pop    %edi
     dc7:	5d                   	pop    %ebp
     dc8:	c3                   	ret    

00000dc9 <fork>:
     dc9:	b8 01 00 00 00       	mov    $0x1,%eax
     dce:	cd 40                	int    $0x40
     dd0:	c3                   	ret    

00000dd1 <exit>:
     dd1:	b8 02 00 00 00       	mov    $0x2,%eax
     dd6:	cd 40                	int    $0x40
     dd8:	c3                   	ret    

00000dd9 <wait>:
     dd9:	b8 03 00 00 00       	mov    $0x3,%eax
     dde:	cd 40                	int    $0x40
     de0:	c3                   	ret    

00000de1 <pipe>:
     de1:	b8 04 00 00 00       	mov    $0x4,%eax
     de6:	cd 40                	int    $0x40
     de8:	c3                   	ret    

00000de9 <read>:
     de9:	b8 05 00 00 00       	mov    $0x5,%eax
     dee:	cd 40                	int    $0x40
     df0:	c3                   	ret    

00000df1 <write>:
     df1:	b8 10 00 00 00       	mov    $0x10,%eax
     df6:	cd 40                	int    $0x40
     df8:	c3                   	ret    

00000df9 <close>:
     df9:	b8 15 00 00 00       	mov    $0x15,%eax
     dfe:	cd 40                	int    $0x40
     e00:	c3                   	ret    

00000e01 <kill>:
     e01:	b8 06 00 00 00       	mov    $0x6,%eax
     e06:	cd 40                	int    $0x40
     e08:	c3                   	ret    

00000e09 <exec>:
     e09:	b8 07 00 00 00       	mov    $0x7,%eax
     e0e:	cd 40                	int    $0x40
     e10:	c3                   	ret    

00000e11 <open>:
     e11:	b8 0f 00 00 00       	mov    $0xf,%eax
     e16:	cd 40                	int    $0x40
     e18:	c3                   	ret    

00000e19 <mknod>:
     e19:	b8 11 00 00 00       	mov    $0x11,%eax
     e1e:	cd 40                	int    $0x40
     e20:	c3                   	ret    

00000e21 <unlink>:
     e21:	b8 12 00 00 00       	mov    $0x12,%eax
     e26:	cd 40                	int    $0x40
     e28:	c3                   	ret    

00000e29 <fstat>:
     e29:	b8 08 00 00 00       	mov    $0x8,%eax
     e2e:	cd 40                	int    $0x40
     e30:	c3                   	ret    

00000e31 <link>:
     e31:	b8 13 00 00 00       	mov    $0x13,%eax
     e36:	cd 40                	int    $0x40
     e38:	c3                   	ret    

00000e39 <mkdir>:
     e39:	b8 14 00 00 00       	mov    $0x14,%eax
     e3e:	cd 40                	int    $0x40
     e40:	c3                   	ret    

00000e41 <chdir>:
     e41:	b8 09 00 00 00       	mov    $0x9,%eax
     e46:	cd 40                	int    $0x40
     e48:	c3                   	ret    

00000e49 <dup>:
     e49:	b8 0a 00 00 00       	mov    $0xa,%eax
     e4e:	cd 40                	int    $0x40
     e50:	c3                   	ret    

00000e51 <getpid>:
     e51:	b8 0b 00 00 00       	mov    $0xb,%eax
     e56:	cd 40                	int    $0x40
     e58:	c3                   	ret    

00000e59 <sbrk>:
     e59:	b8 0c 00 00 00       	mov    $0xc,%eax
     e5e:	cd 40                	int    $0x40
     e60:	c3                   	ret    

00000e61 <sleep>:
     e61:	b8 0d 00 00 00       	mov    $0xd,%eax
     e66:	cd 40                	int    $0x40
     e68:	c3                   	ret    

00000e69 <uptime>:
     e69:	b8 0e 00 00 00       	mov    $0xe,%eax
     e6e:	cd 40                	int    $0x40
     e70:	c3                   	ret    
     e71:	66 90                	xchg   %ax,%ax
     e73:	66 90                	xchg   %ax,%ax
     e75:	66 90                	xchg   %ax,%ax
     e77:	66 90                	xchg   %ax,%ax
     e79:	66 90                	xchg   %ax,%ax
     e7b:	66 90                	xchg   %ax,%ax
     e7d:	66 90                	xchg   %ax,%ax
     e7f:	90                   	nop

00000e80 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     e80:	55                   	push   %ebp
     e81:	89 e5                	mov    %esp,%ebp
     e83:	57                   	push   %edi
     e84:	56                   	push   %esi
     e85:	53                   	push   %ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     e86:	89 d3                	mov    %edx,%ebx
{
     e88:	83 ec 3c             	sub    $0x3c,%esp
     e8b:	89 45 bc             	mov    %eax,-0x44(%ebp)
  if(sgn && xx < 0){
     e8e:	85 d2                	test   %edx,%edx
     e90:	0f 89 92 00 00 00    	jns    f28 <printint+0xa8>
     e96:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     e9a:	0f 84 88 00 00 00    	je     f28 <printint+0xa8>
    neg = 1;
     ea0:	c7 45 c0 01 00 00 00 	movl   $0x1,-0x40(%ebp)
    x = -xx;
     ea7:	f7 db                	neg    %ebx
  } else {
    x = xx;
  }

  i = 0;
     ea9:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     eb0:	8d 75 d7             	lea    -0x29(%ebp),%esi
     eb3:	eb 08                	jmp    ebd <printint+0x3d>
     eb5:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
     eb8:	89 7d c4             	mov    %edi,-0x3c(%ebp)
  }while((x /= base) != 0);
     ebb:	89 c3                	mov    %eax,%ebx
    buf[i++] = digits[x % base];
     ebd:	89 d8                	mov    %ebx,%eax
     ebf:	31 d2                	xor    %edx,%edx
     ec1:	8b 7d c4             	mov    -0x3c(%ebp),%edi
     ec4:	f7 f1                	div    %ecx
     ec6:	83 c7 01             	add    $0x1,%edi
     ec9:	0f b6 92 9c 13 00 00 	movzbl 0x139c(%edx),%edx
     ed0:	88 14 3e             	mov    %dl,(%esi,%edi,1)
  }while((x /= base) != 0);
     ed3:	39 d9                	cmp    %ebx,%ecx
     ed5:	76 e1                	jbe    eb8 <printint+0x38>
  if(neg)
     ed7:	8b 45 c0             	mov    -0x40(%ebp),%eax
     eda:	85 c0                	test   %eax,%eax
     edc:	74 0d                	je     eeb <printint+0x6b>
    buf[i++] = '-';
     ede:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
     ee3:	ba 2d 00 00 00       	mov    $0x2d,%edx
    buf[i++] = digits[x % base];
     ee8:	89 7d c4             	mov    %edi,-0x3c(%ebp)
     eeb:	8b 45 c4             	mov    -0x3c(%ebp),%eax
     eee:	8b 7d bc             	mov    -0x44(%ebp),%edi
     ef1:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
     ef5:	eb 0f                	jmp    f06 <printint+0x86>
     ef7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     efe:	66 90                	xchg   %ax,%ax
     f00:	0f b6 13             	movzbl (%ebx),%edx
     f03:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
     f06:	83 ec 04             	sub    $0x4,%esp
     f09:	88 55 d7             	mov    %dl,-0x29(%ebp)
     f0c:	6a 01                	push   $0x1
     f0e:	56                   	push   %esi
     f0f:	57                   	push   %edi
     f10:	e8 dc fe ff ff       	call   df1 <write>

  while(--i >= 0)
     f15:	83 c4 10             	add    $0x10,%esp
     f18:	39 de                	cmp    %ebx,%esi
     f1a:	75 e4                	jne    f00 <printint+0x80>
    putc(fd, buf[i]);
}
     f1c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f1f:	5b                   	pop    %ebx
     f20:	5e                   	pop    %esi
     f21:	5f                   	pop    %edi
     f22:	5d                   	pop    %ebp
     f23:	c3                   	ret    
     f24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
     f28:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
     f2f:	e9 75 ff ff ff       	jmp    ea9 <printint+0x29>
     f34:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f3b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     f3f:	90                   	nop

00000f40 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
     f40:	55                   	push   %ebp
     f41:	89 e5                	mov    %esp,%ebp
     f43:	57                   	push   %edi
     f44:	56                   	push   %esi
     f45:	53                   	push   %ebx
     f46:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     f49:	8b 75 0c             	mov    0xc(%ebp),%esi
     f4c:	0f b6 1e             	movzbl (%esi),%ebx
     f4f:	84 db                	test   %bl,%bl
     f51:	0f 84 b9 00 00 00    	je     1010 <printf+0xd0>
  ap = (uint*)(void*)&fmt + 1;
     f57:	8d 45 10             	lea    0x10(%ebp),%eax
     f5a:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
     f5d:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
     f60:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
     f62:	89 45 d0             	mov    %eax,-0x30(%ebp)
     f65:	eb 38                	jmp    f9f <printf+0x5f>
     f67:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f6e:	66 90                	xchg   %ax,%ax
     f70:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
     f73:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
     f78:	83 f8 25             	cmp    $0x25,%eax
     f7b:	74 17                	je     f94 <printf+0x54>
  write(fd, &c, 1);
     f7d:	83 ec 04             	sub    $0x4,%esp
     f80:	88 5d e7             	mov    %bl,-0x19(%ebp)
     f83:	6a 01                	push   $0x1
     f85:	57                   	push   %edi
     f86:	ff 75 08             	pushl  0x8(%ebp)
     f89:	e8 63 fe ff ff       	call   df1 <write>
     f8e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
     f91:	83 c4 10             	add    $0x10,%esp
     f94:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
     f97:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
     f9b:	84 db                	test   %bl,%bl
     f9d:	74 71                	je     1010 <printf+0xd0>
    c = fmt[i] & 0xff;
     f9f:	0f be cb             	movsbl %bl,%ecx
     fa2:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
     fa5:	85 d2                	test   %edx,%edx
     fa7:	74 c7                	je     f70 <printf+0x30>
      }
    } else if(state == '%'){
     fa9:	83 fa 25             	cmp    $0x25,%edx
     fac:	75 e6                	jne    f94 <printf+0x54>
      if(c == 'd'){
     fae:	83 f8 64             	cmp    $0x64,%eax
     fb1:	0f 84 99 00 00 00    	je     1050 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
     fb7:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
     fbd:	83 f9 70             	cmp    $0x70,%ecx
     fc0:	74 5e                	je     1020 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
     fc2:	83 f8 73             	cmp    $0x73,%eax
     fc5:	0f 84 d5 00 00 00    	je     10a0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
     fcb:	83 f8 63             	cmp    $0x63,%eax
     fce:	0f 84 8c 00 00 00    	je     1060 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
     fd4:	83 f8 25             	cmp    $0x25,%eax
     fd7:	0f 84 b3 00 00 00    	je     1090 <printf+0x150>
  write(fd, &c, 1);
     fdd:	83 ec 04             	sub    $0x4,%esp
     fe0:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
     fe4:	6a 01                	push   $0x1
     fe6:	57                   	push   %edi
     fe7:	ff 75 08             	pushl  0x8(%ebp)
     fea:	e8 02 fe ff ff       	call   df1 <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
     fef:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
     ff2:	83 c4 0c             	add    $0xc,%esp
     ff5:	6a 01                	push   $0x1
     ff7:	83 c6 01             	add    $0x1,%esi
     ffa:	57                   	push   %edi
     ffb:	ff 75 08             	pushl  0x8(%ebp)
     ffe:	e8 ee fd ff ff       	call   df1 <write>
  for(i = 0; fmt[i]; i++){
    1003:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1007:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    100a:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    100c:	84 db                	test   %bl,%bl
    100e:	75 8f                	jne    f9f <printf+0x5f>
    }
  }
}
    1010:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1013:	5b                   	pop    %ebx
    1014:	5e                   	pop    %esi
    1015:	5f                   	pop    %edi
    1016:	5d                   	pop    %ebp
    1017:	c3                   	ret    
    1018:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    101f:	90                   	nop
        printint(fd, *ap, 16, 0);
    1020:	83 ec 0c             	sub    $0xc,%esp
    1023:	b9 10 00 00 00       	mov    $0x10,%ecx
    1028:	6a 00                	push   $0x0
    102a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    102d:	8b 45 08             	mov    0x8(%ebp),%eax
    1030:	8b 13                	mov    (%ebx),%edx
    1032:	e8 49 fe ff ff       	call   e80 <printint>
        ap++;
    1037:	89 d8                	mov    %ebx,%eax
    1039:	83 c4 10             	add    $0x10,%esp
      state = 0;
    103c:	31 d2                	xor    %edx,%edx
        ap++;
    103e:	83 c0 04             	add    $0x4,%eax
    1041:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1044:	e9 4b ff ff ff       	jmp    f94 <printf+0x54>
    1049:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1050:	83 ec 0c             	sub    $0xc,%esp
    1053:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1058:	6a 01                	push   $0x1
    105a:	eb ce                	jmp    102a <printf+0xea>
    105c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1060:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1063:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1066:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1068:	6a 01                	push   $0x1
        ap++;
    106a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    106d:	57                   	push   %edi
    106e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1071:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1074:	e8 78 fd ff ff       	call   df1 <write>
        ap++;
    1079:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    107c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    107f:	31 d2                	xor    %edx,%edx
    1081:	e9 0e ff ff ff       	jmp    f94 <printf+0x54>
    1086:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    108d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1090:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1093:	83 ec 04             	sub    $0x4,%esp
    1096:	e9 5a ff ff ff       	jmp    ff5 <printf+0xb5>
    109b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    109f:	90                   	nop
        s = (char*)*ap;
    10a0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    10a3:	8b 18                	mov    (%eax),%ebx
        ap++;
    10a5:	83 c0 04             	add    $0x4,%eax
    10a8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    10ab:	85 db                	test   %ebx,%ebx
    10ad:	74 17                	je     10c6 <printf+0x186>
        while(*s != 0){
    10af:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    10b2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    10b4:	84 c0                	test   %al,%al
    10b6:	0f 84 d8 fe ff ff    	je     f94 <printf+0x54>
    10bc:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    10bf:	89 de                	mov    %ebx,%esi
    10c1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    10c4:	eb 1a                	jmp    10e0 <printf+0x1a0>
          s = "(null)";
    10c6:	bb 94 13 00 00       	mov    $0x1394,%ebx
        while(*s != 0){
    10cb:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    10ce:	b8 28 00 00 00       	mov    $0x28,%eax
    10d3:	89 de                	mov    %ebx,%esi
    10d5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    10d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10df:	90                   	nop
  write(fd, &c, 1);
    10e0:	83 ec 04             	sub    $0x4,%esp
          s++;
    10e3:	83 c6 01             	add    $0x1,%esi
    10e6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    10e9:	6a 01                	push   $0x1
    10eb:	57                   	push   %edi
    10ec:	53                   	push   %ebx
    10ed:	e8 ff fc ff ff       	call   df1 <write>
        while(*s != 0){
    10f2:	0f b6 06             	movzbl (%esi),%eax
    10f5:	83 c4 10             	add    $0x10,%esp
    10f8:	84 c0                	test   %al,%al
    10fa:	75 e4                	jne    10e0 <printf+0x1a0>
    10fc:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    10ff:	31 d2                	xor    %edx,%edx
    1101:	e9 8e fe ff ff       	jmp    f94 <printf+0x54>
    1106:	66 90                	xchg   %ax,%ax
    1108:	66 90                	xchg   %ax,%ax
    110a:	66 90                	xchg   %ax,%ax
    110c:	66 90                	xchg   %ax,%ax
    110e:	66 90                	xchg   %ax,%ax

00001110 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1110:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1111:	a1 e4 19 00 00       	mov    0x19e4,%eax
{
    1116:	89 e5                	mov    %esp,%ebp
    1118:	57                   	push   %edi
    1119:	56                   	push   %esi
    111a:	53                   	push   %ebx
    111b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    111e:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1120:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1123:	39 c8                	cmp    %ecx,%eax
    1125:	73 19                	jae    1140 <free+0x30>
    1127:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    112e:	66 90                	xchg   %ax,%ax
    1130:	39 d1                	cmp    %edx,%ecx
    1132:	72 14                	jb     1148 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1134:	39 d0                	cmp    %edx,%eax
    1136:	73 10                	jae    1148 <free+0x38>
{
    1138:	89 d0                	mov    %edx,%eax
    113a:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    113c:	39 c8                	cmp    %ecx,%eax
    113e:	72 f0                	jb     1130 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1140:	39 d0                	cmp    %edx,%eax
    1142:	72 f4                	jb     1138 <free+0x28>
    1144:	39 d1                	cmp    %edx,%ecx
    1146:	73 f0                	jae    1138 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1148:	8b 73 fc             	mov    -0x4(%ebx),%esi
    114b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    114e:	39 fa                	cmp    %edi,%edx
    1150:	74 1e                	je     1170 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1152:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1155:	8b 50 04             	mov    0x4(%eax),%edx
    1158:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    115b:	39 f1                	cmp    %esi,%ecx
    115d:	74 28                	je     1187 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    115f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1161:	5b                   	pop    %ebx
  freep = p;
    1162:	a3 e4 19 00 00       	mov    %eax,0x19e4
}
    1167:	5e                   	pop    %esi
    1168:	5f                   	pop    %edi
    1169:	5d                   	pop    %ebp
    116a:	c3                   	ret    
    116b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    116f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1170:	03 72 04             	add    0x4(%edx),%esi
    1173:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1176:	8b 10                	mov    (%eax),%edx
    1178:	8b 12                	mov    (%edx),%edx
    117a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    117d:	8b 50 04             	mov    0x4(%eax),%edx
    1180:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1183:	39 f1                	cmp    %esi,%ecx
    1185:	75 d8                	jne    115f <free+0x4f>
    p->s.size += bp->s.size;
    1187:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    118a:	a3 e4 19 00 00       	mov    %eax,0x19e4
    p->s.size += bp->s.size;
    118f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1192:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1195:	89 10                	mov    %edx,(%eax)
}
    1197:	5b                   	pop    %ebx
    1198:	5e                   	pop    %esi
    1199:	5f                   	pop    %edi
    119a:	5d                   	pop    %ebp
    119b:	c3                   	ret    
    119c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000011a0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    11a0:	55                   	push   %ebp
    11a1:	89 e5                	mov    %esp,%ebp
    11a3:	57                   	push   %edi
    11a4:	56                   	push   %esi
    11a5:	53                   	push   %ebx
    11a6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    11a9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    11ac:	8b 3d e4 19 00 00    	mov    0x19e4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    11b2:	8d 70 07             	lea    0x7(%eax),%esi
    11b5:	c1 ee 03             	shr    $0x3,%esi
    11b8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    11bb:	85 ff                	test   %edi,%edi
    11bd:	0f 84 ad 00 00 00    	je     1270 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    11c3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    11c5:	8b 4a 04             	mov    0x4(%edx),%ecx
    11c8:	39 ce                	cmp    %ecx,%esi
    11ca:	76 72                	jbe    123e <malloc+0x9e>
    11cc:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    11d2:	bb 00 10 00 00       	mov    $0x1000,%ebx
    11d7:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    11da:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    11e1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    11e4:	eb 1b                	jmp    1201 <malloc+0x61>
    11e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ed:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    11f0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    11f2:	8b 48 04             	mov    0x4(%eax),%ecx
    11f5:	39 f1                	cmp    %esi,%ecx
    11f7:	73 4f                	jae    1248 <malloc+0xa8>
    11f9:	8b 3d e4 19 00 00    	mov    0x19e4,%edi
    11ff:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1201:	39 d7                	cmp    %edx,%edi
    1203:	75 eb                	jne    11f0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1205:	83 ec 0c             	sub    $0xc,%esp
    1208:	ff 75 e4             	pushl  -0x1c(%ebp)
    120b:	e8 49 fc ff ff       	call   e59 <sbrk>
  if(p == (char*)-1)
    1210:	83 c4 10             	add    $0x10,%esp
    1213:	83 f8 ff             	cmp    $0xffffffff,%eax
    1216:	74 1c                	je     1234 <malloc+0x94>
  hp->s.size = nu;
    1218:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    121b:	83 ec 0c             	sub    $0xc,%esp
    121e:	83 c0 08             	add    $0x8,%eax
    1221:	50                   	push   %eax
    1222:	e8 e9 fe ff ff       	call   1110 <free>
  return freep;
    1227:	8b 15 e4 19 00 00    	mov    0x19e4,%edx
      if((p = morecore(nunits)) == 0)
    122d:	83 c4 10             	add    $0x10,%esp
    1230:	85 d2                	test   %edx,%edx
    1232:	75 bc                	jne    11f0 <malloc+0x50>
        return 0;
  }
}
    1234:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1237:	31 c0                	xor    %eax,%eax
}
    1239:	5b                   	pop    %ebx
    123a:	5e                   	pop    %esi
    123b:	5f                   	pop    %edi
    123c:	5d                   	pop    %ebp
    123d:	c3                   	ret    
    if(p->s.size >= nunits){
    123e:	89 d0                	mov    %edx,%eax
    1240:	89 fa                	mov    %edi,%edx
    1242:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1248:	39 ce                	cmp    %ecx,%esi
    124a:	74 54                	je     12a0 <malloc+0x100>
        p->s.size -= nunits;
    124c:	29 f1                	sub    %esi,%ecx
    124e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1251:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    1254:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    1257:	89 15 e4 19 00 00    	mov    %edx,0x19e4
}
    125d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1260:	83 c0 08             	add    $0x8,%eax
}
    1263:	5b                   	pop    %ebx
    1264:	5e                   	pop    %esi
    1265:	5f                   	pop    %edi
    1266:	5d                   	pop    %ebp
    1267:	c3                   	ret    
    1268:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    126f:	90                   	nop
    base.s.ptr = freep = prevp = &base;
    1270:	c7 05 e4 19 00 00 e8 	movl   $0x19e8,0x19e4
    1277:	19 00 00 
    base.s.size = 0;
    127a:	bf e8 19 00 00       	mov    $0x19e8,%edi
    base.s.ptr = freep = prevp = &base;
    127f:	c7 05 e8 19 00 00 e8 	movl   $0x19e8,0x19e8
    1286:	19 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1289:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    128b:	c7 05 ec 19 00 00 00 	movl   $0x0,0x19ec
    1292:	00 00 00 
    if(p->s.size >= nunits){
    1295:	e9 32 ff ff ff       	jmp    11cc <malloc+0x2c>
    129a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    12a0:	8b 08                	mov    (%eax),%ecx
    12a2:	89 0a                	mov    %ecx,(%edx)
    12a4:	eb b1                	jmp    1257 <malloc+0xb7>
