
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
      11:	68 86 4d 00 00       	push   $0x4d86
      16:	6a 01                	push   $0x1
      18:	e8 13 3a 00 00       	call   3a30 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	59                   	pop    %ecx
      1e:	58                   	pop    %eax
      1f:	6a 00                	push   $0x0
      21:	68 9a 4d 00 00       	push   $0x4d9a
      26:	e8 d6 38 00 00       	call   3901 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 13                	js     45 <main+0x45>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	52                   	push   %edx
      33:	52                   	push   %edx
      34:	68 04 55 00 00       	push   $0x5504
      39:	6a 01                	push   $0x1
      3b:	e8 f0 39 00 00       	call   3a30 <printf>
    exit();
      40:	e8 7c 38 00 00       	call   38c1 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      45:	50                   	push   %eax
      46:	50                   	push   %eax
      47:	68 00 02 00 00       	push   $0x200
      4c:	68 9a 4d 00 00       	push   $0x4d9a
      51:	e8 ab 38 00 00       	call   3901 <open>
      56:	89 04 24             	mov    %eax,(%esp)
      59:	e8 8b 38 00 00       	call   38e9 <close>

  argptest();
      5e:	e8 7d 35 00 00       	call   35e0 <argptest>
  createdelete();
      63:	e8 b8 11 00 00       	call   1220 <createdelete>
  linkunlink();
      68:	e8 73 1a 00 00       	call   1ae0 <linkunlink>
  concreate();
      6d:	e8 6e 17 00 00       	call   17e0 <concreate>
  fourfiles();
      72:	e8 a9 0f 00 00       	call   1020 <fourfiles>
  sharedfd();
      77:	e8 e4 0d 00 00       	call   e60 <sharedfd>

  bigargtest();
      7c:	e8 1f 32 00 00       	call   32a0 <bigargtest>
  bigwrite();
      81:	e8 7a 23 00 00       	call   2400 <bigwrite>
  bigargtest();
      86:	e8 15 32 00 00       	call   32a0 <bigargtest>
  bsstest();
      8b:	e8 90 31 00 00       	call   3220 <bsstest>
  sbrktest();
      90:	e8 ab 2c 00 00       	call   2d40 <sbrktest>
  validatetest();
      95:	e8 d6 30 00 00       	call   3170 <validatetest>

  opentest();
      9a:	e8 61 03 00 00       	call   400 <opentest>
  writetest();
      9f:	e8 ec 03 00 00       	call   490 <writetest>
  writetest1();
      a4:	e8 c7 05 00 00       	call   670 <writetest1>
  createtest();
      a9:	e8 92 07 00 00       	call   840 <createtest>

  openiputtest();
      ae:	e8 4d 02 00 00       	call   300 <openiputtest>
  exitiputtest();
      b3:	e8 48 01 00 00       	call   200 <exitiputtest>
  iputtest();
      b8:	e8 63 00 00 00       	call   120 <iputtest>

  mem();
      bd:	e8 ce 0c 00 00       	call   d90 <mem>
  pipe1();
      c2:	e8 59 09 00 00       	call   a20 <pipe1>
  preempt();
      c7:	e8 e4 0a 00 00       	call   bb0 <preempt>
  exitwait();
      cc:	e8 3f 0c 00 00       	call   d10 <exitwait>

  rmdot();
      d1:	e8 1a 27 00 00       	call   27f0 <rmdot>
  fourteen();
      d6:	e8 d5 25 00 00       	call   26b0 <fourteen>
  bigfile();
      db:	e8 00 24 00 00       	call   24e0 <bigfile>
  subdir();
      e0:	e8 3b 1c 00 00       	call   1d20 <subdir>
  linktest();
      e5:	e8 e6 14 00 00       	call   15d0 <linktest>
  unlinkread();
      ea:	e8 51 13 00 00       	call   1440 <unlinkread>
  dirfile();
      ef:	e8 7c 28 00 00       	call   2970 <dirfile>
  iref();
      f4:	e8 77 2a 00 00       	call   2b70 <iref>
  forktest();
      f9:	e8 92 2b 00 00       	call   2c90 <forktest>
  bigdir(); // slow
      fe:	e8 ed 1a 00 00       	call   1bf0 <bigdir>

  uio();
     103:	e8 68 34 00 00       	call   3570 <uio>

  exectest();
     108:	e8 c3 08 00 00       	call   9d0 <exectest>

  exit();
     10d:	e8 af 37 00 00       	call   38c1 <exit>
     112:	66 90                	xchg   %ax,%ax
     114:	66 90                	xchg   %ax,%ax
     116:	66 90                	xchg   %ax,%ax
     118:	66 90                	xchg   %ax,%ax
     11a:	66 90                	xchg   %ax,%ax
     11c:	66 90                	xchg   %ax,%ax
     11e:	66 90                	xchg   %ax,%ax

00000120 <iputtest>:
{
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     126:	68 2c 3e 00 00       	push   $0x3e2c
     12b:	ff 35 30 5e 00 00    	pushl  0x5e30
     131:	e8 fa 38 00 00       	call   3a30 <printf>
  if(mkdir("iputdir") < 0){
     136:	c7 04 24 bf 3d 00 00 	movl   $0x3dbf,(%esp)
     13d:	e8 e7 37 00 00       	call   3929 <mkdir>
     142:	83 c4 10             	add    $0x10,%esp
     145:	85 c0                	test   %eax,%eax
     147:	78 58                	js     1a1 <iputtest+0x81>
  if(chdir("iputdir") < 0){
     149:	83 ec 0c             	sub    $0xc,%esp
     14c:	68 bf 3d 00 00       	push   $0x3dbf
     151:	e8 db 37 00 00       	call   3931 <chdir>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	0f 88 85 00 00 00    	js     1e6 <iputtest+0xc6>
  if(unlink("../iputdir") < 0){
     161:	83 ec 0c             	sub    $0xc,%esp
     164:	68 bc 3d 00 00       	push   $0x3dbc
     169:	e8 a3 37 00 00       	call   3911 <unlink>
     16e:	83 c4 10             	add    $0x10,%esp
     171:	85 c0                	test   %eax,%eax
     173:	78 5a                	js     1cf <iputtest+0xaf>
  if(chdir("/") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 e1 3d 00 00       	push   $0x3de1
     17d:	e8 af 37 00 00       	call   3931 <chdir>
     182:	83 c4 10             	add    $0x10,%esp
     185:	85 c0                	test   %eax,%eax
     187:	78 2f                	js     1b8 <iputtest+0x98>
  printf(stdout, "iput test ok\n");
     189:	83 ec 08             	sub    $0x8,%esp
     18c:	68 64 3e 00 00       	push   $0x3e64
     191:	ff 35 30 5e 00 00    	pushl  0x5e30
     197:	e8 94 38 00 00       	call   3a30 <printf>
}
     19c:	83 c4 10             	add    $0x10,%esp
     19f:	c9                   	leave  
     1a0:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     1a1:	50                   	push   %eax
     1a2:	50                   	push   %eax
     1a3:	68 98 3d 00 00       	push   $0x3d98
     1a8:	ff 35 30 5e 00 00    	pushl  0x5e30
     1ae:	e8 7d 38 00 00       	call   3a30 <printf>
    exit();
     1b3:	e8 09 37 00 00       	call   38c1 <exit>
    printf(stdout, "chdir / failed\n");
     1b8:	50                   	push   %eax
     1b9:	50                   	push   %eax
     1ba:	68 e3 3d 00 00       	push   $0x3de3
     1bf:	ff 35 30 5e 00 00    	pushl  0x5e30
     1c5:	e8 66 38 00 00       	call   3a30 <printf>
    exit();
     1ca:	e8 f2 36 00 00       	call   38c1 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
     1cf:	52                   	push   %edx
     1d0:	52                   	push   %edx
     1d1:	68 c7 3d 00 00       	push   $0x3dc7
     1d6:	ff 35 30 5e 00 00    	pushl  0x5e30
     1dc:	e8 4f 38 00 00       	call   3a30 <printf>
    exit();
     1e1:	e8 db 36 00 00       	call   38c1 <exit>
    printf(stdout, "chdir iputdir failed\n");
     1e6:	51                   	push   %ecx
     1e7:	51                   	push   %ecx
     1e8:	68 a6 3d 00 00       	push   $0x3da6
     1ed:	ff 35 30 5e 00 00    	pushl  0x5e30
     1f3:	e8 38 38 00 00       	call   3a30 <printf>
    exit();
     1f8:	e8 c4 36 00 00       	call   38c1 <exit>
     1fd:	8d 76 00             	lea    0x0(%esi),%esi

00000200 <exitiputtest>:
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
     206:	68 f3 3d 00 00       	push   $0x3df3
     20b:	ff 35 30 5e 00 00    	pushl  0x5e30
     211:	e8 1a 38 00 00       	call   3a30 <printf>
  pid = fork();
     216:	e8 9e 36 00 00       	call   38b9 <fork>
  if(pid < 0){
     21b:	83 c4 10             	add    $0x10,%esp
     21e:	85 c0                	test   %eax,%eax
     220:	0f 88 8a 00 00 00    	js     2b0 <exitiputtest+0xb0>
  if(pid == 0){
     226:	75 50                	jne    278 <exitiputtest+0x78>
    if(mkdir("iputdir") < 0){
     228:	83 ec 0c             	sub    $0xc,%esp
     22b:	68 bf 3d 00 00       	push   $0x3dbf
     230:	e8 f4 36 00 00       	call   3929 <mkdir>
     235:	83 c4 10             	add    $0x10,%esp
     238:	85 c0                	test   %eax,%eax
     23a:	0f 88 87 00 00 00    	js     2c7 <exitiputtest+0xc7>
    if(chdir("iputdir") < 0){
     240:	83 ec 0c             	sub    $0xc,%esp
     243:	68 bf 3d 00 00       	push   $0x3dbf
     248:	e8 e4 36 00 00       	call   3931 <chdir>
     24d:	83 c4 10             	add    $0x10,%esp
     250:	85 c0                	test   %eax,%eax
     252:	0f 88 86 00 00 00    	js     2de <exitiputtest+0xde>
    if(unlink("../iputdir") < 0){
     258:	83 ec 0c             	sub    $0xc,%esp
     25b:	68 bc 3d 00 00       	push   $0x3dbc
     260:	e8 ac 36 00 00       	call   3911 <unlink>
     265:	83 c4 10             	add    $0x10,%esp
     268:	85 c0                	test   %eax,%eax
     26a:	78 2c                	js     298 <exitiputtest+0x98>
    exit();
     26c:	e8 50 36 00 00       	call   38c1 <exit>
     271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  wait();
     278:	e8 4c 36 00 00       	call   38c9 <wait>
  printf(stdout, "exitiput test ok\n");
     27d:	83 ec 08             	sub    $0x8,%esp
     280:	68 16 3e 00 00       	push   $0x3e16
     285:	ff 35 30 5e 00 00    	pushl  0x5e30
     28b:	e8 a0 37 00 00       	call   3a30 <printf>
}
     290:	83 c4 10             	add    $0x10,%esp
     293:	c9                   	leave  
     294:	c3                   	ret    
     295:	8d 76 00             	lea    0x0(%esi),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     298:	83 ec 08             	sub    $0x8,%esp
     29b:	68 c7 3d 00 00       	push   $0x3dc7
     2a0:	ff 35 30 5e 00 00    	pushl  0x5e30
     2a6:	e8 85 37 00 00       	call   3a30 <printf>
      exit();
     2ab:	e8 11 36 00 00       	call   38c1 <exit>
    printf(stdout, "fork failed\n");
     2b0:	51                   	push   %ecx
     2b1:	51                   	push   %ecx
     2b2:	68 d9 4c 00 00       	push   $0x4cd9
     2b7:	ff 35 30 5e 00 00    	pushl  0x5e30
     2bd:	e8 6e 37 00 00       	call   3a30 <printf>
    exit();
     2c2:	e8 fa 35 00 00       	call   38c1 <exit>
      printf(stdout, "mkdir failed\n");
     2c7:	52                   	push   %edx
     2c8:	52                   	push   %edx
     2c9:	68 98 3d 00 00       	push   $0x3d98
     2ce:	ff 35 30 5e 00 00    	pushl  0x5e30
     2d4:	e8 57 37 00 00       	call   3a30 <printf>
      exit();
     2d9:	e8 e3 35 00 00       	call   38c1 <exit>
      printf(stdout, "child chdir failed\n");
     2de:	50                   	push   %eax
     2df:	50                   	push   %eax
     2e0:	68 02 3e 00 00       	push   $0x3e02
     2e5:	ff 35 30 5e 00 00    	pushl  0x5e30
     2eb:	e8 40 37 00 00       	call   3a30 <printf>
      exit();
     2f0:	e8 cc 35 00 00       	call   38c1 <exit>
     2f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     2fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000300 <openiputtest>:
{
     300:	55                   	push   %ebp
     301:	89 e5                	mov    %esp,%ebp
     303:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
     306:	68 28 3e 00 00       	push   $0x3e28
     30b:	ff 35 30 5e 00 00    	pushl  0x5e30
     311:	e8 1a 37 00 00       	call   3a30 <printf>
  if(mkdir("oidir") < 0){
     316:	c7 04 24 37 3e 00 00 	movl   $0x3e37,(%esp)
     31d:	e8 07 36 00 00       	call   3929 <mkdir>
     322:	83 c4 10             	add    $0x10,%esp
     325:	85 c0                	test   %eax,%eax
     327:	0f 88 9f 00 00 00    	js     3cc <openiputtest+0xcc>
  pid = fork();
     32d:	e8 87 35 00 00       	call   38b9 <fork>
  if(pid < 0){
     332:	85 c0                	test   %eax,%eax
     334:	78 7f                	js     3b5 <openiputtest+0xb5>
  if(pid == 0){
     336:	75 38                	jne    370 <openiputtest+0x70>
    int fd = open("oidir", O_RDWR);
     338:	83 ec 08             	sub    $0x8,%esp
     33b:	6a 02                	push   $0x2
     33d:	68 37 3e 00 00       	push   $0x3e37
     342:	e8 ba 35 00 00       	call   3901 <open>
    if(fd >= 0){
     347:	83 c4 10             	add    $0x10,%esp
     34a:	85 c0                	test   %eax,%eax
     34c:	78 62                	js     3b0 <openiputtest+0xb0>
      printf(stdout, "open directory for write succeeded\n");
     34e:	83 ec 08             	sub    $0x8,%esp
     351:	68 bc 4d 00 00       	push   $0x4dbc
     356:	ff 35 30 5e 00 00    	pushl  0x5e30
     35c:	e8 cf 36 00 00       	call   3a30 <printf>
      exit();
     361:	e8 5b 35 00 00       	call   38c1 <exit>
     366:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     36d:	8d 76 00             	lea    0x0(%esi),%esi
  sleep(1);
     370:	83 ec 0c             	sub    $0xc,%esp
     373:	6a 01                	push   $0x1
     375:	e8 d7 35 00 00       	call   3951 <sleep>
  if(unlink("oidir") != 0){
     37a:	c7 04 24 37 3e 00 00 	movl   $0x3e37,(%esp)
     381:	e8 8b 35 00 00       	call   3911 <unlink>
     386:	83 c4 10             	add    $0x10,%esp
     389:	85 c0                	test   %eax,%eax
     38b:	75 56                	jne    3e3 <openiputtest+0xe3>
  wait();
     38d:	e8 37 35 00 00       	call   38c9 <wait>
  printf(stdout, "openiput test ok\n");
     392:	83 ec 08             	sub    $0x8,%esp
     395:	68 60 3e 00 00       	push   $0x3e60
     39a:	ff 35 30 5e 00 00    	pushl  0x5e30
     3a0:	e8 8b 36 00 00       	call   3a30 <printf>
     3a5:	83 c4 10             	add    $0x10,%esp
}
     3a8:	c9                   	leave  
     3a9:	c3                   	ret    
     3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
     3b0:	e8 0c 35 00 00       	call   38c1 <exit>
    printf(stdout, "fork failed\n");
     3b5:	52                   	push   %edx
     3b6:	52                   	push   %edx
     3b7:	68 d9 4c 00 00       	push   $0x4cd9
     3bc:	ff 35 30 5e 00 00    	pushl  0x5e30
     3c2:	e8 69 36 00 00       	call   3a30 <printf>
    exit();
     3c7:	e8 f5 34 00 00       	call   38c1 <exit>
    printf(stdout, "mkdir oidir failed\n");
     3cc:	51                   	push   %ecx
     3cd:	51                   	push   %ecx
     3ce:	68 3d 3e 00 00       	push   $0x3e3d
     3d3:	ff 35 30 5e 00 00    	pushl  0x5e30
     3d9:	e8 52 36 00 00       	call   3a30 <printf>
    exit();
     3de:	e8 de 34 00 00       	call   38c1 <exit>
    printf(stdout, "unlink failed\n");
     3e3:	50                   	push   %eax
     3e4:	50                   	push   %eax
     3e5:	68 51 3e 00 00       	push   $0x3e51
     3ea:	ff 35 30 5e 00 00    	pushl  0x5e30
     3f0:	e8 3b 36 00 00       	call   3a30 <printf>
    exit();
     3f5:	e8 c7 34 00 00       	call   38c1 <exit>
     3fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000400 <opentest>:
{
     400:	55                   	push   %ebp
     401:	89 e5                	mov    %esp,%ebp
     403:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
     406:	68 72 3e 00 00       	push   $0x3e72
     40b:	ff 35 30 5e 00 00    	pushl  0x5e30
     411:	e8 1a 36 00 00       	call   3a30 <printf>
  fd = open("echo", 0);
     416:	58                   	pop    %eax
     417:	5a                   	pop    %edx
     418:	6a 00                	push   $0x0
     41a:	68 7d 3e 00 00       	push   $0x3e7d
     41f:	e8 dd 34 00 00       	call   3901 <open>
  if(fd < 0){
     424:	83 c4 10             	add    $0x10,%esp
     427:	85 c0                	test   %eax,%eax
     429:	78 36                	js     461 <opentest+0x61>
  close(fd);
     42b:	83 ec 0c             	sub    $0xc,%esp
     42e:	50                   	push   %eax
     42f:	e8 b5 34 00 00       	call   38e9 <close>
  fd = open("doesnotexist", 0);
     434:	5a                   	pop    %edx
     435:	59                   	pop    %ecx
     436:	6a 00                	push   $0x0
     438:	68 95 3e 00 00       	push   $0x3e95
     43d:	e8 bf 34 00 00       	call   3901 <open>
  if(fd >= 0){
     442:	83 c4 10             	add    $0x10,%esp
     445:	85 c0                	test   %eax,%eax
     447:	79 2f                	jns    478 <opentest+0x78>
  printf(stdout, "open test ok\n");
     449:	83 ec 08             	sub    $0x8,%esp
     44c:	68 c0 3e 00 00       	push   $0x3ec0
     451:	ff 35 30 5e 00 00    	pushl  0x5e30
     457:	e8 d4 35 00 00       	call   3a30 <printf>
}
     45c:	83 c4 10             	add    $0x10,%esp
     45f:	c9                   	leave  
     460:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
     461:	50                   	push   %eax
     462:	50                   	push   %eax
     463:	68 82 3e 00 00       	push   $0x3e82
     468:	ff 35 30 5e 00 00    	pushl  0x5e30
     46e:	e8 bd 35 00 00       	call   3a30 <printf>
    exit();
     473:	e8 49 34 00 00       	call   38c1 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     478:	50                   	push   %eax
     479:	50                   	push   %eax
     47a:	68 a2 3e 00 00       	push   $0x3ea2
     47f:	ff 35 30 5e 00 00    	pushl  0x5e30
     485:	e8 a6 35 00 00       	call   3a30 <printf>
    exit();
     48a:	e8 32 34 00 00       	call   38c1 <exit>
     48f:	90                   	nop

00000490 <writetest>:
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	56                   	push   %esi
     494:	53                   	push   %ebx
  printf(stdout, "small file test\n");
     495:	83 ec 08             	sub    $0x8,%esp
     498:	68 ce 3e 00 00       	push   $0x3ece
     49d:	ff 35 30 5e 00 00    	pushl  0x5e30
     4a3:	e8 88 35 00 00       	call   3a30 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4a8:	58                   	pop    %eax
     4a9:	5a                   	pop    %edx
     4aa:	68 02 02 00 00       	push   $0x202
     4af:	68 df 3e 00 00       	push   $0x3edf
     4b4:	e8 48 34 00 00       	call   3901 <open>
  if(fd >= 0){
     4b9:	83 c4 10             	add    $0x10,%esp
     4bc:	85 c0                	test   %eax,%eax
     4be:	0f 88 88 01 00 00    	js     64c <writetest+0x1bc>
    printf(stdout, "creat small succeeded; ok\n");
     4c4:	83 ec 08             	sub    $0x8,%esp
     4c7:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 100; i++){
     4c9:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4cb:	68 e5 3e 00 00       	push   $0x3ee5
     4d0:	ff 35 30 5e 00 00    	pushl  0x5e30
     4d6:	e8 55 35 00 00       	call   3a30 <printf>
     4db:	83 c4 10             	add    $0x10,%esp
     4de:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4e0:	83 ec 04             	sub    $0x4,%esp
     4e3:	6a 0a                	push   $0xa
     4e5:	68 1c 3f 00 00       	push   $0x3f1c
     4ea:	56                   	push   %esi
     4eb:	e8 f1 33 00 00       	call   38e1 <write>
     4f0:	83 c4 10             	add    $0x10,%esp
     4f3:	83 f8 0a             	cmp    $0xa,%eax
     4f6:	0f 85 d9 00 00 00    	jne    5d5 <writetest+0x145>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     4fc:	83 ec 04             	sub    $0x4,%esp
     4ff:	6a 0a                	push   $0xa
     501:	68 27 3f 00 00       	push   $0x3f27
     506:	56                   	push   %esi
     507:	e8 d5 33 00 00       	call   38e1 <write>
     50c:	83 c4 10             	add    $0x10,%esp
     50f:	83 f8 0a             	cmp    $0xa,%eax
     512:	0f 85 d6 00 00 00    	jne    5ee <writetest+0x15e>
  for(i = 0; i < 100; i++){
     518:	83 c3 01             	add    $0x1,%ebx
     51b:	83 fb 64             	cmp    $0x64,%ebx
     51e:	75 c0                	jne    4e0 <writetest+0x50>
  printf(stdout, "writes ok\n");
     520:	83 ec 08             	sub    $0x8,%esp
     523:	68 32 3f 00 00       	push   $0x3f32
     528:	ff 35 30 5e 00 00    	pushl  0x5e30
     52e:	e8 fd 34 00 00       	call   3a30 <printf>
  close(fd);
     533:	89 34 24             	mov    %esi,(%esp)
     536:	e8 ae 33 00 00       	call   38e9 <close>
  fd = open("small", O_RDONLY);
     53b:	5b                   	pop    %ebx
     53c:	5e                   	pop    %esi
     53d:	6a 00                	push   $0x0
     53f:	68 df 3e 00 00       	push   $0x3edf
     544:	e8 b8 33 00 00       	call   3901 <open>
  if(fd >= 0){
     549:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_RDONLY);
     54c:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     54e:	85 c0                	test   %eax,%eax
     550:	0f 88 b1 00 00 00    	js     607 <writetest+0x177>
    printf(stdout, "open small succeeded ok\n");
     556:	83 ec 08             	sub    $0x8,%esp
     559:	68 3d 3f 00 00       	push   $0x3f3d
     55e:	ff 35 30 5e 00 00    	pushl  0x5e30
     564:	e8 c7 34 00 00       	call   3a30 <printf>
  i = read(fd, buf, 2000);
     569:	83 c4 0c             	add    $0xc,%esp
     56c:	68 d0 07 00 00       	push   $0x7d0
     571:	68 60 86 00 00       	push   $0x8660
     576:	53                   	push   %ebx
     577:	e8 5d 33 00 00       	call   38d9 <read>
  if(i == 2000){
     57c:	83 c4 10             	add    $0x10,%esp
     57f:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     584:	0f 85 94 00 00 00    	jne    61e <writetest+0x18e>
    printf(stdout, "read succeeded ok\n");
     58a:	83 ec 08             	sub    $0x8,%esp
     58d:	68 71 3f 00 00       	push   $0x3f71
     592:	ff 35 30 5e 00 00    	pushl  0x5e30
     598:	e8 93 34 00 00       	call   3a30 <printf>
  close(fd);
     59d:	89 1c 24             	mov    %ebx,(%esp)
     5a0:	e8 44 33 00 00       	call   38e9 <close>
  if(unlink("small") < 0){
     5a5:	c7 04 24 df 3e 00 00 	movl   $0x3edf,(%esp)
     5ac:	e8 60 33 00 00       	call   3911 <unlink>
     5b1:	83 c4 10             	add    $0x10,%esp
     5b4:	85 c0                	test   %eax,%eax
     5b6:	78 7d                	js     635 <writetest+0x1a5>
  printf(stdout, "small file test ok\n");
     5b8:	83 ec 08             	sub    $0x8,%esp
     5bb:	68 99 3f 00 00       	push   $0x3f99
     5c0:	ff 35 30 5e 00 00    	pushl  0x5e30
     5c6:	e8 65 34 00 00       	call   3a30 <printf>
}
     5cb:	83 c4 10             	add    $0x10,%esp
     5ce:	8d 65 f8             	lea    -0x8(%ebp),%esp
     5d1:	5b                   	pop    %ebx
     5d2:	5e                   	pop    %esi
     5d3:	5d                   	pop    %ebp
     5d4:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
     5d5:	83 ec 04             	sub    $0x4,%esp
     5d8:	53                   	push   %ebx
     5d9:	68 e0 4d 00 00       	push   $0x4de0
     5de:	ff 35 30 5e 00 00    	pushl  0x5e30
     5e4:	e8 47 34 00 00       	call   3a30 <printf>
      exit();
     5e9:	e8 d3 32 00 00       	call   38c1 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     5ee:	83 ec 04             	sub    $0x4,%esp
     5f1:	53                   	push   %ebx
     5f2:	68 04 4e 00 00       	push   $0x4e04
     5f7:	ff 35 30 5e 00 00    	pushl  0x5e30
     5fd:	e8 2e 34 00 00       	call   3a30 <printf>
      exit();
     602:	e8 ba 32 00 00       	call   38c1 <exit>
    printf(stdout, "error: open small failed!\n");
     607:	51                   	push   %ecx
     608:	51                   	push   %ecx
     609:	68 56 3f 00 00       	push   $0x3f56
     60e:	ff 35 30 5e 00 00    	pushl  0x5e30
     614:	e8 17 34 00 00       	call   3a30 <printf>
    exit();
     619:	e8 a3 32 00 00       	call   38c1 <exit>
    printf(stdout, "read failed\n");
     61e:	52                   	push   %edx
     61f:	52                   	push   %edx
     620:	68 9d 42 00 00       	push   $0x429d
     625:	ff 35 30 5e 00 00    	pushl  0x5e30
     62b:	e8 00 34 00 00       	call   3a30 <printf>
    exit();
     630:	e8 8c 32 00 00       	call   38c1 <exit>
    printf(stdout, "unlink small failed\n");
     635:	50                   	push   %eax
     636:	50                   	push   %eax
     637:	68 84 3f 00 00       	push   $0x3f84
     63c:	ff 35 30 5e 00 00    	pushl  0x5e30
     642:	e8 e9 33 00 00       	call   3a30 <printf>
    exit();
     647:	e8 75 32 00 00       	call   38c1 <exit>
    printf(stdout, "error: creat small failed!\n");
     64c:	50                   	push   %eax
     64d:	50                   	push   %eax
     64e:	68 00 3f 00 00       	push   $0x3f00
     653:	ff 35 30 5e 00 00    	pushl  0x5e30
     659:	e8 d2 33 00 00       	call   3a30 <printf>
    exit();
     65e:	e8 5e 32 00 00       	call   38c1 <exit>
     663:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     66a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000670 <writetest1>:
{
     670:	55                   	push   %ebp
     671:	89 e5                	mov    %esp,%ebp
     673:	56                   	push   %esi
     674:	53                   	push   %ebx
  printf(stdout, "big files test\n");
     675:	83 ec 08             	sub    $0x8,%esp
     678:	68 ad 3f 00 00       	push   $0x3fad
     67d:	ff 35 30 5e 00 00    	pushl  0x5e30
     683:	e8 a8 33 00 00       	call   3a30 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     688:	58                   	pop    %eax
     689:	5a                   	pop    %edx
     68a:	68 02 02 00 00       	push   $0x202
     68f:	68 27 40 00 00       	push   $0x4027
     694:	e8 68 32 00 00       	call   3901 <open>
  if(fd < 0){
     699:	83 c4 10             	add    $0x10,%esp
     69c:	85 c0                	test   %eax,%eax
     69e:	0f 88 61 01 00 00    	js     805 <writetest1+0x195>
     6a4:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
     6a6:	31 db                	xor    %ebx,%ebx
     6a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6af:	90                   	nop
    if(write(fd, buf, 512) != 512){
     6b0:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
     6b3:	89 1d 60 86 00 00    	mov    %ebx,0x8660
    if(write(fd, buf, 512) != 512){
     6b9:	68 00 02 00 00       	push   $0x200
     6be:	68 60 86 00 00       	push   $0x8660
     6c3:	56                   	push   %esi
     6c4:	e8 18 32 00 00       	call   38e1 <write>
     6c9:	83 c4 10             	add    $0x10,%esp
     6cc:	3d 00 02 00 00       	cmp    $0x200,%eax
     6d1:	0f 85 b3 00 00 00    	jne    78a <writetest1+0x11a>
  for(i = 0; i < MAXFILE; i++){
     6d7:	83 c3 01             	add    $0x1,%ebx
     6da:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6e0:	75 ce                	jne    6b0 <writetest1+0x40>
  close(fd);
     6e2:	83 ec 0c             	sub    $0xc,%esp
     6e5:	56                   	push   %esi
     6e6:	e8 fe 31 00 00       	call   38e9 <close>
  fd = open("big", O_RDONLY);
     6eb:	5b                   	pop    %ebx
     6ec:	5e                   	pop    %esi
     6ed:	6a 00                	push   $0x0
     6ef:	68 27 40 00 00       	push   $0x4027
     6f4:	e8 08 32 00 00       	call   3901 <open>
  if(fd < 0){
     6f9:	83 c4 10             	add    $0x10,%esp
  fd = open("big", O_RDONLY);
     6fc:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     6fe:	85 c0                	test   %eax,%eax
     700:	0f 88 e8 00 00 00    	js     7ee <writetest1+0x17e>
  n = 0;
     706:	31 db                	xor    %ebx,%ebx
     708:	eb 1d                	jmp    727 <writetest1+0xb7>
     70a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
     710:	3d 00 02 00 00       	cmp    $0x200,%eax
     715:	0f 85 9f 00 00 00    	jne    7ba <writetest1+0x14a>
    if(((int*)buf)[0] != n){
     71b:	a1 60 86 00 00       	mov    0x8660,%eax
     720:	39 d8                	cmp    %ebx,%eax
     722:	75 7f                	jne    7a3 <writetest1+0x133>
    n++;
     724:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     727:	83 ec 04             	sub    $0x4,%esp
     72a:	68 00 02 00 00       	push   $0x200
     72f:	68 60 86 00 00       	push   $0x8660
     734:	56                   	push   %esi
     735:	e8 9f 31 00 00       	call   38d9 <read>
    if(i == 0){
     73a:	83 c4 10             	add    $0x10,%esp
     73d:	85 c0                	test   %eax,%eax
     73f:	75 cf                	jne    710 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     741:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     747:	0f 84 86 00 00 00    	je     7d3 <writetest1+0x163>
  close(fd);
     74d:	83 ec 0c             	sub    $0xc,%esp
     750:	56                   	push   %esi
     751:	e8 93 31 00 00       	call   38e9 <close>
  if(unlink("big") < 0){
     756:	c7 04 24 27 40 00 00 	movl   $0x4027,(%esp)
     75d:	e8 af 31 00 00       	call   3911 <unlink>
     762:	83 c4 10             	add    $0x10,%esp
     765:	85 c0                	test   %eax,%eax
     767:	0f 88 af 00 00 00    	js     81c <writetest1+0x1ac>
  printf(stdout, "big files ok\n");
     76d:	83 ec 08             	sub    $0x8,%esp
     770:	68 4e 40 00 00       	push   $0x404e
     775:	ff 35 30 5e 00 00    	pushl  0x5e30
     77b:	e8 b0 32 00 00       	call   3a30 <printf>
}
     780:	83 c4 10             	add    $0x10,%esp
     783:	8d 65 f8             	lea    -0x8(%ebp),%esp
     786:	5b                   	pop    %ebx
     787:	5e                   	pop    %esi
     788:	5d                   	pop    %ebp
     789:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
     78a:	83 ec 04             	sub    $0x4,%esp
     78d:	53                   	push   %ebx
     78e:	68 d7 3f 00 00       	push   $0x3fd7
     793:	ff 35 30 5e 00 00    	pushl  0x5e30
     799:	e8 92 32 00 00       	call   3a30 <printf>
      exit();
     79e:	e8 1e 31 00 00       	call   38c1 <exit>
      printf(stdout, "read content of block %d is %d\n",
     7a3:	50                   	push   %eax
     7a4:	53                   	push   %ebx
     7a5:	68 28 4e 00 00       	push   $0x4e28
     7aa:	ff 35 30 5e 00 00    	pushl  0x5e30
     7b0:	e8 7b 32 00 00       	call   3a30 <printf>
      exit();
     7b5:	e8 07 31 00 00       	call   38c1 <exit>
      printf(stdout, "read failed %d\n", i);
     7ba:	83 ec 04             	sub    $0x4,%esp
     7bd:	50                   	push   %eax
     7be:	68 2b 40 00 00       	push   $0x402b
     7c3:	ff 35 30 5e 00 00    	pushl  0x5e30
     7c9:	e8 62 32 00 00       	call   3a30 <printf>
      exit();
     7ce:	e8 ee 30 00 00       	call   38c1 <exit>
        printf(stdout, "read only %d blocks from big", n);
     7d3:	52                   	push   %edx
     7d4:	68 8b 00 00 00       	push   $0x8b
     7d9:	68 0e 40 00 00       	push   $0x400e
     7de:	ff 35 30 5e 00 00    	pushl  0x5e30
     7e4:	e8 47 32 00 00       	call   3a30 <printf>
        exit();
     7e9:	e8 d3 30 00 00       	call   38c1 <exit>
    printf(stdout, "error: open big failed!\n");
     7ee:	51                   	push   %ecx
     7ef:	51                   	push   %ecx
     7f0:	68 f5 3f 00 00       	push   $0x3ff5
     7f5:	ff 35 30 5e 00 00    	pushl  0x5e30
     7fb:	e8 30 32 00 00       	call   3a30 <printf>
    exit();
     800:	e8 bc 30 00 00       	call   38c1 <exit>
    printf(stdout, "error: creat big failed!\n");
     805:	50                   	push   %eax
     806:	50                   	push   %eax
     807:	68 bd 3f 00 00       	push   $0x3fbd
     80c:	ff 35 30 5e 00 00    	pushl  0x5e30
     812:	e8 19 32 00 00       	call   3a30 <printf>
    exit();
     817:	e8 a5 30 00 00       	call   38c1 <exit>
    printf(stdout, "unlink big failed\n");
     81c:	50                   	push   %eax
     81d:	50                   	push   %eax
     81e:	68 3b 40 00 00       	push   $0x403b
     823:	ff 35 30 5e 00 00    	pushl  0x5e30
     829:	e8 02 32 00 00       	call   3a30 <printf>
    exit();
     82e:	e8 8e 30 00 00       	call   38c1 <exit>
     833:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     83a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000840 <createtest>:
{
     840:	55                   	push   %ebp
     841:	89 e5                	mov    %esp,%ebp
     843:	53                   	push   %ebx
  name[2] = '\0';
     844:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     849:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     84c:	68 48 4e 00 00       	push   $0x4e48
     851:	ff 35 30 5e 00 00    	pushl  0x5e30
     857:	e8 d4 31 00 00       	call   3a30 <printf>
  name[0] = 'a';
     85c:	c6 05 60 a6 00 00 61 	movb   $0x61,0xa660
  name[2] = '\0';
     863:	83 c4 10             	add    $0x10,%esp
     866:	c6 05 62 a6 00 00 00 	movb   $0x0,0xa662
  for(i = 0; i < 52; i++){
     86d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
     870:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
     873:	88 1d 61 a6 00 00    	mov    %bl,0xa661
    fd = open(name, O_CREATE|O_RDWR);
     879:	83 c3 01             	add    $0x1,%ebx
     87c:	68 02 02 00 00       	push   $0x202
     881:	68 60 a6 00 00       	push   $0xa660
     886:	e8 76 30 00 00       	call   3901 <open>
    close(fd);
     88b:	89 04 24             	mov    %eax,(%esp)
     88e:	e8 56 30 00 00       	call   38e9 <close>
  for(i = 0; i < 52; i++){
     893:	83 c4 10             	add    $0x10,%esp
     896:	80 fb 64             	cmp    $0x64,%bl
     899:	75 d5                	jne    870 <createtest+0x30>
  name[0] = 'a';
     89b:	c6 05 60 a6 00 00 61 	movb   $0x61,0xa660
  name[2] = '\0';
     8a2:	bb 30 00 00 00       	mov    $0x30,%ebx
     8a7:	c6 05 62 a6 00 00 00 	movb   $0x0,0xa662
  for(i = 0; i < 52; i++){
     8ae:	66 90                	xchg   %ax,%ax
    unlink(name);
     8b0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
     8b3:	88 1d 61 a6 00 00    	mov    %bl,0xa661
    unlink(name);
     8b9:	83 c3 01             	add    $0x1,%ebx
     8bc:	68 60 a6 00 00       	push   $0xa660
     8c1:	e8 4b 30 00 00       	call   3911 <unlink>
  for(i = 0; i < 52; i++){
     8c6:	83 c4 10             	add    $0x10,%esp
     8c9:	80 fb 64             	cmp    $0x64,%bl
     8cc:	75 e2                	jne    8b0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     8ce:	83 ec 08             	sub    $0x8,%esp
     8d1:	68 70 4e 00 00       	push   $0x4e70
     8d6:	ff 35 30 5e 00 00    	pushl  0x5e30
     8dc:	e8 4f 31 00 00       	call   3a30 <printf>
}
     8e1:	83 c4 10             	add    $0x10,%esp
     8e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     8e7:	c9                   	leave  
     8e8:	c3                   	ret    
     8e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008f0 <dirtest>:
{
     8f0:	55                   	push   %ebp
     8f1:	89 e5                	mov    %esp,%ebp
     8f3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     8f6:	68 5c 40 00 00       	push   $0x405c
     8fb:	ff 35 30 5e 00 00    	pushl  0x5e30
     901:	e8 2a 31 00 00       	call   3a30 <printf>
  if(mkdir("dir0") < 0){
     906:	c7 04 24 68 40 00 00 	movl   $0x4068,(%esp)
     90d:	e8 17 30 00 00       	call   3929 <mkdir>
     912:	83 c4 10             	add    $0x10,%esp
     915:	85 c0                	test   %eax,%eax
     917:	78 58                	js     971 <dirtest+0x81>
  if(chdir("dir0") < 0){
     919:	83 ec 0c             	sub    $0xc,%esp
     91c:	68 68 40 00 00       	push   $0x4068
     921:	e8 0b 30 00 00       	call   3931 <chdir>
     926:	83 c4 10             	add    $0x10,%esp
     929:	85 c0                	test   %eax,%eax
     92b:	0f 88 85 00 00 00    	js     9b6 <dirtest+0xc6>
  if(chdir("..") < 0){
     931:	83 ec 0c             	sub    $0xc,%esp
     934:	68 0d 46 00 00       	push   $0x460d
     939:	e8 f3 2f 00 00       	call   3931 <chdir>
     93e:	83 c4 10             	add    $0x10,%esp
     941:	85 c0                	test   %eax,%eax
     943:	78 5a                	js     99f <dirtest+0xaf>
  if(unlink("dir0") < 0){
     945:	83 ec 0c             	sub    $0xc,%esp
     948:	68 68 40 00 00       	push   $0x4068
     94d:	e8 bf 2f 00 00       	call   3911 <unlink>
     952:	83 c4 10             	add    $0x10,%esp
     955:	85 c0                	test   %eax,%eax
     957:	78 2f                	js     988 <dirtest+0x98>
  printf(stdout, "mkdir test ok\n");
     959:	83 ec 08             	sub    $0x8,%esp
     95c:	68 a5 40 00 00       	push   $0x40a5
     961:	ff 35 30 5e 00 00    	pushl  0x5e30
     967:	e8 c4 30 00 00       	call   3a30 <printf>
}
     96c:	83 c4 10             	add    $0x10,%esp
     96f:	c9                   	leave  
     970:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     971:	50                   	push   %eax
     972:	50                   	push   %eax
     973:	68 98 3d 00 00       	push   $0x3d98
     978:	ff 35 30 5e 00 00    	pushl  0x5e30
     97e:	e8 ad 30 00 00       	call   3a30 <printf>
    exit();
     983:	e8 39 2f 00 00       	call   38c1 <exit>
    printf(stdout, "unlink dir0 failed\n");
     988:	50                   	push   %eax
     989:	50                   	push   %eax
     98a:	68 91 40 00 00       	push   $0x4091
     98f:	ff 35 30 5e 00 00    	pushl  0x5e30
     995:	e8 96 30 00 00       	call   3a30 <printf>
    exit();
     99a:	e8 22 2f 00 00       	call   38c1 <exit>
    printf(stdout, "chdir .. failed\n");
     99f:	52                   	push   %edx
     9a0:	52                   	push   %edx
     9a1:	68 80 40 00 00       	push   $0x4080
     9a6:	ff 35 30 5e 00 00    	pushl  0x5e30
     9ac:	e8 7f 30 00 00       	call   3a30 <printf>
    exit();
     9b1:	e8 0b 2f 00 00       	call   38c1 <exit>
    printf(stdout, "chdir dir0 failed\n");
     9b6:	51                   	push   %ecx
     9b7:	51                   	push   %ecx
     9b8:	68 6d 40 00 00       	push   $0x406d
     9bd:	ff 35 30 5e 00 00    	pushl  0x5e30
     9c3:	e8 68 30 00 00       	call   3a30 <printf>
    exit();
     9c8:	e8 f4 2e 00 00       	call   38c1 <exit>
     9cd:	8d 76 00             	lea    0x0(%esi),%esi

000009d0 <exectest>:
{
     9d0:	55                   	push   %ebp
     9d1:	89 e5                	mov    %esp,%ebp
     9d3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     9d6:	68 b4 40 00 00       	push   $0x40b4
     9db:	ff 35 30 5e 00 00    	pushl  0x5e30
     9e1:	e8 4a 30 00 00       	call   3a30 <printf>
  if(exec("echo", echoargv) < 0){
     9e6:	5a                   	pop    %edx
     9e7:	59                   	pop    %ecx
     9e8:	68 34 5e 00 00       	push   $0x5e34
     9ed:	68 7d 3e 00 00       	push   $0x3e7d
     9f2:	e8 02 2f 00 00       	call   38f9 <exec>
     9f7:	83 c4 10             	add    $0x10,%esp
     9fa:	85 c0                	test   %eax,%eax
     9fc:	78 02                	js     a00 <exectest+0x30>
}
     9fe:	c9                   	leave  
     9ff:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     a00:	50                   	push   %eax
     a01:	50                   	push   %eax
     a02:	68 bf 40 00 00       	push   $0x40bf
     a07:	ff 35 30 5e 00 00    	pushl  0x5e30
     a0d:	e8 1e 30 00 00       	call   3a30 <printf>
    exit();
     a12:	e8 aa 2e 00 00       	call   38c1 <exit>
     a17:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a1e:	66 90                	xchg   %ax,%ax

00000a20 <pipe1>:
{
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	57                   	push   %edi
     a24:	56                   	push   %esi
  if(pipe(fds) != 0){
     a25:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     a28:	53                   	push   %ebx
     a29:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
     a2c:	50                   	push   %eax
     a2d:	e8 9f 2e 00 00       	call   38d1 <pipe>
     a32:	83 c4 10             	add    $0x10,%esp
     a35:	85 c0                	test   %eax,%eax
     a37:	0f 85 34 01 00 00    	jne    b71 <pipe1+0x151>
  pid = fork();
     a3d:	e8 77 2e 00 00       	call   38b9 <fork>
  if(pid == 0){
     a42:	85 c0                	test   %eax,%eax
     a44:	0f 84 89 00 00 00    	je     ad3 <pipe1+0xb3>
  } else if(pid > 0){
     a4a:	0f 8e 34 01 00 00    	jle    b84 <pipe1+0x164>
    close(fds[1]);
     a50:	83 ec 0c             	sub    $0xc,%esp
     a53:	ff 75 e4             	pushl  -0x1c(%ebp)
  seq = 0;
     a56:	31 db                	xor    %ebx,%ebx
    cc = 1;
     a58:	bf 01 00 00 00       	mov    $0x1,%edi
    close(fds[1]);
     a5d:	e8 87 2e 00 00       	call   38e9 <close>
    total = 0;
     a62:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     a69:	83 c4 10             	add    $0x10,%esp
     a6c:	83 ec 04             	sub    $0x4,%esp
     a6f:	57                   	push   %edi
     a70:	68 60 86 00 00       	push   $0x8660
     a75:	ff 75 e0             	pushl  -0x20(%ebp)
     a78:	e8 5c 2e 00 00       	call   38d9 <read>
     a7d:	83 c4 10             	add    $0x10,%esp
     a80:	85 c0                	test   %eax,%eax
     a82:	0f 8e a5 00 00 00    	jle    b2d <pipe1+0x10d>
     a88:	8d 34 03             	lea    (%ebx,%eax,1),%esi
      for(i = 0; i < n; i++){
     a8b:	31 d2                	xor    %edx,%edx
     a8d:	8d 76 00             	lea    0x0(%esi),%esi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a90:	8d 4b 01             	lea    0x1(%ebx),%ecx
     a93:	38 9a 60 86 00 00    	cmp    %bl,0x8660(%edx)
     a99:	75 1e                	jne    ab9 <pipe1+0x99>
      for(i = 0; i < n; i++){
     a9b:	83 c2 01             	add    $0x1,%edx
     a9e:	89 cb                	mov    %ecx,%ebx
     aa0:	39 f1                	cmp    %esi,%ecx
     aa2:	75 ec                	jne    a90 <pipe1+0x70>
      cc = cc * 2;
     aa4:	01 ff                	add    %edi,%edi
      total += n;
     aa6:	01 45 d4             	add    %eax,-0x2c(%ebp)
     aa9:	b8 00 20 00 00       	mov    $0x2000,%eax
     aae:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
     ab4:	0f 4f f8             	cmovg  %eax,%edi
     ab7:	eb b3                	jmp    a6c <pipe1+0x4c>
          printf(1, "pipe1 oops 2\n");
     ab9:	83 ec 08             	sub    $0x8,%esp
     abc:	68 ee 40 00 00       	push   $0x40ee
     ac1:	6a 01                	push   $0x1
     ac3:	e8 68 2f 00 00       	call   3a30 <printf>
          return;
     ac8:	83 c4 10             	add    $0x10,%esp
}
     acb:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ace:	5b                   	pop    %ebx
     acf:	5e                   	pop    %esi
     ad0:	5f                   	pop    %edi
     ad1:	5d                   	pop    %ebp
     ad2:	c3                   	ret    
    close(fds[0]);
     ad3:	83 ec 0c             	sub    $0xc,%esp
     ad6:	ff 75 e0             	pushl  -0x20(%ebp)
  seq = 0;
     ad9:	31 db                	xor    %ebx,%ebx
    close(fds[0]);
     adb:	e8 09 2e 00 00       	call   38e9 <close>
     ae0:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 1033; i++)
     ae3:	31 c0                	xor    %eax,%eax
     ae5:	8d 76 00             	lea    0x0(%esi),%esi
        buf[i] = seq++;
     ae8:	8d 14 18             	lea    (%eax,%ebx,1),%edx
      for(i = 0; i < 1033; i++)
     aeb:	83 c0 01             	add    $0x1,%eax
        buf[i] = seq++;
     aee:	88 90 5f 86 00 00    	mov    %dl,0x865f(%eax)
      for(i = 0; i < 1033; i++)
     af4:	3d 09 04 00 00       	cmp    $0x409,%eax
     af9:	75 ed                	jne    ae8 <pipe1+0xc8>
      if(write(fds[1], buf, 1033) != 1033){
     afb:	83 ec 04             	sub    $0x4,%esp
     afe:	81 c3 09 04 00 00    	add    $0x409,%ebx
     b04:	68 09 04 00 00       	push   $0x409
     b09:	68 60 86 00 00       	push   $0x8660
     b0e:	ff 75 e4             	pushl  -0x1c(%ebp)
     b11:	e8 cb 2d 00 00       	call   38e1 <write>
     b16:	83 c4 10             	add    $0x10,%esp
     b19:	3d 09 04 00 00       	cmp    $0x409,%eax
     b1e:	75 77                	jne    b97 <pipe1+0x177>
    for(n = 0; n < 5; n++){
     b20:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b26:	75 bb                	jne    ae3 <pipe1+0xc3>
    exit();
     b28:	e8 94 2d 00 00       	call   38c1 <exit>
    if(total != 5 * 1033){
     b2d:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b34:	75 26                	jne    b5c <pipe1+0x13c>
    close(fds[0]);
     b36:	83 ec 0c             	sub    $0xc,%esp
     b39:	ff 75 e0             	pushl  -0x20(%ebp)
     b3c:	e8 a8 2d 00 00       	call   38e9 <close>
    wait();
     b41:	e8 83 2d 00 00       	call   38c9 <wait>
  printf(1, "pipe1 ok\n");
     b46:	5a                   	pop    %edx
     b47:	59                   	pop    %ecx
     b48:	68 13 41 00 00       	push   $0x4113
     b4d:	6a 01                	push   $0x1
     b4f:	e8 dc 2e 00 00       	call   3a30 <printf>
     b54:	83 c4 10             	add    $0x10,%esp
     b57:	e9 6f ff ff ff       	jmp    acb <pipe1+0xab>
      printf(1, "pipe1 oops 3 total %d\n", total);
     b5c:	53                   	push   %ebx
     b5d:	ff 75 d4             	pushl  -0x2c(%ebp)
     b60:	68 fc 40 00 00       	push   $0x40fc
     b65:	6a 01                	push   $0x1
     b67:	e8 c4 2e 00 00       	call   3a30 <printf>
      exit();
     b6c:	e8 50 2d 00 00       	call   38c1 <exit>
    printf(1, "pipe() failed\n");
     b71:	57                   	push   %edi
     b72:	57                   	push   %edi
     b73:	68 d1 40 00 00       	push   $0x40d1
     b78:	6a 01                	push   $0x1
     b7a:	e8 b1 2e 00 00       	call   3a30 <printf>
    exit();
     b7f:	e8 3d 2d 00 00       	call   38c1 <exit>
    printf(1, "fork() failed\n");
     b84:	50                   	push   %eax
     b85:	50                   	push   %eax
     b86:	68 1d 41 00 00       	push   $0x411d
     b8b:	6a 01                	push   $0x1
     b8d:	e8 9e 2e 00 00       	call   3a30 <printf>
    exit();
     b92:	e8 2a 2d 00 00       	call   38c1 <exit>
        printf(1, "pipe1 oops 1\n");
     b97:	56                   	push   %esi
     b98:	56                   	push   %esi
     b99:	68 e0 40 00 00       	push   $0x40e0
     b9e:	6a 01                	push   $0x1
     ba0:	e8 8b 2e 00 00       	call   3a30 <printf>
        exit();
     ba5:	e8 17 2d 00 00       	call   38c1 <exit>
     baa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000bb0 <preempt>:
{
     bb0:	55                   	push   %ebp
     bb1:	89 e5                	mov    %esp,%ebp
     bb3:	57                   	push   %edi
     bb4:	56                   	push   %esi
     bb5:	53                   	push   %ebx
     bb6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
     bb9:	68 2c 41 00 00       	push   $0x412c
     bbe:	6a 01                	push   $0x1
     bc0:	e8 6b 2e 00 00       	call   3a30 <printf>
  pid1 = fork();
     bc5:	e8 ef 2c 00 00       	call   38b9 <fork>
  if(pid1 == 0)
     bca:	83 c4 10             	add    $0x10,%esp
     bcd:	85 c0                	test   %eax,%eax
     bcf:	75 07                	jne    bd8 <preempt+0x28>
      ;
     bd1:	eb fe                	jmp    bd1 <preempt+0x21>
     bd3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     bd7:	90                   	nop
     bd8:	89 c7                	mov    %eax,%edi
  pid2 = fork();
     bda:	e8 da 2c 00 00       	call   38b9 <fork>
     bdf:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     be1:	85 c0                	test   %eax,%eax
     be3:	75 0b                	jne    bf0 <preempt+0x40>
      ;
     be5:	eb fe                	jmp    be5 <preempt+0x35>
     be7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bee:	66 90                	xchg   %ax,%ax
  pipe(pfds);
     bf0:	83 ec 0c             	sub    $0xc,%esp
     bf3:	8d 45 e0             	lea    -0x20(%ebp),%eax
     bf6:	50                   	push   %eax
     bf7:	e8 d5 2c 00 00       	call   38d1 <pipe>
  pid3 = fork();
     bfc:	e8 b8 2c 00 00       	call   38b9 <fork>
  if(pid3 == 0){
     c01:	83 c4 10             	add    $0x10,%esp
  pid3 = fork();
     c04:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     c06:	85 c0                	test   %eax,%eax
     c08:	75 3e                	jne    c48 <preempt+0x98>
    close(pfds[0]);
     c0a:	83 ec 0c             	sub    $0xc,%esp
     c0d:	ff 75 e0             	pushl  -0x20(%ebp)
     c10:	e8 d4 2c 00 00       	call   38e9 <close>
    if(write(pfds[1], "x", 1) != 1)
     c15:	83 c4 0c             	add    $0xc,%esp
     c18:	6a 01                	push   $0x1
     c1a:	68 f1 46 00 00       	push   $0x46f1
     c1f:	ff 75 e4             	pushl  -0x1c(%ebp)
     c22:	e8 ba 2c 00 00       	call   38e1 <write>
     c27:	83 c4 10             	add    $0x10,%esp
     c2a:	83 f8 01             	cmp    $0x1,%eax
     c2d:	0f 85 a4 00 00 00    	jne    cd7 <preempt+0x127>
    close(pfds[1]);
     c33:	83 ec 0c             	sub    $0xc,%esp
     c36:	ff 75 e4             	pushl  -0x1c(%ebp)
     c39:	e8 ab 2c 00 00       	call   38e9 <close>
     c3e:	83 c4 10             	add    $0x10,%esp
      ;
     c41:	eb fe                	jmp    c41 <preempt+0x91>
     c43:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c47:	90                   	nop
  close(pfds[1]);
     c48:	83 ec 0c             	sub    $0xc,%esp
     c4b:	ff 75 e4             	pushl  -0x1c(%ebp)
     c4e:	e8 96 2c 00 00       	call   38e9 <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     c53:	83 c4 0c             	add    $0xc,%esp
     c56:	68 00 20 00 00       	push   $0x2000
     c5b:	68 60 86 00 00       	push   $0x8660
     c60:	ff 75 e0             	pushl  -0x20(%ebp)
     c63:	e8 71 2c 00 00       	call   38d9 <read>
     c68:	83 c4 10             	add    $0x10,%esp
     c6b:	83 f8 01             	cmp    $0x1,%eax
     c6e:	75 7e                	jne    cee <preempt+0x13e>
  close(pfds[0]);
     c70:	83 ec 0c             	sub    $0xc,%esp
     c73:	ff 75 e0             	pushl  -0x20(%ebp)
     c76:	e8 6e 2c 00 00       	call   38e9 <close>
  printf(1, "kill... ");
     c7b:	58                   	pop    %eax
     c7c:	5a                   	pop    %edx
     c7d:	68 5d 41 00 00       	push   $0x415d
     c82:	6a 01                	push   $0x1
     c84:	e8 a7 2d 00 00       	call   3a30 <printf>
  kill(pid1);
     c89:	89 3c 24             	mov    %edi,(%esp)
     c8c:	e8 60 2c 00 00       	call   38f1 <kill>
  kill(pid2);
     c91:	89 34 24             	mov    %esi,(%esp)
     c94:	e8 58 2c 00 00       	call   38f1 <kill>
  kill(pid3);
     c99:	89 1c 24             	mov    %ebx,(%esp)
     c9c:	e8 50 2c 00 00       	call   38f1 <kill>
  printf(1, "wait... ");
     ca1:	59                   	pop    %ecx
     ca2:	5b                   	pop    %ebx
     ca3:	68 66 41 00 00       	push   $0x4166
     ca8:	6a 01                	push   $0x1
     caa:	e8 81 2d 00 00       	call   3a30 <printf>
  wait();
     caf:	e8 15 2c 00 00       	call   38c9 <wait>
  wait();
     cb4:	e8 10 2c 00 00       	call   38c9 <wait>
  wait();
     cb9:	e8 0b 2c 00 00       	call   38c9 <wait>
  printf(1, "preempt ok\n");
     cbe:	5e                   	pop    %esi
     cbf:	5f                   	pop    %edi
     cc0:	68 6f 41 00 00       	push   $0x416f
     cc5:	6a 01                	push   $0x1
     cc7:	e8 64 2d 00 00       	call   3a30 <printf>
     ccc:	83 c4 10             	add    $0x10,%esp
}
     ccf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     cd2:	5b                   	pop    %ebx
     cd3:	5e                   	pop    %esi
     cd4:	5f                   	pop    %edi
     cd5:	5d                   	pop    %ebp
     cd6:	c3                   	ret    
      printf(1, "preempt write error");
     cd7:	83 ec 08             	sub    $0x8,%esp
     cda:	68 36 41 00 00       	push   $0x4136
     cdf:	6a 01                	push   $0x1
     ce1:	e8 4a 2d 00 00       	call   3a30 <printf>
     ce6:	83 c4 10             	add    $0x10,%esp
     ce9:	e9 45 ff ff ff       	jmp    c33 <preempt+0x83>
    printf(1, "preempt read error");
     cee:	83 ec 08             	sub    $0x8,%esp
     cf1:	68 4a 41 00 00       	push   $0x414a
     cf6:	6a 01                	push   $0x1
     cf8:	e8 33 2d 00 00       	call   3a30 <printf>
    return;
     cfd:	83 c4 10             	add    $0x10,%esp
     d00:	eb cd                	jmp    ccf <preempt+0x11f>
     d02:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000d10 <exitwait>:
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	56                   	push   %esi
     d14:	be 64 00 00 00       	mov    $0x64,%esi
     d19:	53                   	push   %ebx
     d1a:	eb 14                	jmp    d30 <exitwait+0x20>
     d1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid){
     d20:	74 68                	je     d8a <exitwait+0x7a>
      if(wait() != pid){
     d22:	e8 a2 2b 00 00       	call   38c9 <wait>
     d27:	39 d8                	cmp    %ebx,%eax
     d29:	75 2d                	jne    d58 <exitwait+0x48>
  for(i = 0; i < 100; i++){
     d2b:	83 ee 01             	sub    $0x1,%esi
     d2e:	74 41                	je     d71 <exitwait+0x61>
    pid = fork();
     d30:	e8 84 2b 00 00       	call   38b9 <fork>
     d35:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     d37:	85 c0                	test   %eax,%eax
     d39:	79 e5                	jns    d20 <exitwait+0x10>
      printf(1, "fork failed\n");
     d3b:	83 ec 08             	sub    $0x8,%esp
     d3e:	68 d9 4c 00 00       	push   $0x4cd9
     d43:	6a 01                	push   $0x1
     d45:	e8 e6 2c 00 00       	call   3a30 <printf>
      return;
     d4a:	83 c4 10             	add    $0x10,%esp
}
     d4d:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d50:	5b                   	pop    %ebx
     d51:	5e                   	pop    %esi
     d52:	5d                   	pop    %ebp
     d53:	c3                   	ret    
     d54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
     d58:	83 ec 08             	sub    $0x8,%esp
     d5b:	68 7b 41 00 00       	push   $0x417b
     d60:	6a 01                	push   $0x1
     d62:	e8 c9 2c 00 00       	call   3a30 <printf>
        return;
     d67:	83 c4 10             	add    $0x10,%esp
}
     d6a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d6d:	5b                   	pop    %ebx
     d6e:	5e                   	pop    %esi
     d6f:	5d                   	pop    %ebp
     d70:	c3                   	ret    
  printf(1, "exitwait ok\n");
     d71:	83 ec 08             	sub    $0x8,%esp
     d74:	68 8b 41 00 00       	push   $0x418b
     d79:	6a 01                	push   $0x1
     d7b:	e8 b0 2c 00 00       	call   3a30 <printf>
     d80:	83 c4 10             	add    $0x10,%esp
}
     d83:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d86:	5b                   	pop    %ebx
     d87:	5e                   	pop    %esi
     d88:	5d                   	pop    %ebp
     d89:	c3                   	ret    
      exit();
     d8a:	e8 32 2b 00 00       	call   38c1 <exit>
     d8f:	90                   	nop

00000d90 <mem>:
{
     d90:	55                   	push   %ebp
     d91:	89 e5                	mov    %esp,%ebp
     d93:	57                   	push   %edi
     d94:	56                   	push   %esi
     d95:	53                   	push   %ebx
     d96:	31 db                	xor    %ebx,%ebx
     d98:	83 ec 14             	sub    $0x14,%esp
  printf(1, "mem test\n");
     d9b:	68 98 41 00 00       	push   $0x4198
     da0:	6a 01                	push   $0x1
     da2:	e8 89 2c 00 00       	call   3a30 <printf>
  ppid = getpid();
     da7:	e8 95 2b 00 00       	call   3941 <getpid>
     dac:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     dae:	e8 06 2b 00 00       	call   38b9 <fork>
     db3:	83 c4 10             	add    $0x10,%esp
     db6:	85 c0                	test   %eax,%eax
     db8:	74 0a                	je     dc4 <mem+0x34>
     dba:	e9 89 00 00 00       	jmp    e48 <mem+0xb8>
     dbf:	90                   	nop
      *(char**)m2 = m1;
     dc0:	89 18                	mov    %ebx,(%eax)
     dc2:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
     dc4:	83 ec 0c             	sub    $0xc,%esp
     dc7:	68 11 27 00 00       	push   $0x2711
     dcc:	e8 bf 2e 00 00       	call   3c90 <malloc>
     dd1:	83 c4 10             	add    $0x10,%esp
     dd4:	85 c0                	test   %eax,%eax
     dd6:	75 e8                	jne    dc0 <mem+0x30>
    while(m1){
     dd8:	85 db                	test   %ebx,%ebx
     dda:	74 18                	je     df4 <mem+0x64>
     ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      free(m1);
     de0:	83 ec 0c             	sub    $0xc,%esp
      m2 = *(char**)m1;
     de3:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     de5:	53                   	push   %ebx
     de6:	89 fb                	mov    %edi,%ebx
     de8:	e8 13 2e 00 00       	call   3c00 <free>
    while(m1){
     ded:	83 c4 10             	add    $0x10,%esp
     df0:	85 db                	test   %ebx,%ebx
     df2:	75 ec                	jne    de0 <mem+0x50>
    m1 = malloc(1024*20);
     df4:	83 ec 0c             	sub    $0xc,%esp
     df7:	68 00 50 00 00       	push   $0x5000
     dfc:	e8 8f 2e 00 00       	call   3c90 <malloc>
    if(m1 == 0){
     e01:	83 c4 10             	add    $0x10,%esp
     e04:	85 c0                	test   %eax,%eax
     e06:	74 20                	je     e28 <mem+0x98>
    free(m1);
     e08:	83 ec 0c             	sub    $0xc,%esp
     e0b:	50                   	push   %eax
     e0c:	e8 ef 2d 00 00       	call   3c00 <free>
    printf(1, "mem ok\n");
     e11:	58                   	pop    %eax
     e12:	5a                   	pop    %edx
     e13:	68 bc 41 00 00       	push   $0x41bc
     e18:	6a 01                	push   $0x1
     e1a:	e8 11 2c 00 00       	call   3a30 <printf>
    exit();
     e1f:	e8 9d 2a 00 00       	call   38c1 <exit>
     e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     e28:	83 ec 08             	sub    $0x8,%esp
     e2b:	68 a2 41 00 00       	push   $0x41a2
     e30:	6a 01                	push   $0x1
     e32:	e8 f9 2b 00 00       	call   3a30 <printf>
      kill(ppid);
     e37:	89 34 24             	mov    %esi,(%esp)
     e3a:	e8 b2 2a 00 00       	call   38f1 <kill>
      exit();
     e3f:	e8 7d 2a 00 00       	call   38c1 <exit>
     e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
     e48:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e4b:	5b                   	pop    %ebx
     e4c:	5e                   	pop    %esi
     e4d:	5f                   	pop    %edi
     e4e:	5d                   	pop    %ebp
    wait();
     e4f:	e9 75 2a 00 00       	jmp    38c9 <wait>
     e54:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e5f:	90                   	nop

00000e60 <sharedfd>:
{
     e60:	55                   	push   %ebp
     e61:	89 e5                	mov    %esp,%ebp
     e63:	57                   	push   %edi
     e64:	56                   	push   %esi
     e65:	53                   	push   %ebx
     e66:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
     e69:	68 c4 41 00 00       	push   $0x41c4
     e6e:	6a 01                	push   $0x1
     e70:	e8 bb 2b 00 00       	call   3a30 <printf>
  unlink("sharedfd");
     e75:	c7 04 24 d3 41 00 00 	movl   $0x41d3,(%esp)
     e7c:	e8 90 2a 00 00       	call   3911 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     e81:	5b                   	pop    %ebx
     e82:	5e                   	pop    %esi
     e83:	68 02 02 00 00       	push   $0x202
     e88:	68 d3 41 00 00       	push   $0x41d3
     e8d:	e8 6f 2a 00 00       	call   3901 <open>
  if(fd < 0){
     e92:	83 c4 10             	add    $0x10,%esp
     e95:	85 c0                	test   %eax,%eax
     e97:	0f 88 2a 01 00 00    	js     fc7 <sharedfd+0x167>
     e9d:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
     e9f:	8d 75 de             	lea    -0x22(%ebp),%esi
     ea2:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
     ea7:	e8 0d 2a 00 00       	call   38b9 <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     eac:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
     eaf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     eb2:	19 c0                	sbb    %eax,%eax
     eb4:	83 ec 04             	sub    $0x4,%esp
     eb7:	83 e0 f3             	and    $0xfffffff3,%eax
     eba:	6a 0a                	push   $0xa
     ebc:	83 c0 70             	add    $0x70,%eax
     ebf:	50                   	push   %eax
     ec0:	56                   	push   %esi
     ec1:	e8 5a 28 00 00       	call   3720 <memset>
     ec6:	83 c4 10             	add    $0x10,%esp
     ec9:	eb 0a                	jmp    ed5 <sharedfd+0x75>
     ecb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     ecf:	90                   	nop
  for(i = 0; i < 1000; i++){
     ed0:	83 eb 01             	sub    $0x1,%ebx
     ed3:	74 26                	je     efb <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     ed5:	83 ec 04             	sub    $0x4,%esp
     ed8:	6a 0a                	push   $0xa
     eda:	56                   	push   %esi
     edb:	57                   	push   %edi
     edc:	e8 00 2a 00 00       	call   38e1 <write>
     ee1:	83 c4 10             	add    $0x10,%esp
     ee4:	83 f8 0a             	cmp    $0xa,%eax
     ee7:	74 e7                	je     ed0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
     ee9:	83 ec 08             	sub    $0x8,%esp
     eec:	68 c4 4e 00 00       	push   $0x4ec4
     ef1:	6a 01                	push   $0x1
     ef3:	e8 38 2b 00 00       	call   3a30 <printf>
      break;
     ef8:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
     efb:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     efe:	85 c9                	test   %ecx,%ecx
     f00:	0f 84 f5 00 00 00    	je     ffb <sharedfd+0x19b>
    wait();
     f06:	e8 be 29 00 00       	call   38c9 <wait>
  close(fd);
     f0b:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
     f0e:	31 db                	xor    %ebx,%ebx
  close(fd);
     f10:	57                   	push   %edi
     f11:	8d 7d e8             	lea    -0x18(%ebp),%edi
     f14:	e8 d0 29 00 00       	call   38e9 <close>
  fd = open("sharedfd", 0);
     f19:	58                   	pop    %eax
     f1a:	5a                   	pop    %edx
     f1b:	6a 00                	push   $0x0
     f1d:	68 d3 41 00 00       	push   $0x41d3
     f22:	e8 da 29 00 00       	call   3901 <open>
  if(fd < 0){
     f27:	83 c4 10             	add    $0x10,%esp
  nc = np = 0;
     f2a:	31 d2                	xor    %edx,%edx
  fd = open("sharedfd", 0);
     f2c:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     f2f:	85 c0                	test   %eax,%eax
     f31:	0f 88 aa 00 00 00    	js     fe1 <sharedfd+0x181>
     f37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f3e:	66 90                	xchg   %ax,%ax
  while((n = read(fd, buf, sizeof(buf))) > 0){
     f40:	83 ec 04             	sub    $0x4,%esp
     f43:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     f46:	6a 0a                	push   $0xa
     f48:	56                   	push   %esi
     f49:	ff 75 d0             	pushl  -0x30(%ebp)
     f4c:	e8 88 29 00 00       	call   38d9 <read>
     f51:	83 c4 10             	add    $0x10,%esp
     f54:	85 c0                	test   %eax,%eax
     f56:	7e 28                	jle    f80 <sharedfd+0x120>
     f58:	89 f0                	mov    %esi,%eax
     f5a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f5d:	eb 13                	jmp    f72 <sharedfd+0x112>
     f5f:	90                   	nop
        np++;
     f60:	80 f9 70             	cmp    $0x70,%cl
     f63:	0f 94 c1             	sete   %cl
     f66:	0f b6 c9             	movzbl %cl,%ecx
     f69:	01 cb                	add    %ecx,%ebx
     f6b:	83 c0 01             	add    $0x1,%eax
    for(i = 0; i < sizeof(buf); i++){
     f6e:	39 f8                	cmp    %edi,%eax
     f70:	74 ce                	je     f40 <sharedfd+0xe0>
      if(buf[i] == 'c')
     f72:	0f b6 08             	movzbl (%eax),%ecx
     f75:	80 f9 63             	cmp    $0x63,%cl
     f78:	75 e6                	jne    f60 <sharedfd+0x100>
        nc++;
     f7a:	83 c2 01             	add    $0x1,%edx
      if(buf[i] == 'p')
     f7d:	eb ec                	jmp    f6b <sharedfd+0x10b>
     f7f:	90                   	nop
  close(fd);
     f80:	83 ec 0c             	sub    $0xc,%esp
     f83:	ff 75 d0             	pushl  -0x30(%ebp)
     f86:	e8 5e 29 00 00       	call   38e9 <close>
  unlink("sharedfd");
     f8b:	c7 04 24 d3 41 00 00 	movl   $0x41d3,(%esp)
     f92:	e8 7a 29 00 00       	call   3911 <unlink>
  if(nc == 10000 && np == 10000){
     f97:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f9a:	83 c4 10             	add    $0x10,%esp
     f9d:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
     fa3:	75 5b                	jne    1000 <sharedfd+0x1a0>
     fa5:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     fab:	75 53                	jne    1000 <sharedfd+0x1a0>
    printf(1, "sharedfd ok\n");
     fad:	83 ec 08             	sub    $0x8,%esp
     fb0:	68 dc 41 00 00       	push   $0x41dc
     fb5:	6a 01                	push   $0x1
     fb7:	e8 74 2a 00 00       	call   3a30 <printf>
     fbc:	83 c4 10             	add    $0x10,%esp
}
     fbf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fc2:	5b                   	pop    %ebx
     fc3:	5e                   	pop    %esi
     fc4:	5f                   	pop    %edi
     fc5:	5d                   	pop    %ebp
     fc6:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
     fc7:	83 ec 08             	sub    $0x8,%esp
     fca:	68 98 4e 00 00       	push   $0x4e98
     fcf:	6a 01                	push   $0x1
     fd1:	e8 5a 2a 00 00       	call   3a30 <printf>
    return;
     fd6:	83 c4 10             	add    $0x10,%esp
}
     fd9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fdc:	5b                   	pop    %ebx
     fdd:	5e                   	pop    %esi
     fde:	5f                   	pop    %edi
     fdf:	5d                   	pop    %ebp
     fe0:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
     fe1:	83 ec 08             	sub    $0x8,%esp
     fe4:	68 e4 4e 00 00       	push   $0x4ee4
     fe9:	6a 01                	push   $0x1
     feb:	e8 40 2a 00 00       	call   3a30 <printf>
    return;
     ff0:	83 c4 10             	add    $0x10,%esp
}
     ff3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ff6:	5b                   	pop    %ebx
     ff7:	5e                   	pop    %esi
     ff8:	5f                   	pop    %edi
     ff9:	5d                   	pop    %ebp
     ffa:	c3                   	ret    
    exit();
     ffb:	e8 c1 28 00 00       	call   38c1 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    1000:	53                   	push   %ebx
    1001:	52                   	push   %edx
    1002:	68 e9 41 00 00       	push   $0x41e9
    1007:	6a 01                	push   $0x1
    1009:	e8 22 2a 00 00       	call   3a30 <printf>
    exit();
    100e:	e8 ae 28 00 00       	call   38c1 <exit>
    1013:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    101a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001020 <fourfiles>:
{
    1020:	55                   	push   %ebp
    1021:	89 e5                	mov    %esp,%ebp
    1023:	57                   	push   %edi
    1024:	56                   	push   %esi
  printf(1, "fourfiles test\n");
    1025:	be fe 41 00 00       	mov    $0x41fe,%esi
{
    102a:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    102b:	31 db                	xor    %ebx,%ebx
{
    102d:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    1030:	c7 45 d8 fe 41 00 00 	movl   $0x41fe,-0x28(%ebp)
  printf(1, "fourfiles test\n");
    1037:	68 04 42 00 00       	push   $0x4204
    103c:	6a 01                	push   $0x1
  char *names[] = { "f0", "f1", "f2", "f3" };
    103e:	c7 45 dc 47 43 00 00 	movl   $0x4347,-0x24(%ebp)
    1045:	c7 45 e0 4b 43 00 00 	movl   $0x434b,-0x20(%ebp)
    104c:	c7 45 e4 01 42 00 00 	movl   $0x4201,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    1053:	e8 d8 29 00 00       	call   3a30 <printf>
    1058:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    105b:	83 ec 0c             	sub    $0xc,%esp
    105e:	56                   	push   %esi
    105f:	e8 ad 28 00 00       	call   3911 <unlink>
    pid = fork();
    1064:	e8 50 28 00 00       	call   38b9 <fork>
    if(pid < 0){
    1069:	83 c4 10             	add    $0x10,%esp
    106c:	85 c0                	test   %eax,%eax
    106e:	0f 88 6c 01 00 00    	js     11e0 <fourfiles+0x1c0>
    if(pid == 0){
    1074:	0f 84 ef 00 00 00    	je     1169 <fourfiles+0x149>
  for(pi = 0; pi < 4; pi++){
    107a:	83 c3 01             	add    $0x1,%ebx
    107d:	83 fb 04             	cmp    $0x4,%ebx
    1080:	74 06                	je     1088 <fourfiles+0x68>
    1082:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1086:	eb d3                	jmp    105b <fourfiles+0x3b>
    wait();
    1088:	e8 3c 28 00 00       	call   38c9 <wait>
  for(i = 0; i < 2; i++){
    108d:	31 ff                	xor    %edi,%edi
    wait();
    108f:	e8 35 28 00 00       	call   38c9 <wait>
    1094:	e8 30 28 00 00       	call   38c9 <wait>
    1099:	e8 2b 28 00 00       	call   38c9 <wait>
    109e:	c7 45 d0 fe 41 00 00 	movl   $0x41fe,-0x30(%ebp)
    fd = open(fname, 0);
    10a5:	83 ec 08             	sub    $0x8,%esp
    total = 0;
    10a8:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    10aa:	6a 00                	push   $0x0
    10ac:	ff 75 d0             	pushl  -0x30(%ebp)
    10af:	e8 4d 28 00 00       	call   3901 <open>
    while((n = read(fd, buf, sizeof(buf))) > 0){
    10b4:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    10b7:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    while((n = read(fd, buf, sizeof(buf))) > 0){
    10ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10c0:	83 ec 04             	sub    $0x4,%esp
    10c3:	68 00 20 00 00       	push   $0x2000
    10c8:	68 60 86 00 00       	push   $0x8660
    10cd:	ff 75 d4             	pushl  -0x2c(%ebp)
    10d0:	e8 04 28 00 00       	call   38d9 <read>
    10d5:	83 c4 10             	add    $0x10,%esp
    10d8:	85 c0                	test   %eax,%eax
    10da:	7e 22                	jle    10fe <fourfiles+0xde>
      for(j = 0; j < n; j++){
    10dc:	31 d2                	xor    %edx,%edx
    10de:	66 90                	xchg   %ax,%ax
        if(buf[j] != '0'+i){
    10e0:	83 ff 01             	cmp    $0x1,%edi
    10e3:	0f be b2 60 86 00 00 	movsbl 0x8660(%edx),%esi
    10ea:	19 c9                	sbb    %ecx,%ecx
    10ec:	83 c1 31             	add    $0x31,%ecx
    10ef:	39 ce                	cmp    %ecx,%esi
    10f1:	75 62                	jne    1155 <fourfiles+0x135>
      for(j = 0; j < n; j++){
    10f3:	83 c2 01             	add    $0x1,%edx
    10f6:	39 d0                	cmp    %edx,%eax
    10f8:	75 e6                	jne    10e0 <fourfiles+0xc0>
      total += n;
    10fa:	01 c3                	add    %eax,%ebx
    10fc:	eb c2                	jmp    10c0 <fourfiles+0xa0>
    close(fd);
    10fe:	83 ec 0c             	sub    $0xc,%esp
    1101:	ff 75 d4             	pushl  -0x2c(%ebp)
    1104:	e8 e0 27 00 00       	call   38e9 <close>
    if(total != 12*500){
    1109:	83 c4 10             	add    $0x10,%esp
    110c:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1112:	0f 85 dc 00 00 00    	jne    11f4 <fourfiles+0x1d4>
    unlink(fname);
    1118:	83 ec 0c             	sub    $0xc,%esp
    111b:	ff 75 d0             	pushl  -0x30(%ebp)
    111e:	e8 ee 27 00 00       	call   3911 <unlink>
  for(i = 0; i < 2; i++){
    1123:	83 c4 10             	add    $0x10,%esp
    1126:	83 ff 01             	cmp    $0x1,%edi
    1129:	75 1a                	jne    1145 <fourfiles+0x125>
  printf(1, "fourfiles ok\n");
    112b:	83 ec 08             	sub    $0x8,%esp
    112e:	68 42 42 00 00       	push   $0x4242
    1133:	6a 01                	push   $0x1
    1135:	e8 f6 28 00 00       	call   3a30 <printf>
}
    113a:	83 c4 10             	add    $0x10,%esp
    113d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1140:	5b                   	pop    %ebx
    1141:	5e                   	pop    %esi
    1142:	5f                   	pop    %edi
    1143:	5d                   	pop    %ebp
    1144:	c3                   	ret    
    1145:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1148:	bf 01 00 00 00       	mov    $0x1,%edi
    114d:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1150:	e9 50 ff ff ff       	jmp    10a5 <fourfiles+0x85>
          printf(1, "wrong char\n");
    1155:	83 ec 08             	sub    $0x8,%esp
    1158:	68 25 42 00 00       	push   $0x4225
    115d:	6a 01                	push   $0x1
    115f:	e8 cc 28 00 00       	call   3a30 <printf>
          exit();
    1164:	e8 58 27 00 00       	call   38c1 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    1169:	83 ec 08             	sub    $0x8,%esp
    116c:	68 02 02 00 00       	push   $0x202
    1171:	56                   	push   %esi
    1172:	e8 8a 27 00 00       	call   3901 <open>
      if(fd < 0){
    1177:	83 c4 10             	add    $0x10,%esp
      fd = open(fname, O_CREATE | O_RDWR);
    117a:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    117c:	85 c0                	test   %eax,%eax
    117e:	78 45                	js     11c5 <fourfiles+0x1a5>
      memset(buf, '0'+pi, 512);
    1180:	83 ec 04             	sub    $0x4,%esp
    1183:	83 c3 30             	add    $0x30,%ebx
    1186:	68 00 02 00 00       	push   $0x200
    118b:	53                   	push   %ebx
    118c:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1191:	68 60 86 00 00       	push   $0x8660
    1196:	e8 85 25 00 00       	call   3720 <memset>
    119b:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    119e:	83 ec 04             	sub    $0x4,%esp
    11a1:	68 f4 01 00 00       	push   $0x1f4
    11a6:	68 60 86 00 00       	push   $0x8660
    11ab:	56                   	push   %esi
    11ac:	e8 30 27 00 00       	call   38e1 <write>
    11b1:	83 c4 10             	add    $0x10,%esp
    11b4:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    11b9:	75 4c                	jne    1207 <fourfiles+0x1e7>
      for(i = 0; i < 12; i++){
    11bb:	83 eb 01             	sub    $0x1,%ebx
    11be:	75 de                	jne    119e <fourfiles+0x17e>
      exit();
    11c0:	e8 fc 26 00 00       	call   38c1 <exit>
        printf(1, "create failed\n");
    11c5:	51                   	push   %ecx
    11c6:	51                   	push   %ecx
    11c7:	68 9f 44 00 00       	push   $0x449f
    11cc:	6a 01                	push   $0x1
    11ce:	e8 5d 28 00 00       	call   3a30 <printf>
        exit();
    11d3:	e8 e9 26 00 00       	call   38c1 <exit>
    11d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11df:	90                   	nop
      printf(1, "fork failed\n");
    11e0:	83 ec 08             	sub    $0x8,%esp
    11e3:	68 d9 4c 00 00       	push   $0x4cd9
    11e8:	6a 01                	push   $0x1
    11ea:	e8 41 28 00 00       	call   3a30 <printf>
      exit();
    11ef:	e8 cd 26 00 00       	call   38c1 <exit>
      printf(1, "wrong length %d\n", total);
    11f4:	50                   	push   %eax
    11f5:	53                   	push   %ebx
    11f6:	68 31 42 00 00       	push   $0x4231
    11fb:	6a 01                	push   $0x1
    11fd:	e8 2e 28 00 00       	call   3a30 <printf>
      exit();
    1202:	e8 ba 26 00 00       	call   38c1 <exit>
          printf(1, "write failed %d\n", n);
    1207:	52                   	push   %edx
    1208:	50                   	push   %eax
    1209:	68 14 42 00 00       	push   $0x4214
    120e:	6a 01                	push   $0x1
    1210:	e8 1b 28 00 00       	call   3a30 <printf>
          exit();
    1215:	e8 a7 26 00 00       	call   38c1 <exit>
    121a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001220 <createdelete>:
{
    1220:	55                   	push   %ebp
    1221:	89 e5                	mov    %esp,%ebp
    1223:	57                   	push   %edi
    1224:	56                   	push   %esi
    1225:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1226:	31 db                	xor    %ebx,%ebx
{
    1228:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    122b:	68 50 42 00 00       	push   $0x4250
    1230:	6a 01                	push   $0x1
    1232:	e8 f9 27 00 00       	call   3a30 <printf>
    1237:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    123a:	e8 7a 26 00 00       	call   38b9 <fork>
    if(pid < 0){
    123f:	85 c0                	test   %eax,%eax
    1241:	0f 88 bf 01 00 00    	js     1406 <createdelete+0x1e6>
    if(pid == 0){
    1247:	0f 84 0b 01 00 00    	je     1358 <createdelete+0x138>
  for(pi = 0; pi < 4; pi++){
    124d:	83 c3 01             	add    $0x1,%ebx
    1250:	83 fb 04             	cmp    $0x4,%ebx
    1253:	75 e5                	jne    123a <createdelete+0x1a>
    wait();
    1255:	e8 6f 26 00 00       	call   38c9 <wait>
  name[0] = name[1] = name[2] = 0;
    125a:	be ff ff ff ff       	mov    $0xffffffff,%esi
    125f:	8d 7d c8             	lea    -0x38(%ebp),%edi
    wait();
    1262:	e8 62 26 00 00       	call   38c9 <wait>
    1267:	e8 5d 26 00 00       	call   38c9 <wait>
    126c:	e8 58 26 00 00       	call   38c9 <wait>
  name[0] = name[1] = name[2] = 0;
    1271:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
  for(i = 0; i < N; i++){
    1275:	8d 76 00             	lea    0x0(%esi),%esi
    1278:	8d 46 31             	lea    0x31(%esi),%eax
    127b:	88 45 c7             	mov    %al,-0x39(%ebp)
    127e:	8d 46 01             	lea    0x1(%esi),%eax
    1281:	83 f8 09             	cmp    $0x9,%eax
    1284:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1287:	0f 9f c3             	setg   %bl
    128a:	85 c0                	test   %eax,%eax
    128c:	0f 94 c0             	sete   %al
    128f:	09 c3                	or     %eax,%ebx
    1291:	88 5d c6             	mov    %bl,-0x3a(%ebp)
      name[2] = '\0';
    1294:	bb 70 00 00 00       	mov    $0x70,%ebx
      fd = open(name, 0);
    1299:	83 ec 08             	sub    $0x8,%esp
      name[1] = '0' + i;
    129c:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      name[0] = 'p' + pi;
    12a0:	88 5d c8             	mov    %bl,-0x38(%ebp)
      fd = open(name, 0);
    12a3:	6a 00                	push   $0x0
    12a5:	57                   	push   %edi
      name[1] = '0' + i;
    12a6:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    12a9:	e8 53 26 00 00       	call   3901 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    12ae:	83 c4 10             	add    $0x10,%esp
    12b1:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    12b5:	0f 84 85 00 00 00    	je     1340 <createdelete+0x120>
    12bb:	85 c0                	test   %eax,%eax
    12bd:	0f 88 1a 01 00 00    	js     13dd <createdelete+0x1bd>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    12c3:	83 fe 08             	cmp    $0x8,%esi
    12c6:	0f 86 56 01 00 00    	jbe    1422 <createdelete+0x202>
        close(fd);
    12cc:	83 ec 0c             	sub    $0xc,%esp
    12cf:	50                   	push   %eax
    12d0:	e8 14 26 00 00       	call   38e9 <close>
    12d5:	83 c4 10             	add    $0x10,%esp
    12d8:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    12db:	80 fb 74             	cmp    $0x74,%bl
    12de:	75 b9                	jne    1299 <createdelete+0x79>
    12e0:	8b 75 c0             	mov    -0x40(%ebp),%esi
  for(i = 0; i < N; i++){
    12e3:	83 fe 13             	cmp    $0x13,%esi
    12e6:	75 90                	jne    1278 <createdelete+0x58>
    12e8:	be 70 00 00 00       	mov    $0x70,%esi
    12ed:	8d 76 00             	lea    0x0(%esi),%esi
    12f0:	8d 46 c0             	lea    -0x40(%esi),%eax
  name[0] = name[1] = name[2] = 0;
    12f3:	bb 04 00 00 00       	mov    $0x4,%ebx
    12f8:	88 45 c7             	mov    %al,-0x39(%ebp)
      unlink(name);
    12fb:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    12fe:	89 f0                	mov    %esi,%eax
      unlink(name);
    1300:	57                   	push   %edi
      name[0] = 'p' + i;
    1301:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    1304:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    1308:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    130b:	e8 01 26 00 00       	call   3911 <unlink>
    for(pi = 0; pi < 4; pi++){
    1310:	83 c4 10             	add    $0x10,%esp
    1313:	83 eb 01             	sub    $0x1,%ebx
    1316:	75 e3                	jne    12fb <createdelete+0xdb>
    1318:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    131b:	89 f0                	mov    %esi,%eax
    131d:	3c 84                	cmp    $0x84,%al
    131f:	75 cf                	jne    12f0 <createdelete+0xd0>
  printf(1, "createdelete ok\n");
    1321:	83 ec 08             	sub    $0x8,%esp
    1324:	68 63 42 00 00       	push   $0x4263
    1329:	6a 01                	push   $0x1
    132b:	e8 00 27 00 00       	call   3a30 <printf>
}
    1330:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1333:	5b                   	pop    %ebx
    1334:	5e                   	pop    %esi
    1335:	5f                   	pop    %edi
    1336:	5d                   	pop    %ebp
    1337:	c3                   	ret    
    1338:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    133f:	90                   	nop
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1340:	83 fe 08             	cmp    $0x8,%esi
    1343:	0f 86 d1 00 00 00    	jbe    141a <createdelete+0x1fa>
      if(fd >= 0)
    1349:	85 c0                	test   %eax,%eax
    134b:	78 8b                	js     12d8 <createdelete+0xb8>
    134d:	e9 7a ff ff ff       	jmp    12cc <createdelete+0xac>
    1352:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      name[0] = 'p' + pi;
    1358:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    135b:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    135f:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[0] = 'p' + pi;
    1362:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[2] = '\0';
    1365:	31 db                	xor    %ebx,%ebx
    1367:	eb 0f                	jmp    1378 <createdelete+0x158>
    1369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    1370:	83 fb 13             	cmp    $0x13,%ebx
    1373:	74 63                	je     13d8 <createdelete+0x1b8>
    1375:	83 c3 01             	add    $0x1,%ebx
        fd = open(name, O_CREATE | O_RDWR);
    1378:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    137b:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    137e:	68 02 02 00 00       	push   $0x202
    1383:	57                   	push   %edi
        name[1] = '0' + i;
    1384:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    1387:	e8 75 25 00 00       	call   3901 <open>
        if(fd < 0){
    138c:	83 c4 10             	add    $0x10,%esp
    138f:	85 c0                	test   %eax,%eax
    1391:	78 5f                	js     13f2 <createdelete+0x1d2>
        close(fd);
    1393:	83 ec 0c             	sub    $0xc,%esp
    1396:	50                   	push   %eax
    1397:	e8 4d 25 00 00       	call   38e9 <close>
        if(i > 0 && (i % 2 ) == 0){
    139c:	83 c4 10             	add    $0x10,%esp
    139f:	85 db                	test   %ebx,%ebx
    13a1:	74 d2                	je     1375 <createdelete+0x155>
    13a3:	f6 c3 01             	test   $0x1,%bl
    13a6:	75 c8                	jne    1370 <createdelete+0x150>
          if(unlink(name) < 0){
    13a8:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    13ab:	89 d8                	mov    %ebx,%eax
          if(unlink(name) < 0){
    13ad:	57                   	push   %edi
          name[1] = '0' + (i / 2);
    13ae:	d1 f8                	sar    %eax
    13b0:	83 c0 30             	add    $0x30,%eax
    13b3:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    13b6:	e8 56 25 00 00       	call   3911 <unlink>
    13bb:	83 c4 10             	add    $0x10,%esp
    13be:	85 c0                	test   %eax,%eax
    13c0:	79 ae                	jns    1370 <createdelete+0x150>
            printf(1, "unlink failed\n");
    13c2:	52                   	push   %edx
    13c3:	52                   	push   %edx
    13c4:	68 51 3e 00 00       	push   $0x3e51
    13c9:	6a 01                	push   $0x1
    13cb:	e8 60 26 00 00       	call   3a30 <printf>
            exit();
    13d0:	e8 ec 24 00 00       	call   38c1 <exit>
    13d5:	8d 76 00             	lea    0x0(%esi),%esi
      exit();
    13d8:	e8 e4 24 00 00       	call   38c1 <exit>
        printf(1, "oops createdelete %s didn't exist\n", name);
    13dd:	83 ec 04             	sub    $0x4,%esp
    13e0:	57                   	push   %edi
    13e1:	68 10 4f 00 00       	push   $0x4f10
    13e6:	6a 01                	push   $0x1
    13e8:	e8 43 26 00 00       	call   3a30 <printf>
        exit();
    13ed:	e8 cf 24 00 00       	call   38c1 <exit>
          printf(1, "create failed\n");
    13f2:	83 ec 08             	sub    $0x8,%esp
    13f5:	68 9f 44 00 00       	push   $0x449f
    13fa:	6a 01                	push   $0x1
    13fc:	e8 2f 26 00 00       	call   3a30 <printf>
          exit();
    1401:	e8 bb 24 00 00       	call   38c1 <exit>
      printf(1, "fork failed\n");
    1406:	83 ec 08             	sub    $0x8,%esp
    1409:	68 d9 4c 00 00       	push   $0x4cd9
    140e:	6a 01                	push   $0x1
    1410:	e8 1b 26 00 00       	call   3a30 <printf>
      exit();
    1415:	e8 a7 24 00 00       	call   38c1 <exit>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    141a:	85 c0                	test   %eax,%eax
    141c:	0f 88 b6 fe ff ff    	js     12d8 <createdelete+0xb8>
        printf(1, "oops createdelete %s did exist\n", name);
    1422:	50                   	push   %eax
    1423:	57                   	push   %edi
    1424:	68 34 4f 00 00       	push   $0x4f34
    1429:	6a 01                	push   $0x1
    142b:	e8 00 26 00 00       	call   3a30 <printf>
        exit();
    1430:	e8 8c 24 00 00       	call   38c1 <exit>
    1435:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    143c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001440 <unlinkread>:
{
    1440:	55                   	push   %ebp
    1441:	89 e5                	mov    %esp,%ebp
    1443:	56                   	push   %esi
    1444:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    1445:	83 ec 08             	sub    $0x8,%esp
    1448:	68 74 42 00 00       	push   $0x4274
    144d:	6a 01                	push   $0x1
    144f:	e8 dc 25 00 00       	call   3a30 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1454:	5b                   	pop    %ebx
    1455:	5e                   	pop    %esi
    1456:	68 02 02 00 00       	push   $0x202
    145b:	68 85 42 00 00       	push   $0x4285
    1460:	e8 9c 24 00 00       	call   3901 <open>
  if(fd < 0){
    1465:	83 c4 10             	add    $0x10,%esp
    1468:	85 c0                	test   %eax,%eax
    146a:	0f 88 e6 00 00 00    	js     1556 <unlinkread+0x116>
  write(fd, "hello", 5);
    1470:	83 ec 04             	sub    $0x4,%esp
    1473:	89 c3                	mov    %eax,%ebx
    1475:	6a 05                	push   $0x5
    1477:	68 aa 42 00 00       	push   $0x42aa
    147c:	50                   	push   %eax
    147d:	e8 5f 24 00 00       	call   38e1 <write>
  close(fd);
    1482:	89 1c 24             	mov    %ebx,(%esp)
    1485:	e8 5f 24 00 00       	call   38e9 <close>
  fd = open("unlinkread", O_RDWR);
    148a:	58                   	pop    %eax
    148b:	5a                   	pop    %edx
    148c:	6a 02                	push   $0x2
    148e:	68 85 42 00 00       	push   $0x4285
    1493:	e8 69 24 00 00       	call   3901 <open>
  if(fd < 0){
    1498:	83 c4 10             	add    $0x10,%esp
  fd = open("unlinkread", O_RDWR);
    149b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    149d:	85 c0                	test   %eax,%eax
    149f:	0f 88 10 01 00 00    	js     15b5 <unlinkread+0x175>
  if(unlink("unlinkread") != 0){
    14a5:	83 ec 0c             	sub    $0xc,%esp
    14a8:	68 85 42 00 00       	push   $0x4285
    14ad:	e8 5f 24 00 00       	call   3911 <unlink>
    14b2:	83 c4 10             	add    $0x10,%esp
    14b5:	85 c0                	test   %eax,%eax
    14b7:	0f 85 e5 00 00 00    	jne    15a2 <unlinkread+0x162>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    14bd:	83 ec 08             	sub    $0x8,%esp
    14c0:	68 02 02 00 00       	push   $0x202
    14c5:	68 85 42 00 00       	push   $0x4285
    14ca:	e8 32 24 00 00       	call   3901 <open>
  write(fd1, "yyy", 3);
    14cf:	83 c4 0c             	add    $0xc,%esp
    14d2:	6a 03                	push   $0x3
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    14d4:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    14d6:	68 e2 42 00 00       	push   $0x42e2
    14db:	50                   	push   %eax
    14dc:	e8 00 24 00 00       	call   38e1 <write>
  close(fd1);
    14e1:	89 34 24             	mov    %esi,(%esp)
    14e4:	e8 00 24 00 00       	call   38e9 <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    14e9:	83 c4 0c             	add    $0xc,%esp
    14ec:	68 00 20 00 00       	push   $0x2000
    14f1:	68 60 86 00 00       	push   $0x8660
    14f6:	53                   	push   %ebx
    14f7:	e8 dd 23 00 00       	call   38d9 <read>
    14fc:	83 c4 10             	add    $0x10,%esp
    14ff:	83 f8 05             	cmp    $0x5,%eax
    1502:	0f 85 87 00 00 00    	jne    158f <unlinkread+0x14f>
  if(buf[0] != 'h'){
    1508:	80 3d 60 86 00 00 68 	cmpb   $0x68,0x8660
    150f:	75 6b                	jne    157c <unlinkread+0x13c>
  if(write(fd, buf, 10) != 10){
    1511:	83 ec 04             	sub    $0x4,%esp
    1514:	6a 0a                	push   $0xa
    1516:	68 60 86 00 00       	push   $0x8660
    151b:	53                   	push   %ebx
    151c:	e8 c0 23 00 00       	call   38e1 <write>
    1521:	83 c4 10             	add    $0x10,%esp
    1524:	83 f8 0a             	cmp    $0xa,%eax
    1527:	75 40                	jne    1569 <unlinkread+0x129>
  close(fd);
    1529:	83 ec 0c             	sub    $0xc,%esp
    152c:	53                   	push   %ebx
    152d:	e8 b7 23 00 00       	call   38e9 <close>
  unlink("unlinkread");
    1532:	c7 04 24 85 42 00 00 	movl   $0x4285,(%esp)
    1539:	e8 d3 23 00 00       	call   3911 <unlink>
  printf(1, "unlinkread ok\n");
    153e:	58                   	pop    %eax
    153f:	5a                   	pop    %edx
    1540:	68 2d 43 00 00       	push   $0x432d
    1545:	6a 01                	push   $0x1
    1547:	e8 e4 24 00 00       	call   3a30 <printf>
}
    154c:	83 c4 10             	add    $0x10,%esp
    154f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1552:	5b                   	pop    %ebx
    1553:	5e                   	pop    %esi
    1554:	5d                   	pop    %ebp
    1555:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    1556:	51                   	push   %ecx
    1557:	51                   	push   %ecx
    1558:	68 90 42 00 00       	push   $0x4290
    155d:	6a 01                	push   $0x1
    155f:	e8 cc 24 00 00       	call   3a30 <printf>
    exit();
    1564:	e8 58 23 00 00       	call   38c1 <exit>
    printf(1, "unlinkread write failed\n");
    1569:	51                   	push   %ecx
    156a:	51                   	push   %ecx
    156b:	68 14 43 00 00       	push   $0x4314
    1570:	6a 01                	push   $0x1
    1572:	e8 b9 24 00 00       	call   3a30 <printf>
    exit();
    1577:	e8 45 23 00 00       	call   38c1 <exit>
    printf(1, "unlinkread wrong data\n");
    157c:	53                   	push   %ebx
    157d:	53                   	push   %ebx
    157e:	68 fd 42 00 00       	push   $0x42fd
    1583:	6a 01                	push   $0x1
    1585:	e8 a6 24 00 00       	call   3a30 <printf>
    exit();
    158a:	e8 32 23 00 00       	call   38c1 <exit>
    printf(1, "unlinkread read failed");
    158f:	56                   	push   %esi
    1590:	56                   	push   %esi
    1591:	68 e6 42 00 00       	push   $0x42e6
    1596:	6a 01                	push   $0x1
    1598:	e8 93 24 00 00       	call   3a30 <printf>
    exit();
    159d:	e8 1f 23 00 00       	call   38c1 <exit>
    printf(1, "unlink unlinkread failed\n");
    15a2:	50                   	push   %eax
    15a3:	50                   	push   %eax
    15a4:	68 c8 42 00 00       	push   $0x42c8
    15a9:	6a 01                	push   $0x1
    15ab:	e8 80 24 00 00       	call   3a30 <printf>
    exit();
    15b0:	e8 0c 23 00 00       	call   38c1 <exit>
    printf(1, "open unlinkread failed\n");
    15b5:	50                   	push   %eax
    15b6:	50                   	push   %eax
    15b7:	68 b0 42 00 00       	push   $0x42b0
    15bc:	6a 01                	push   $0x1
    15be:	e8 6d 24 00 00       	call   3a30 <printf>
    exit();
    15c3:	e8 f9 22 00 00       	call   38c1 <exit>
    15c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    15cf:	90                   	nop

000015d0 <linktest>:
{
    15d0:	55                   	push   %ebp
    15d1:	89 e5                	mov    %esp,%ebp
    15d3:	53                   	push   %ebx
    15d4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    15d7:	68 3c 43 00 00       	push   $0x433c
    15dc:	6a 01                	push   $0x1
    15de:	e8 4d 24 00 00       	call   3a30 <printf>
  unlink("lf1");
    15e3:	c7 04 24 46 43 00 00 	movl   $0x4346,(%esp)
    15ea:	e8 22 23 00 00       	call   3911 <unlink>
  unlink("lf2");
    15ef:	c7 04 24 4a 43 00 00 	movl   $0x434a,(%esp)
    15f6:	e8 16 23 00 00       	call   3911 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    15fb:	58                   	pop    %eax
    15fc:	5a                   	pop    %edx
    15fd:	68 02 02 00 00       	push   $0x202
    1602:	68 46 43 00 00       	push   $0x4346
    1607:	e8 f5 22 00 00       	call   3901 <open>
  if(fd < 0){
    160c:	83 c4 10             	add    $0x10,%esp
    160f:	85 c0                	test   %eax,%eax
    1611:	0f 88 1e 01 00 00    	js     1735 <linktest+0x165>
  if(write(fd, "hello", 5) != 5){
    1617:	83 ec 04             	sub    $0x4,%esp
    161a:	89 c3                	mov    %eax,%ebx
    161c:	6a 05                	push   $0x5
    161e:	68 aa 42 00 00       	push   $0x42aa
    1623:	50                   	push   %eax
    1624:	e8 b8 22 00 00       	call   38e1 <write>
    1629:	83 c4 10             	add    $0x10,%esp
    162c:	83 f8 05             	cmp    $0x5,%eax
    162f:	0f 85 98 01 00 00    	jne    17cd <linktest+0x1fd>
  close(fd);
    1635:	83 ec 0c             	sub    $0xc,%esp
    1638:	53                   	push   %ebx
    1639:	e8 ab 22 00 00       	call   38e9 <close>
  if(link("lf1", "lf2") < 0){
    163e:	5b                   	pop    %ebx
    163f:	58                   	pop    %eax
    1640:	68 4a 43 00 00       	push   $0x434a
    1645:	68 46 43 00 00       	push   $0x4346
    164a:	e8 d2 22 00 00       	call   3921 <link>
    164f:	83 c4 10             	add    $0x10,%esp
    1652:	85 c0                	test   %eax,%eax
    1654:	0f 88 60 01 00 00    	js     17ba <linktest+0x1ea>
  unlink("lf1");
    165a:	83 ec 0c             	sub    $0xc,%esp
    165d:	68 46 43 00 00       	push   $0x4346
    1662:	e8 aa 22 00 00       	call   3911 <unlink>
  if(open("lf1", 0) >= 0){
    1667:	58                   	pop    %eax
    1668:	5a                   	pop    %edx
    1669:	6a 00                	push   $0x0
    166b:	68 46 43 00 00       	push   $0x4346
    1670:	e8 8c 22 00 00       	call   3901 <open>
    1675:	83 c4 10             	add    $0x10,%esp
    1678:	85 c0                	test   %eax,%eax
    167a:	0f 89 27 01 00 00    	jns    17a7 <linktest+0x1d7>
  fd = open("lf2", 0);
    1680:	83 ec 08             	sub    $0x8,%esp
    1683:	6a 00                	push   $0x0
    1685:	68 4a 43 00 00       	push   $0x434a
    168a:	e8 72 22 00 00       	call   3901 <open>
  if(fd < 0){
    168f:	83 c4 10             	add    $0x10,%esp
  fd = open("lf2", 0);
    1692:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1694:	85 c0                	test   %eax,%eax
    1696:	0f 88 f8 00 00 00    	js     1794 <linktest+0x1c4>
  if(read(fd, buf, sizeof(buf)) != 5){
    169c:	83 ec 04             	sub    $0x4,%esp
    169f:	68 00 20 00 00       	push   $0x2000
    16a4:	68 60 86 00 00       	push   $0x8660
    16a9:	50                   	push   %eax
    16aa:	e8 2a 22 00 00       	call   38d9 <read>
    16af:	83 c4 10             	add    $0x10,%esp
    16b2:	83 f8 05             	cmp    $0x5,%eax
    16b5:	0f 85 c6 00 00 00    	jne    1781 <linktest+0x1b1>
  close(fd);
    16bb:	83 ec 0c             	sub    $0xc,%esp
    16be:	53                   	push   %ebx
    16bf:	e8 25 22 00 00       	call   38e9 <close>
  if(link("lf2", "lf2") >= 0){
    16c4:	58                   	pop    %eax
    16c5:	5a                   	pop    %edx
    16c6:	68 4a 43 00 00       	push   $0x434a
    16cb:	68 4a 43 00 00       	push   $0x434a
    16d0:	e8 4c 22 00 00       	call   3921 <link>
    16d5:	83 c4 10             	add    $0x10,%esp
    16d8:	85 c0                	test   %eax,%eax
    16da:	0f 89 8e 00 00 00    	jns    176e <linktest+0x19e>
  unlink("lf2");
    16e0:	83 ec 0c             	sub    $0xc,%esp
    16e3:	68 4a 43 00 00       	push   $0x434a
    16e8:	e8 24 22 00 00       	call   3911 <unlink>
  if(link("lf2", "lf1") >= 0){
    16ed:	59                   	pop    %ecx
    16ee:	5b                   	pop    %ebx
    16ef:	68 46 43 00 00       	push   $0x4346
    16f4:	68 4a 43 00 00       	push   $0x434a
    16f9:	e8 23 22 00 00       	call   3921 <link>
    16fe:	83 c4 10             	add    $0x10,%esp
    1701:	85 c0                	test   %eax,%eax
    1703:	79 56                	jns    175b <linktest+0x18b>
  if(link(".", "lf1") >= 0){
    1705:	83 ec 08             	sub    $0x8,%esp
    1708:	68 46 43 00 00       	push   $0x4346
    170d:	68 0e 46 00 00       	push   $0x460e
    1712:	e8 0a 22 00 00       	call   3921 <link>
    1717:	83 c4 10             	add    $0x10,%esp
    171a:	85 c0                	test   %eax,%eax
    171c:	79 2a                	jns    1748 <linktest+0x178>
  printf(1, "linktest ok\n");
    171e:	83 ec 08             	sub    $0x8,%esp
    1721:	68 e4 43 00 00       	push   $0x43e4
    1726:	6a 01                	push   $0x1
    1728:	e8 03 23 00 00       	call   3a30 <printf>
}
    172d:	83 c4 10             	add    $0x10,%esp
    1730:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1733:	c9                   	leave  
    1734:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    1735:	50                   	push   %eax
    1736:	50                   	push   %eax
    1737:	68 4e 43 00 00       	push   $0x434e
    173c:	6a 01                	push   $0x1
    173e:	e8 ed 22 00 00       	call   3a30 <printf>
    exit();
    1743:	e8 79 21 00 00       	call   38c1 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    1748:	50                   	push   %eax
    1749:	50                   	push   %eax
    174a:	68 c8 43 00 00       	push   $0x43c8
    174f:	6a 01                	push   $0x1
    1751:	e8 da 22 00 00       	call   3a30 <printf>
    exit();
    1756:	e8 66 21 00 00       	call   38c1 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    175b:	52                   	push   %edx
    175c:	52                   	push   %edx
    175d:	68 7c 4f 00 00       	push   $0x4f7c
    1762:	6a 01                	push   $0x1
    1764:	e8 c7 22 00 00       	call   3a30 <printf>
    exit();
    1769:	e8 53 21 00 00       	call   38c1 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    176e:	50                   	push   %eax
    176f:	50                   	push   %eax
    1770:	68 aa 43 00 00       	push   $0x43aa
    1775:	6a 01                	push   $0x1
    1777:	e8 b4 22 00 00       	call   3a30 <printf>
    exit();
    177c:	e8 40 21 00 00       	call   38c1 <exit>
    printf(1, "read lf2 failed\n");
    1781:	51                   	push   %ecx
    1782:	51                   	push   %ecx
    1783:	68 99 43 00 00       	push   $0x4399
    1788:	6a 01                	push   $0x1
    178a:	e8 a1 22 00 00       	call   3a30 <printf>
    exit();
    178f:	e8 2d 21 00 00       	call   38c1 <exit>
    printf(1, "open lf2 failed\n");
    1794:	53                   	push   %ebx
    1795:	53                   	push   %ebx
    1796:	68 88 43 00 00       	push   $0x4388
    179b:	6a 01                	push   $0x1
    179d:	e8 8e 22 00 00       	call   3a30 <printf>
    exit();
    17a2:	e8 1a 21 00 00       	call   38c1 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    17a7:	50                   	push   %eax
    17a8:	50                   	push   %eax
    17a9:	68 54 4f 00 00       	push   $0x4f54
    17ae:	6a 01                	push   $0x1
    17b0:	e8 7b 22 00 00       	call   3a30 <printf>
    exit();
    17b5:	e8 07 21 00 00       	call   38c1 <exit>
    printf(1, "link lf1 lf2 failed\n");
    17ba:	51                   	push   %ecx
    17bb:	51                   	push   %ecx
    17bc:	68 73 43 00 00       	push   $0x4373
    17c1:	6a 01                	push   $0x1
    17c3:	e8 68 22 00 00       	call   3a30 <printf>
    exit();
    17c8:	e8 f4 20 00 00       	call   38c1 <exit>
    printf(1, "write lf1 failed\n");
    17cd:	50                   	push   %eax
    17ce:	50                   	push   %eax
    17cf:	68 61 43 00 00       	push   $0x4361
    17d4:	6a 01                	push   $0x1
    17d6:	e8 55 22 00 00       	call   3a30 <printf>
    exit();
    17db:	e8 e1 20 00 00       	call   38c1 <exit>

000017e0 <concreate>:
{
    17e0:	55                   	push   %ebp
    17e1:	89 e5                	mov    %esp,%ebp
    17e3:	57                   	push   %edi
    if(pid && (i % 3) == 1){
    17e4:	bf ab aa aa aa       	mov    $0xaaaaaaab,%edi
{
    17e9:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    17ea:	31 f6                	xor    %esi,%esi
{
    17ec:	53                   	push   %ebx
    17ed:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    17f0:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    17f3:	68 f1 43 00 00       	push   $0x43f1
    17f8:	6a 01                	push   $0x1
    17fa:	e8 31 22 00 00       	call   3a30 <printf>
  file[0] = 'C';
    17ff:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1803:	83 c4 10             	add    $0x10,%esp
    1806:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
  for(i = 0; i < 40; i++){
    180a:	eb 4c                	jmp    1858 <concreate+0x78>
    180c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid && (i % 3) == 1){
    1810:	89 f0                	mov    %esi,%eax
    1812:	89 f1                	mov    %esi,%ecx
    1814:	f7 e7                	mul    %edi
    1816:	d1 ea                	shr    %edx
    1818:	8d 04 52             	lea    (%edx,%edx,2),%eax
    181b:	29 c1                	sub    %eax,%ecx
    181d:	83 f9 01             	cmp    $0x1,%ecx
    1820:	0f 84 ba 00 00 00    	je     18e0 <concreate+0x100>
      fd = open(file, O_CREATE | O_RDWR);
    1826:	83 ec 08             	sub    $0x8,%esp
    1829:	68 02 02 00 00       	push   $0x202
    182e:	53                   	push   %ebx
    182f:	e8 cd 20 00 00       	call   3901 <open>
      if(fd < 0){
    1834:	83 c4 10             	add    $0x10,%esp
    1837:	85 c0                	test   %eax,%eax
    1839:	78 67                	js     18a2 <concreate+0xc2>
      close(fd);
    183b:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    183e:	83 c6 01             	add    $0x1,%esi
      close(fd);
    1841:	50                   	push   %eax
    1842:	e8 a2 20 00 00       	call   38e9 <close>
    1847:	83 c4 10             	add    $0x10,%esp
      wait();
    184a:	e8 7a 20 00 00       	call   38c9 <wait>
  for(i = 0; i < 40; i++){
    184f:	83 fe 28             	cmp    $0x28,%esi
    1852:	0f 84 aa 00 00 00    	je     1902 <concreate+0x122>
    unlink(file);
    1858:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    185b:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    185e:	53                   	push   %ebx
    file[1] = '0' + i;
    185f:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    1862:	e8 aa 20 00 00       	call   3911 <unlink>
    pid = fork();
    1867:	e8 4d 20 00 00       	call   38b9 <fork>
    if(pid && (i % 3) == 1){
    186c:	83 c4 10             	add    $0x10,%esp
    186f:	85 c0                	test   %eax,%eax
    1871:	75 9d                	jne    1810 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    1873:	89 f0                	mov    %esi,%eax
    1875:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    187a:	f7 e2                	mul    %edx
    187c:	c1 ea 02             	shr    $0x2,%edx
    187f:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1882:	29 c6                	sub    %eax,%esi
    1884:	83 fe 01             	cmp    $0x1,%esi
    1887:	74 37                	je     18c0 <concreate+0xe0>
      fd = open(file, O_CREATE | O_RDWR);
    1889:	83 ec 08             	sub    $0x8,%esp
    188c:	68 02 02 00 00       	push   $0x202
    1891:	53                   	push   %ebx
    1892:	e8 6a 20 00 00       	call   3901 <open>
      if(fd < 0){
    1897:	83 c4 10             	add    $0x10,%esp
    189a:	85 c0                	test   %eax,%eax
    189c:	0f 89 2c 02 00 00    	jns    1ace <concreate+0x2ee>
        printf(1, "concreate create %s failed\n", file);
    18a2:	83 ec 04             	sub    $0x4,%esp
    18a5:	53                   	push   %ebx
    18a6:	68 04 44 00 00       	push   $0x4404
    18ab:	6a 01                	push   $0x1
    18ad:	e8 7e 21 00 00       	call   3a30 <printf>
        exit();
    18b2:	e8 0a 20 00 00       	call   38c1 <exit>
    18b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    18be:	66 90                	xchg   %ax,%ax
      link("C0", file);
    18c0:	83 ec 08             	sub    $0x8,%esp
    18c3:	53                   	push   %ebx
    18c4:	68 01 44 00 00       	push   $0x4401
    18c9:	e8 53 20 00 00       	call   3921 <link>
    18ce:	83 c4 10             	add    $0x10,%esp
      exit();
    18d1:	e8 eb 1f 00 00       	call   38c1 <exit>
    18d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    18dd:	8d 76 00             	lea    0x0(%esi),%esi
      link("C0", file);
    18e0:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 40; i++){
    18e3:	83 c6 01             	add    $0x1,%esi
      link("C0", file);
    18e6:	53                   	push   %ebx
    18e7:	68 01 44 00 00       	push   $0x4401
    18ec:	e8 30 20 00 00       	call   3921 <link>
    18f1:	83 c4 10             	add    $0x10,%esp
      wait();
    18f4:	e8 d0 1f 00 00       	call   38c9 <wait>
  for(i = 0; i < 40; i++){
    18f9:	83 fe 28             	cmp    $0x28,%esi
    18fc:	0f 85 56 ff ff ff    	jne    1858 <concreate+0x78>
  memset(fa, 0, sizeof(fa));
    1902:	83 ec 04             	sub    $0x4,%esp
    1905:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1908:	6a 28                	push   $0x28
    190a:	6a 00                	push   $0x0
    190c:	50                   	push   %eax
    190d:	e8 0e 1e 00 00       	call   3720 <memset>
  fd = open(".", 0);
    1912:	5e                   	pop    %esi
    1913:	5f                   	pop    %edi
    1914:	6a 00                	push   $0x0
    1916:	68 0e 46 00 00       	push   $0x460e
    191b:	8d 7d b0             	lea    -0x50(%ebp),%edi
    191e:	e8 de 1f 00 00       	call   3901 <open>
  n = 0;
    1923:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  while(read(fd, &de, sizeof(de)) > 0){
    192a:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    192d:	89 c6                	mov    %eax,%esi
  while(read(fd, &de, sizeof(de)) > 0){
    192f:	90                   	nop
    1930:	83 ec 04             	sub    $0x4,%esp
    1933:	6a 10                	push   $0x10
    1935:	57                   	push   %edi
    1936:	56                   	push   %esi
    1937:	e8 9d 1f 00 00       	call   38d9 <read>
    193c:	83 c4 10             	add    $0x10,%esp
    193f:	85 c0                	test   %eax,%eax
    1941:	7e 3d                	jle    1980 <concreate+0x1a0>
    if(de.inum == 0)
    1943:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1948:	74 e6                	je     1930 <concreate+0x150>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    194a:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    194e:	75 e0                	jne    1930 <concreate+0x150>
    1950:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1954:	75 da                	jne    1930 <concreate+0x150>
      i = de.name[1] - '0';
    1956:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    195a:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    195d:	83 f8 27             	cmp    $0x27,%eax
    1960:	0f 87 50 01 00 00    	ja     1ab6 <concreate+0x2d6>
      if(fa[i]){
    1966:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    196b:	0f 85 2d 01 00 00    	jne    1a9e <concreate+0x2be>
      fa[i] = 1;
    1971:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1976:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    197a:	eb b4                	jmp    1930 <concreate+0x150>
    197c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    1980:	83 ec 0c             	sub    $0xc,%esp
    1983:	56                   	push   %esi
    1984:	e8 60 1f 00 00       	call   38e9 <close>
  if(n != 40){
    1989:	83 c4 10             	add    $0x10,%esp
    198c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1990:	0f 85 f5 00 00 00    	jne    1a8b <concreate+0x2ab>
  for(i = 0; i < 40; i++){
    1996:	31 f6                	xor    %esi,%esi
    1998:	eb 48                	jmp    19e2 <concreate+0x202>
    199a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    19a0:	85 ff                	test   %edi,%edi
    19a2:	74 05                	je     19a9 <concreate+0x1c9>
    19a4:	83 fa 01             	cmp    $0x1,%edx
    19a7:	74 64                	je     1a0d <concreate+0x22d>
      unlink(file);
    19a9:	83 ec 0c             	sub    $0xc,%esp
    19ac:	53                   	push   %ebx
    19ad:	e8 5f 1f 00 00       	call   3911 <unlink>
      unlink(file);
    19b2:	89 1c 24             	mov    %ebx,(%esp)
    19b5:	e8 57 1f 00 00       	call   3911 <unlink>
      unlink(file);
    19ba:	89 1c 24             	mov    %ebx,(%esp)
    19bd:	e8 4f 1f 00 00       	call   3911 <unlink>
      unlink(file);
    19c2:	89 1c 24             	mov    %ebx,(%esp)
    19c5:	e8 47 1f 00 00       	call   3911 <unlink>
    19ca:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    19cd:	85 ff                	test   %edi,%edi
    19cf:	0f 84 fc fe ff ff    	je     18d1 <concreate+0xf1>
      wait();
    19d5:	e8 ef 1e 00 00       	call   38c9 <wait>
  for(i = 0; i < 40; i++){
    19da:	83 c6 01             	add    $0x1,%esi
    19dd:	83 fe 28             	cmp    $0x28,%esi
    19e0:	74 7e                	je     1a60 <concreate+0x280>
    file[1] = '0' + i;
    19e2:	8d 46 30             	lea    0x30(%esi),%eax
    19e5:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    19e8:	e8 cc 1e 00 00       	call   38b9 <fork>
    19ed:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    19ef:	85 c0                	test   %eax,%eax
    19f1:	0f 88 80 00 00 00    	js     1a77 <concreate+0x297>
    if(((i % 3) == 0 && pid == 0) ||
    19f7:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    19fc:	f7 e6                	mul    %esi
    19fe:	d1 ea                	shr    %edx
    1a00:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1a03:	89 f2                	mov    %esi,%edx
    1a05:	29 c2                	sub    %eax,%edx
    1a07:	89 d0                	mov    %edx,%eax
    1a09:	09 f8                	or     %edi,%eax
    1a0b:	75 93                	jne    19a0 <concreate+0x1c0>
      close(open(file, 0));
    1a0d:	83 ec 08             	sub    $0x8,%esp
    1a10:	6a 00                	push   $0x0
    1a12:	53                   	push   %ebx
    1a13:	e8 e9 1e 00 00       	call   3901 <open>
    1a18:	89 04 24             	mov    %eax,(%esp)
    1a1b:	e8 c9 1e 00 00       	call   38e9 <close>
      close(open(file, 0));
    1a20:	58                   	pop    %eax
    1a21:	5a                   	pop    %edx
    1a22:	6a 00                	push   $0x0
    1a24:	53                   	push   %ebx
    1a25:	e8 d7 1e 00 00       	call   3901 <open>
    1a2a:	89 04 24             	mov    %eax,(%esp)
    1a2d:	e8 b7 1e 00 00       	call   38e9 <close>
      close(open(file, 0));
    1a32:	59                   	pop    %ecx
    1a33:	58                   	pop    %eax
    1a34:	6a 00                	push   $0x0
    1a36:	53                   	push   %ebx
    1a37:	e8 c5 1e 00 00       	call   3901 <open>
    1a3c:	89 04 24             	mov    %eax,(%esp)
    1a3f:	e8 a5 1e 00 00       	call   38e9 <close>
      close(open(file, 0));
    1a44:	58                   	pop    %eax
    1a45:	5a                   	pop    %edx
    1a46:	6a 00                	push   $0x0
    1a48:	53                   	push   %ebx
    1a49:	e8 b3 1e 00 00       	call   3901 <open>
    1a4e:	89 04 24             	mov    %eax,(%esp)
    1a51:	e8 93 1e 00 00       	call   38e9 <close>
    1a56:	83 c4 10             	add    $0x10,%esp
    1a59:	e9 6f ff ff ff       	jmp    19cd <concreate+0x1ed>
    1a5e:	66 90                	xchg   %ax,%ax
  printf(1, "concreate ok\n");
    1a60:	83 ec 08             	sub    $0x8,%esp
    1a63:	68 56 44 00 00       	push   $0x4456
    1a68:	6a 01                	push   $0x1
    1a6a:	e8 c1 1f 00 00       	call   3a30 <printf>
}
    1a6f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1a72:	5b                   	pop    %ebx
    1a73:	5e                   	pop    %esi
    1a74:	5f                   	pop    %edi
    1a75:	5d                   	pop    %ebp
    1a76:	c3                   	ret    
      printf(1, "fork failed\n");
    1a77:	83 ec 08             	sub    $0x8,%esp
    1a7a:	68 d9 4c 00 00       	push   $0x4cd9
    1a7f:	6a 01                	push   $0x1
    1a81:	e8 aa 1f 00 00       	call   3a30 <printf>
      exit();
    1a86:	e8 36 1e 00 00       	call   38c1 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    1a8b:	51                   	push   %ecx
    1a8c:	51                   	push   %ecx
    1a8d:	68 a0 4f 00 00       	push   $0x4fa0
    1a92:	6a 01                	push   $0x1
    1a94:	e8 97 1f 00 00       	call   3a30 <printf>
    exit();
    1a99:	e8 23 1e 00 00       	call   38c1 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1a9e:	83 ec 04             	sub    $0x4,%esp
    1aa1:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1aa4:	50                   	push   %eax
    1aa5:	68 39 44 00 00       	push   $0x4439
    1aaa:	6a 01                	push   $0x1
    1aac:	e8 7f 1f 00 00       	call   3a30 <printf>
        exit();
    1ab1:	e8 0b 1e 00 00       	call   38c1 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    1ab6:	83 ec 04             	sub    $0x4,%esp
    1ab9:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1abc:	50                   	push   %eax
    1abd:	68 20 44 00 00       	push   $0x4420
    1ac2:	6a 01                	push   $0x1
    1ac4:	e8 67 1f 00 00       	call   3a30 <printf>
        exit();
    1ac9:	e8 f3 1d 00 00       	call   38c1 <exit>
      close(fd);
    1ace:	83 ec 0c             	sub    $0xc,%esp
    1ad1:	50                   	push   %eax
    1ad2:	e8 12 1e 00 00       	call   38e9 <close>
    1ad7:	83 c4 10             	add    $0x10,%esp
    1ada:	e9 f2 fd ff ff       	jmp    18d1 <concreate+0xf1>
    1adf:	90                   	nop

00001ae0 <linkunlink>:
{
    1ae0:	55                   	push   %ebp
    1ae1:	89 e5                	mov    %esp,%ebp
    1ae3:	57                   	push   %edi
    1ae4:	56                   	push   %esi
    1ae5:	53                   	push   %ebx
    1ae6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    1ae9:	68 64 44 00 00       	push   $0x4464
    1aee:	6a 01                	push   $0x1
    1af0:	e8 3b 1f 00 00       	call   3a30 <printf>
  unlink("x");
    1af5:	c7 04 24 f1 46 00 00 	movl   $0x46f1,(%esp)
    1afc:	e8 10 1e 00 00       	call   3911 <unlink>
  pid = fork();
    1b01:	e8 b3 1d 00 00       	call   38b9 <fork>
  if(pid < 0){
    1b06:	83 c4 10             	add    $0x10,%esp
  pid = fork();
    1b09:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1b0c:	85 c0                	test   %eax,%eax
    1b0e:	0f 88 b6 00 00 00    	js     1bca <linkunlink+0xea>
  unsigned int x = (pid ? 1 : 97);
    1b14:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1b18:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1b1d:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1b22:	19 ff                	sbb    %edi,%edi
    1b24:	83 e7 60             	and    $0x60,%edi
    1b27:	83 c7 01             	add    $0x1,%edi
    1b2a:	eb 1e                	jmp    1b4a <linkunlink+0x6a>
    1b2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1b30:	83 fa 01             	cmp    $0x1,%edx
    1b33:	74 7b                	je     1bb0 <linkunlink+0xd0>
      unlink("x");
    1b35:	83 ec 0c             	sub    $0xc,%esp
    1b38:	68 f1 46 00 00       	push   $0x46f1
    1b3d:	e8 cf 1d 00 00       	call   3911 <unlink>
    1b42:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b45:	83 eb 01             	sub    $0x1,%ebx
    1b48:	74 3d                	je     1b87 <linkunlink+0xa7>
    x = x * 1103515245 + 12345;
    1b4a:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1b50:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1b56:	89 f8                	mov    %edi,%eax
    1b58:	f7 e6                	mul    %esi
    1b5a:	d1 ea                	shr    %edx
    1b5c:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1b5f:	89 fa                	mov    %edi,%edx
    1b61:	29 c2                	sub    %eax,%edx
    1b63:	75 cb                	jne    1b30 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    1b65:	83 ec 08             	sub    $0x8,%esp
    1b68:	68 02 02 00 00       	push   $0x202
    1b6d:	68 f1 46 00 00       	push   $0x46f1
    1b72:	e8 8a 1d 00 00       	call   3901 <open>
    1b77:	89 04 24             	mov    %eax,(%esp)
    1b7a:	e8 6a 1d 00 00       	call   38e9 <close>
    1b7f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b82:	83 eb 01             	sub    $0x1,%ebx
    1b85:	75 c3                	jne    1b4a <linkunlink+0x6a>
  if(pid)
    1b87:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1b8a:	85 c0                	test   %eax,%eax
    1b8c:	74 4f                	je     1bdd <linkunlink+0xfd>
    wait();
    1b8e:	e8 36 1d 00 00       	call   38c9 <wait>
  printf(1, "linkunlink ok\n");
    1b93:	83 ec 08             	sub    $0x8,%esp
    1b96:	68 79 44 00 00       	push   $0x4479
    1b9b:	6a 01                	push   $0x1
    1b9d:	e8 8e 1e 00 00       	call   3a30 <printf>
}
    1ba2:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1ba5:	5b                   	pop    %ebx
    1ba6:	5e                   	pop    %esi
    1ba7:	5f                   	pop    %edi
    1ba8:	5d                   	pop    %ebp
    1ba9:	c3                   	ret    
    1baa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      link("cat", "x");
    1bb0:	83 ec 08             	sub    $0x8,%esp
    1bb3:	68 f1 46 00 00       	push   $0x46f1
    1bb8:	68 75 44 00 00       	push   $0x4475
    1bbd:	e8 5f 1d 00 00       	call   3921 <link>
    1bc2:	83 c4 10             	add    $0x10,%esp
    1bc5:	e9 7b ff ff ff       	jmp    1b45 <linkunlink+0x65>
    printf(1, "fork failed\n");
    1bca:	52                   	push   %edx
    1bcb:	52                   	push   %edx
    1bcc:	68 d9 4c 00 00       	push   $0x4cd9
    1bd1:	6a 01                	push   $0x1
    1bd3:	e8 58 1e 00 00       	call   3a30 <printf>
    exit();
    1bd8:	e8 e4 1c 00 00       	call   38c1 <exit>
    exit();
    1bdd:	e8 df 1c 00 00       	call   38c1 <exit>
    1be2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001bf0 <bigdir>:
{
    1bf0:	55                   	push   %ebp
    1bf1:	89 e5                	mov    %esp,%ebp
    1bf3:	57                   	push   %edi
    1bf4:	56                   	push   %esi
    1bf5:	53                   	push   %ebx
    1bf6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    1bf9:	68 88 44 00 00       	push   $0x4488
    1bfe:	6a 01                	push   $0x1
    1c00:	e8 2b 1e 00 00       	call   3a30 <printf>
  unlink("bd");
    1c05:	c7 04 24 95 44 00 00 	movl   $0x4495,(%esp)
    1c0c:	e8 00 1d 00 00       	call   3911 <unlink>
  fd = open("bd", O_CREATE);
    1c11:	5a                   	pop    %edx
    1c12:	59                   	pop    %ecx
    1c13:	68 00 02 00 00       	push   $0x200
    1c18:	68 95 44 00 00       	push   $0x4495
    1c1d:	e8 df 1c 00 00       	call   3901 <open>
  if(fd < 0){
    1c22:	83 c4 10             	add    $0x10,%esp
    1c25:	85 c0                	test   %eax,%eax
    1c27:	0f 88 de 00 00 00    	js     1d0b <bigdir+0x11b>
  close(fd);
    1c2d:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    1c30:	31 f6                	xor    %esi,%esi
    1c32:	8d 7d de             	lea    -0x22(%ebp),%edi
  close(fd);
    1c35:	50                   	push   %eax
    1c36:	e8 ae 1c 00 00       	call   38e9 <close>
    1c3b:	83 c4 10             	add    $0x10,%esp
    1c3e:	66 90                	xchg   %ax,%ax
    name[1] = '0' + (i / 64);
    1c40:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    1c42:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    1c45:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c49:	c1 f8 06             	sar    $0x6,%eax
    if(link("bd", name) != 0){
    1c4c:	57                   	push   %edi
    name[1] = '0' + (i / 64);
    1c4d:	83 c0 30             	add    $0x30,%eax
    if(link("bd", name) != 0){
    1c50:	68 95 44 00 00       	push   $0x4495
    name[1] = '0' + (i / 64);
    1c55:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1c58:	89 f0                	mov    %esi,%eax
    1c5a:	83 e0 3f             	and    $0x3f,%eax
    name[3] = '\0';
    1c5d:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[2] = '0' + (i % 64);
    1c61:	83 c0 30             	add    $0x30,%eax
    1c64:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    1c67:	e8 b5 1c 00 00       	call   3921 <link>
    1c6c:	83 c4 10             	add    $0x10,%esp
    1c6f:	89 c3                	mov    %eax,%ebx
    1c71:	85 c0                	test   %eax,%eax
    1c73:	75 6e                	jne    1ce3 <bigdir+0xf3>
  for(i = 0; i < 500; i++){
    1c75:	83 c6 01             	add    $0x1,%esi
    1c78:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    1c7e:	75 c0                	jne    1c40 <bigdir+0x50>
  unlink("bd");
    1c80:	83 ec 0c             	sub    $0xc,%esp
    1c83:	68 95 44 00 00       	push   $0x4495
    1c88:	e8 84 1c 00 00       	call   3911 <unlink>
    1c8d:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + (i / 64);
    1c90:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    1c92:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    1c95:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c99:	c1 f8 06             	sar    $0x6,%eax
    if(unlink(name) != 0){
    1c9c:	57                   	push   %edi
    name[1] = '0' + (i / 64);
    1c9d:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    1ca0:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1ca4:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1ca7:	89 d8                	mov    %ebx,%eax
    1ca9:	83 e0 3f             	and    $0x3f,%eax
    1cac:	83 c0 30             	add    $0x30,%eax
    1caf:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    1cb2:	e8 5a 1c 00 00       	call   3911 <unlink>
    1cb7:	83 c4 10             	add    $0x10,%esp
    1cba:	85 c0                	test   %eax,%eax
    1cbc:	75 39                	jne    1cf7 <bigdir+0x107>
  for(i = 0; i < 500; i++){
    1cbe:	83 c3 01             	add    $0x1,%ebx
    1cc1:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1cc7:	75 c7                	jne    1c90 <bigdir+0xa0>
  printf(1, "bigdir ok\n");
    1cc9:	83 ec 08             	sub    $0x8,%esp
    1ccc:	68 d7 44 00 00       	push   $0x44d7
    1cd1:	6a 01                	push   $0x1
    1cd3:	e8 58 1d 00 00       	call   3a30 <printf>
    1cd8:	83 c4 10             	add    $0x10,%esp
}
    1cdb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1cde:	5b                   	pop    %ebx
    1cdf:	5e                   	pop    %esi
    1ce0:	5f                   	pop    %edi
    1ce1:	5d                   	pop    %ebp
    1ce2:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    1ce3:	83 ec 08             	sub    $0x8,%esp
    1ce6:	68 ae 44 00 00       	push   $0x44ae
    1ceb:	6a 01                	push   $0x1
    1ced:	e8 3e 1d 00 00       	call   3a30 <printf>
      exit();
    1cf2:	e8 ca 1b 00 00       	call   38c1 <exit>
      printf(1, "bigdir unlink failed");
    1cf7:	83 ec 08             	sub    $0x8,%esp
    1cfa:	68 c2 44 00 00       	push   $0x44c2
    1cff:	6a 01                	push   $0x1
    1d01:	e8 2a 1d 00 00       	call   3a30 <printf>
      exit();
    1d06:	e8 b6 1b 00 00       	call   38c1 <exit>
    printf(1, "bigdir create failed\n");
    1d0b:	50                   	push   %eax
    1d0c:	50                   	push   %eax
    1d0d:	68 98 44 00 00       	push   $0x4498
    1d12:	6a 01                	push   $0x1
    1d14:	e8 17 1d 00 00       	call   3a30 <printf>
    exit();
    1d19:	e8 a3 1b 00 00       	call   38c1 <exit>
    1d1e:	66 90                	xchg   %ax,%ax

00001d20 <subdir>:
{
    1d20:	55                   	push   %ebp
    1d21:	89 e5                	mov    %esp,%ebp
    1d23:	53                   	push   %ebx
    1d24:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    1d27:	68 e2 44 00 00       	push   $0x44e2
    1d2c:	6a 01                	push   $0x1
    1d2e:	e8 fd 1c 00 00       	call   3a30 <printf>
  unlink("ff");
    1d33:	c7 04 24 6b 45 00 00 	movl   $0x456b,(%esp)
    1d3a:	e8 d2 1b 00 00       	call   3911 <unlink>
  if(mkdir("dd") != 0){
    1d3f:	c7 04 24 08 46 00 00 	movl   $0x4608,(%esp)
    1d46:	e8 de 1b 00 00       	call   3929 <mkdir>
    1d4b:	83 c4 10             	add    $0x10,%esp
    1d4e:	85 c0                	test   %eax,%eax
    1d50:	0f 85 b3 05 00 00    	jne    2309 <subdir+0x5e9>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d56:	83 ec 08             	sub    $0x8,%esp
    1d59:	68 02 02 00 00       	push   $0x202
    1d5e:	68 41 45 00 00       	push   $0x4541
    1d63:	e8 99 1b 00 00       	call   3901 <open>
  if(fd < 0){
    1d68:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d6b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1d6d:	85 c0                	test   %eax,%eax
    1d6f:	0f 88 81 05 00 00    	js     22f6 <subdir+0x5d6>
  write(fd, "ff", 2);
    1d75:	83 ec 04             	sub    $0x4,%esp
    1d78:	6a 02                	push   $0x2
    1d7a:	68 6b 45 00 00       	push   $0x456b
    1d7f:	50                   	push   %eax
    1d80:	e8 5c 1b 00 00       	call   38e1 <write>
  close(fd);
    1d85:	89 1c 24             	mov    %ebx,(%esp)
    1d88:	e8 5c 1b 00 00       	call   38e9 <close>
  if(unlink("dd") >= 0){
    1d8d:	c7 04 24 08 46 00 00 	movl   $0x4608,(%esp)
    1d94:	e8 78 1b 00 00       	call   3911 <unlink>
    1d99:	83 c4 10             	add    $0x10,%esp
    1d9c:	85 c0                	test   %eax,%eax
    1d9e:	0f 89 3f 05 00 00    	jns    22e3 <subdir+0x5c3>
  if(mkdir("/dd/dd") != 0){
    1da4:	83 ec 0c             	sub    $0xc,%esp
    1da7:	68 1c 45 00 00       	push   $0x451c
    1dac:	e8 78 1b 00 00       	call   3929 <mkdir>
    1db1:	83 c4 10             	add    $0x10,%esp
    1db4:	85 c0                	test   %eax,%eax
    1db6:	0f 85 14 05 00 00    	jne    22d0 <subdir+0x5b0>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1dbc:	83 ec 08             	sub    $0x8,%esp
    1dbf:	68 02 02 00 00       	push   $0x202
    1dc4:	68 3e 45 00 00       	push   $0x453e
    1dc9:	e8 33 1b 00 00       	call   3901 <open>
  if(fd < 0){
    1dce:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1dd1:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1dd3:	85 c0                	test   %eax,%eax
    1dd5:	0f 88 24 04 00 00    	js     21ff <subdir+0x4df>
  write(fd, "FF", 2);
    1ddb:	83 ec 04             	sub    $0x4,%esp
    1dde:	6a 02                	push   $0x2
    1de0:	68 5f 45 00 00       	push   $0x455f
    1de5:	50                   	push   %eax
    1de6:	e8 f6 1a 00 00       	call   38e1 <write>
  close(fd);
    1deb:	89 1c 24             	mov    %ebx,(%esp)
    1dee:	e8 f6 1a 00 00       	call   38e9 <close>
  fd = open("dd/dd/../ff", 0);
    1df3:	58                   	pop    %eax
    1df4:	5a                   	pop    %edx
    1df5:	6a 00                	push   $0x0
    1df7:	68 62 45 00 00       	push   $0x4562
    1dfc:	e8 00 1b 00 00       	call   3901 <open>
  if(fd < 0){
    1e01:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/../ff", 0);
    1e04:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1e06:	85 c0                	test   %eax,%eax
    1e08:	0f 88 de 03 00 00    	js     21ec <subdir+0x4cc>
  cc = read(fd, buf, sizeof(buf));
    1e0e:	83 ec 04             	sub    $0x4,%esp
    1e11:	68 00 20 00 00       	push   $0x2000
    1e16:	68 60 86 00 00       	push   $0x8660
    1e1b:	50                   	push   %eax
    1e1c:	e8 b8 1a 00 00       	call   38d9 <read>
  if(cc != 2 || buf[0] != 'f'){
    1e21:	83 c4 10             	add    $0x10,%esp
    1e24:	83 f8 02             	cmp    $0x2,%eax
    1e27:	0f 85 3a 03 00 00    	jne    2167 <subdir+0x447>
    1e2d:	80 3d 60 86 00 00 66 	cmpb   $0x66,0x8660
    1e34:	0f 85 2d 03 00 00    	jne    2167 <subdir+0x447>
  close(fd);
    1e3a:	83 ec 0c             	sub    $0xc,%esp
    1e3d:	53                   	push   %ebx
    1e3e:	e8 a6 1a 00 00       	call   38e9 <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    1e43:	5b                   	pop    %ebx
    1e44:	58                   	pop    %eax
    1e45:	68 a2 45 00 00       	push   $0x45a2
    1e4a:	68 3e 45 00 00       	push   $0x453e
    1e4f:	e8 cd 1a 00 00       	call   3921 <link>
    1e54:	83 c4 10             	add    $0x10,%esp
    1e57:	85 c0                	test   %eax,%eax
    1e59:	0f 85 c6 03 00 00    	jne    2225 <subdir+0x505>
  if(unlink("dd/dd/ff") != 0){
    1e5f:	83 ec 0c             	sub    $0xc,%esp
    1e62:	68 3e 45 00 00       	push   $0x453e
    1e67:	e8 a5 1a 00 00       	call   3911 <unlink>
    1e6c:	83 c4 10             	add    $0x10,%esp
    1e6f:	85 c0                	test   %eax,%eax
    1e71:	0f 85 16 03 00 00    	jne    218d <subdir+0x46d>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1e77:	83 ec 08             	sub    $0x8,%esp
    1e7a:	6a 00                	push   $0x0
    1e7c:	68 3e 45 00 00       	push   $0x453e
    1e81:	e8 7b 1a 00 00       	call   3901 <open>
    1e86:	83 c4 10             	add    $0x10,%esp
    1e89:	85 c0                	test   %eax,%eax
    1e8b:	0f 89 2c 04 00 00    	jns    22bd <subdir+0x59d>
  if(chdir("dd") != 0){
    1e91:	83 ec 0c             	sub    $0xc,%esp
    1e94:	68 08 46 00 00       	push   $0x4608
    1e99:	e8 93 1a 00 00       	call   3931 <chdir>
    1e9e:	83 c4 10             	add    $0x10,%esp
    1ea1:	85 c0                	test   %eax,%eax
    1ea3:	0f 85 01 04 00 00    	jne    22aa <subdir+0x58a>
  if(chdir("dd/../../dd") != 0){
    1ea9:	83 ec 0c             	sub    $0xc,%esp
    1eac:	68 d6 45 00 00       	push   $0x45d6
    1eb1:	e8 7b 1a 00 00       	call   3931 <chdir>
    1eb6:	83 c4 10             	add    $0x10,%esp
    1eb9:	85 c0                	test   %eax,%eax
    1ebb:	0f 85 b9 02 00 00    	jne    217a <subdir+0x45a>
  if(chdir("dd/../../../dd") != 0){
    1ec1:	83 ec 0c             	sub    $0xc,%esp
    1ec4:	68 fc 45 00 00       	push   $0x45fc
    1ec9:	e8 63 1a 00 00       	call   3931 <chdir>
    1ece:	83 c4 10             	add    $0x10,%esp
    1ed1:	85 c0                	test   %eax,%eax
    1ed3:	0f 85 a1 02 00 00    	jne    217a <subdir+0x45a>
  if(chdir("./..") != 0){
    1ed9:	83 ec 0c             	sub    $0xc,%esp
    1edc:	68 0b 46 00 00       	push   $0x460b
    1ee1:	e8 4b 1a 00 00       	call   3931 <chdir>
    1ee6:	83 c4 10             	add    $0x10,%esp
    1ee9:	85 c0                	test   %eax,%eax
    1eeb:	0f 85 21 03 00 00    	jne    2212 <subdir+0x4f2>
  fd = open("dd/dd/ffff", 0);
    1ef1:	83 ec 08             	sub    $0x8,%esp
    1ef4:	6a 00                	push   $0x0
    1ef6:	68 a2 45 00 00       	push   $0x45a2
    1efb:	e8 01 1a 00 00       	call   3901 <open>
  if(fd < 0){
    1f00:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ffff", 0);
    1f03:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1f05:	85 c0                	test   %eax,%eax
    1f07:	0f 88 e0 04 00 00    	js     23ed <subdir+0x6cd>
  if(read(fd, buf, sizeof(buf)) != 2){
    1f0d:	83 ec 04             	sub    $0x4,%esp
    1f10:	68 00 20 00 00       	push   $0x2000
    1f15:	68 60 86 00 00       	push   $0x8660
    1f1a:	50                   	push   %eax
    1f1b:	e8 b9 19 00 00       	call   38d9 <read>
    1f20:	83 c4 10             	add    $0x10,%esp
    1f23:	83 f8 02             	cmp    $0x2,%eax
    1f26:	0f 85 ae 04 00 00    	jne    23da <subdir+0x6ba>
  close(fd);
    1f2c:	83 ec 0c             	sub    $0xc,%esp
    1f2f:	53                   	push   %ebx
    1f30:	e8 b4 19 00 00       	call   38e9 <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1f35:	59                   	pop    %ecx
    1f36:	5b                   	pop    %ebx
    1f37:	6a 00                	push   $0x0
    1f39:	68 3e 45 00 00       	push   $0x453e
    1f3e:	e8 be 19 00 00       	call   3901 <open>
    1f43:	83 c4 10             	add    $0x10,%esp
    1f46:	85 c0                	test   %eax,%eax
    1f48:	0f 89 65 02 00 00    	jns    21b3 <subdir+0x493>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    1f4e:	83 ec 08             	sub    $0x8,%esp
    1f51:	68 02 02 00 00       	push   $0x202
    1f56:	68 56 46 00 00       	push   $0x4656
    1f5b:	e8 a1 19 00 00       	call   3901 <open>
    1f60:	83 c4 10             	add    $0x10,%esp
    1f63:	85 c0                	test   %eax,%eax
    1f65:	0f 89 35 02 00 00    	jns    21a0 <subdir+0x480>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    1f6b:	83 ec 08             	sub    $0x8,%esp
    1f6e:	68 02 02 00 00       	push   $0x202
    1f73:	68 7b 46 00 00       	push   $0x467b
    1f78:	e8 84 19 00 00       	call   3901 <open>
    1f7d:	83 c4 10             	add    $0x10,%esp
    1f80:	85 c0                	test   %eax,%eax
    1f82:	0f 89 0f 03 00 00    	jns    2297 <subdir+0x577>
  if(open("dd", O_CREATE) >= 0){
    1f88:	83 ec 08             	sub    $0x8,%esp
    1f8b:	68 00 02 00 00       	push   $0x200
    1f90:	68 08 46 00 00       	push   $0x4608
    1f95:	e8 67 19 00 00       	call   3901 <open>
    1f9a:	83 c4 10             	add    $0x10,%esp
    1f9d:	85 c0                	test   %eax,%eax
    1f9f:	0f 89 df 02 00 00    	jns    2284 <subdir+0x564>
  if(open("dd", O_RDWR) >= 0){
    1fa5:	83 ec 08             	sub    $0x8,%esp
    1fa8:	6a 02                	push   $0x2
    1faa:	68 08 46 00 00       	push   $0x4608
    1faf:	e8 4d 19 00 00       	call   3901 <open>
    1fb4:	83 c4 10             	add    $0x10,%esp
    1fb7:	85 c0                	test   %eax,%eax
    1fb9:	0f 89 b2 02 00 00    	jns    2271 <subdir+0x551>
  if(open("dd", O_WRONLY) >= 0){
    1fbf:	83 ec 08             	sub    $0x8,%esp
    1fc2:	6a 01                	push   $0x1
    1fc4:	68 08 46 00 00       	push   $0x4608
    1fc9:	e8 33 19 00 00       	call   3901 <open>
    1fce:	83 c4 10             	add    $0x10,%esp
    1fd1:	85 c0                	test   %eax,%eax
    1fd3:	0f 89 85 02 00 00    	jns    225e <subdir+0x53e>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    1fd9:	83 ec 08             	sub    $0x8,%esp
    1fdc:	68 ea 46 00 00       	push   $0x46ea
    1fe1:	68 56 46 00 00       	push   $0x4656
    1fe6:	e8 36 19 00 00       	call   3921 <link>
    1feb:	83 c4 10             	add    $0x10,%esp
    1fee:	85 c0                	test   %eax,%eax
    1ff0:	0f 84 55 02 00 00    	je     224b <subdir+0x52b>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    1ff6:	83 ec 08             	sub    $0x8,%esp
    1ff9:	68 ea 46 00 00       	push   $0x46ea
    1ffe:	68 7b 46 00 00       	push   $0x467b
    2003:	e8 19 19 00 00       	call   3921 <link>
    2008:	83 c4 10             	add    $0x10,%esp
    200b:	85 c0                	test   %eax,%eax
    200d:	0f 84 25 02 00 00    	je     2238 <subdir+0x518>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    2013:	83 ec 08             	sub    $0x8,%esp
    2016:	68 a2 45 00 00       	push   $0x45a2
    201b:	68 41 45 00 00       	push   $0x4541
    2020:	e8 fc 18 00 00       	call   3921 <link>
    2025:	83 c4 10             	add    $0x10,%esp
    2028:	85 c0                	test   %eax,%eax
    202a:	0f 84 a9 01 00 00    	je     21d9 <subdir+0x4b9>
  if(mkdir("dd/ff/ff") == 0){
    2030:	83 ec 0c             	sub    $0xc,%esp
    2033:	68 56 46 00 00       	push   $0x4656
    2038:	e8 ec 18 00 00       	call   3929 <mkdir>
    203d:	83 c4 10             	add    $0x10,%esp
    2040:	85 c0                	test   %eax,%eax
    2042:	0f 84 7e 01 00 00    	je     21c6 <subdir+0x4a6>
  if(mkdir("dd/xx/ff") == 0){
    2048:	83 ec 0c             	sub    $0xc,%esp
    204b:	68 7b 46 00 00       	push   $0x467b
    2050:	e8 d4 18 00 00       	call   3929 <mkdir>
    2055:	83 c4 10             	add    $0x10,%esp
    2058:	85 c0                	test   %eax,%eax
    205a:	0f 84 67 03 00 00    	je     23c7 <subdir+0x6a7>
  if(mkdir("dd/dd/ffff") == 0){
    2060:	83 ec 0c             	sub    $0xc,%esp
    2063:	68 a2 45 00 00       	push   $0x45a2
    2068:	e8 bc 18 00 00       	call   3929 <mkdir>
    206d:	83 c4 10             	add    $0x10,%esp
    2070:	85 c0                	test   %eax,%eax
    2072:	0f 84 3c 03 00 00    	je     23b4 <subdir+0x694>
  if(unlink("dd/xx/ff") == 0){
    2078:	83 ec 0c             	sub    $0xc,%esp
    207b:	68 7b 46 00 00       	push   $0x467b
    2080:	e8 8c 18 00 00       	call   3911 <unlink>
    2085:	83 c4 10             	add    $0x10,%esp
    2088:	85 c0                	test   %eax,%eax
    208a:	0f 84 11 03 00 00    	je     23a1 <subdir+0x681>
  if(unlink("dd/ff/ff") == 0){
    2090:	83 ec 0c             	sub    $0xc,%esp
    2093:	68 56 46 00 00       	push   $0x4656
    2098:	e8 74 18 00 00       	call   3911 <unlink>
    209d:	83 c4 10             	add    $0x10,%esp
    20a0:	85 c0                	test   %eax,%eax
    20a2:	0f 84 e6 02 00 00    	je     238e <subdir+0x66e>
  if(chdir("dd/ff") == 0){
    20a8:	83 ec 0c             	sub    $0xc,%esp
    20ab:	68 41 45 00 00       	push   $0x4541
    20b0:	e8 7c 18 00 00       	call   3931 <chdir>
    20b5:	83 c4 10             	add    $0x10,%esp
    20b8:	85 c0                	test   %eax,%eax
    20ba:	0f 84 bb 02 00 00    	je     237b <subdir+0x65b>
  if(chdir("dd/xx") == 0){
    20c0:	83 ec 0c             	sub    $0xc,%esp
    20c3:	68 ed 46 00 00       	push   $0x46ed
    20c8:	e8 64 18 00 00       	call   3931 <chdir>
    20cd:	83 c4 10             	add    $0x10,%esp
    20d0:	85 c0                	test   %eax,%eax
    20d2:	0f 84 90 02 00 00    	je     2368 <subdir+0x648>
  if(unlink("dd/dd/ffff") != 0){
    20d8:	83 ec 0c             	sub    $0xc,%esp
    20db:	68 a2 45 00 00       	push   $0x45a2
    20e0:	e8 2c 18 00 00       	call   3911 <unlink>
    20e5:	83 c4 10             	add    $0x10,%esp
    20e8:	85 c0                	test   %eax,%eax
    20ea:	0f 85 9d 00 00 00    	jne    218d <subdir+0x46d>
  if(unlink("dd/ff") != 0){
    20f0:	83 ec 0c             	sub    $0xc,%esp
    20f3:	68 41 45 00 00       	push   $0x4541
    20f8:	e8 14 18 00 00       	call   3911 <unlink>
    20fd:	83 c4 10             	add    $0x10,%esp
    2100:	85 c0                	test   %eax,%eax
    2102:	0f 85 4d 02 00 00    	jne    2355 <subdir+0x635>
  if(unlink("dd") == 0){
    2108:	83 ec 0c             	sub    $0xc,%esp
    210b:	68 08 46 00 00       	push   $0x4608
    2110:	e8 fc 17 00 00       	call   3911 <unlink>
    2115:	83 c4 10             	add    $0x10,%esp
    2118:	85 c0                	test   %eax,%eax
    211a:	0f 84 22 02 00 00    	je     2342 <subdir+0x622>
  if(unlink("dd/dd") < 0){
    2120:	83 ec 0c             	sub    $0xc,%esp
    2123:	68 1d 45 00 00       	push   $0x451d
    2128:	e8 e4 17 00 00       	call   3911 <unlink>
    212d:	83 c4 10             	add    $0x10,%esp
    2130:	85 c0                	test   %eax,%eax
    2132:	0f 88 f7 01 00 00    	js     232f <subdir+0x60f>
  if(unlink("dd") < 0){
    2138:	83 ec 0c             	sub    $0xc,%esp
    213b:	68 08 46 00 00       	push   $0x4608
    2140:	e8 cc 17 00 00       	call   3911 <unlink>
    2145:	83 c4 10             	add    $0x10,%esp
    2148:	85 c0                	test   %eax,%eax
    214a:	0f 88 cc 01 00 00    	js     231c <subdir+0x5fc>
  printf(1, "subdir ok\n");
    2150:	83 ec 08             	sub    $0x8,%esp
    2153:	68 ea 47 00 00       	push   $0x47ea
    2158:	6a 01                	push   $0x1
    215a:	e8 d1 18 00 00       	call   3a30 <printf>
}
    215f:	83 c4 10             	add    $0x10,%esp
    2162:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2165:	c9                   	leave  
    2166:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    2167:	50                   	push   %eax
    2168:	50                   	push   %eax
    2169:	68 87 45 00 00       	push   $0x4587
    216e:	6a 01                	push   $0x1
    2170:	e8 bb 18 00 00       	call   3a30 <printf>
    exit();
    2175:	e8 47 17 00 00       	call   38c1 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    217a:	50                   	push   %eax
    217b:	50                   	push   %eax
    217c:	68 e2 45 00 00       	push   $0x45e2
    2181:	6a 01                	push   $0x1
    2183:	e8 a8 18 00 00       	call   3a30 <printf>
    exit();
    2188:	e8 34 17 00 00       	call   38c1 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    218d:	52                   	push   %edx
    218e:	52                   	push   %edx
    218f:	68 ad 45 00 00       	push   $0x45ad
    2194:	6a 01                	push   $0x1
    2196:	e8 95 18 00 00       	call   3a30 <printf>
    exit();
    219b:	e8 21 17 00 00       	call   38c1 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    21a0:	50                   	push   %eax
    21a1:	50                   	push   %eax
    21a2:	68 5f 46 00 00       	push   $0x465f
    21a7:	6a 01                	push   $0x1
    21a9:	e8 82 18 00 00       	call   3a30 <printf>
    exit();
    21ae:	e8 0e 17 00 00       	call   38c1 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    21b3:	52                   	push   %edx
    21b4:	52                   	push   %edx
    21b5:	68 44 50 00 00       	push   $0x5044
    21ba:	6a 01                	push   $0x1
    21bc:	e8 6f 18 00 00       	call   3a30 <printf>
    exit();
    21c1:	e8 fb 16 00 00       	call   38c1 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    21c6:	52                   	push   %edx
    21c7:	52                   	push   %edx
    21c8:	68 f3 46 00 00       	push   $0x46f3
    21cd:	6a 01                	push   $0x1
    21cf:	e8 5c 18 00 00       	call   3a30 <printf>
    exit();
    21d4:	e8 e8 16 00 00       	call   38c1 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    21d9:	51                   	push   %ecx
    21da:	51                   	push   %ecx
    21db:	68 b4 50 00 00       	push   $0x50b4
    21e0:	6a 01                	push   $0x1
    21e2:	e8 49 18 00 00       	call   3a30 <printf>
    exit();
    21e7:	e8 d5 16 00 00       	call   38c1 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    21ec:	50                   	push   %eax
    21ed:	50                   	push   %eax
    21ee:	68 6e 45 00 00       	push   $0x456e
    21f3:	6a 01                	push   $0x1
    21f5:	e8 36 18 00 00       	call   3a30 <printf>
    exit();
    21fa:	e8 c2 16 00 00       	call   38c1 <exit>
    printf(1, "create dd/dd/ff failed\n");
    21ff:	51                   	push   %ecx
    2200:	51                   	push   %ecx
    2201:	68 47 45 00 00       	push   $0x4547
    2206:	6a 01                	push   $0x1
    2208:	e8 23 18 00 00       	call   3a30 <printf>
    exit();
    220d:	e8 af 16 00 00       	call   38c1 <exit>
    printf(1, "chdir ./.. failed\n");
    2212:	50                   	push   %eax
    2213:	50                   	push   %eax
    2214:	68 10 46 00 00       	push   $0x4610
    2219:	6a 01                	push   $0x1
    221b:	e8 10 18 00 00       	call   3a30 <printf>
    exit();
    2220:	e8 9c 16 00 00       	call   38c1 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2225:	51                   	push   %ecx
    2226:	51                   	push   %ecx
    2227:	68 fc 4f 00 00       	push   $0x4ffc
    222c:	6a 01                	push   $0x1
    222e:	e8 fd 17 00 00       	call   3a30 <printf>
    exit();
    2233:	e8 89 16 00 00       	call   38c1 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2238:	53                   	push   %ebx
    2239:	53                   	push   %ebx
    223a:	68 90 50 00 00       	push   $0x5090
    223f:	6a 01                	push   $0x1
    2241:	e8 ea 17 00 00       	call   3a30 <printf>
    exit();
    2246:	e8 76 16 00 00       	call   38c1 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    224b:	50                   	push   %eax
    224c:	50                   	push   %eax
    224d:	68 6c 50 00 00       	push   $0x506c
    2252:	6a 01                	push   $0x1
    2254:	e8 d7 17 00 00       	call   3a30 <printf>
    exit();
    2259:	e8 63 16 00 00       	call   38c1 <exit>
    printf(1, "open dd wronly succeeded!\n");
    225e:	50                   	push   %eax
    225f:	50                   	push   %eax
    2260:	68 cf 46 00 00       	push   $0x46cf
    2265:	6a 01                	push   $0x1
    2267:	e8 c4 17 00 00       	call   3a30 <printf>
    exit();
    226c:	e8 50 16 00 00       	call   38c1 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    2271:	50                   	push   %eax
    2272:	50                   	push   %eax
    2273:	68 b6 46 00 00       	push   $0x46b6
    2278:	6a 01                	push   $0x1
    227a:	e8 b1 17 00 00       	call   3a30 <printf>
    exit();
    227f:	e8 3d 16 00 00       	call   38c1 <exit>
    printf(1, "create dd succeeded!\n");
    2284:	50                   	push   %eax
    2285:	50                   	push   %eax
    2286:	68 a0 46 00 00       	push   $0x46a0
    228b:	6a 01                	push   $0x1
    228d:	e8 9e 17 00 00       	call   3a30 <printf>
    exit();
    2292:	e8 2a 16 00 00       	call   38c1 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    2297:	50                   	push   %eax
    2298:	50                   	push   %eax
    2299:	68 84 46 00 00       	push   $0x4684
    229e:	6a 01                	push   $0x1
    22a0:	e8 8b 17 00 00       	call   3a30 <printf>
    exit();
    22a5:	e8 17 16 00 00       	call   38c1 <exit>
    printf(1, "chdir dd failed\n");
    22aa:	50                   	push   %eax
    22ab:	50                   	push   %eax
    22ac:	68 c5 45 00 00       	push   $0x45c5
    22b1:	6a 01                	push   $0x1
    22b3:	e8 78 17 00 00       	call   3a30 <printf>
    exit();
    22b8:	e8 04 16 00 00       	call   38c1 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    22bd:	50                   	push   %eax
    22be:	50                   	push   %eax
    22bf:	68 20 50 00 00       	push   $0x5020
    22c4:	6a 01                	push   $0x1
    22c6:	e8 65 17 00 00       	call   3a30 <printf>
    exit();
    22cb:	e8 f1 15 00 00       	call   38c1 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    22d0:	53                   	push   %ebx
    22d1:	53                   	push   %ebx
    22d2:	68 23 45 00 00       	push   $0x4523
    22d7:	6a 01                	push   $0x1
    22d9:	e8 52 17 00 00       	call   3a30 <printf>
    exit();
    22de:	e8 de 15 00 00       	call   38c1 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    22e3:	50                   	push   %eax
    22e4:	50                   	push   %eax
    22e5:	68 d4 4f 00 00       	push   $0x4fd4
    22ea:	6a 01                	push   $0x1
    22ec:	e8 3f 17 00 00       	call   3a30 <printf>
    exit();
    22f1:	e8 cb 15 00 00       	call   38c1 <exit>
    printf(1, "create dd/ff failed\n");
    22f6:	50                   	push   %eax
    22f7:	50                   	push   %eax
    22f8:	68 07 45 00 00       	push   $0x4507
    22fd:	6a 01                	push   $0x1
    22ff:	e8 2c 17 00 00       	call   3a30 <printf>
    exit();
    2304:	e8 b8 15 00 00       	call   38c1 <exit>
    printf(1, "subdir mkdir dd failed\n");
    2309:	50                   	push   %eax
    230a:	50                   	push   %eax
    230b:	68 ef 44 00 00       	push   $0x44ef
    2310:	6a 01                	push   $0x1
    2312:	e8 19 17 00 00       	call   3a30 <printf>
    exit();
    2317:	e8 a5 15 00 00       	call   38c1 <exit>
    printf(1, "unlink dd failed\n");
    231c:	50                   	push   %eax
    231d:	50                   	push   %eax
    231e:	68 d8 47 00 00       	push   $0x47d8
    2323:	6a 01                	push   $0x1
    2325:	e8 06 17 00 00       	call   3a30 <printf>
    exit();
    232a:	e8 92 15 00 00       	call   38c1 <exit>
    printf(1, "unlink dd/dd failed\n");
    232f:	52                   	push   %edx
    2330:	52                   	push   %edx
    2331:	68 c3 47 00 00       	push   $0x47c3
    2336:	6a 01                	push   $0x1
    2338:	e8 f3 16 00 00       	call   3a30 <printf>
    exit();
    233d:	e8 7f 15 00 00       	call   38c1 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    2342:	51                   	push   %ecx
    2343:	51                   	push   %ecx
    2344:	68 d8 50 00 00       	push   $0x50d8
    2349:	6a 01                	push   $0x1
    234b:	e8 e0 16 00 00       	call   3a30 <printf>
    exit();
    2350:	e8 6c 15 00 00       	call   38c1 <exit>
    printf(1, "unlink dd/ff failed\n");
    2355:	53                   	push   %ebx
    2356:	53                   	push   %ebx
    2357:	68 ae 47 00 00       	push   $0x47ae
    235c:	6a 01                	push   $0x1
    235e:	e8 cd 16 00 00       	call   3a30 <printf>
    exit();
    2363:	e8 59 15 00 00       	call   38c1 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    2368:	50                   	push   %eax
    2369:	50                   	push   %eax
    236a:	68 96 47 00 00       	push   $0x4796
    236f:	6a 01                	push   $0x1
    2371:	e8 ba 16 00 00       	call   3a30 <printf>
    exit();
    2376:	e8 46 15 00 00       	call   38c1 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    237b:	50                   	push   %eax
    237c:	50                   	push   %eax
    237d:	68 7e 47 00 00       	push   $0x477e
    2382:	6a 01                	push   $0x1
    2384:	e8 a7 16 00 00       	call   3a30 <printf>
    exit();
    2389:	e8 33 15 00 00       	call   38c1 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    238e:	50                   	push   %eax
    238f:	50                   	push   %eax
    2390:	68 62 47 00 00       	push   $0x4762
    2395:	6a 01                	push   $0x1
    2397:	e8 94 16 00 00       	call   3a30 <printf>
    exit();
    239c:	e8 20 15 00 00       	call   38c1 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    23a1:	50                   	push   %eax
    23a2:	50                   	push   %eax
    23a3:	68 46 47 00 00       	push   $0x4746
    23a8:	6a 01                	push   $0x1
    23aa:	e8 81 16 00 00       	call   3a30 <printf>
    exit();
    23af:	e8 0d 15 00 00       	call   38c1 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    23b4:	50                   	push   %eax
    23b5:	50                   	push   %eax
    23b6:	68 29 47 00 00       	push   $0x4729
    23bb:	6a 01                	push   $0x1
    23bd:	e8 6e 16 00 00       	call   3a30 <printf>
    exit();
    23c2:	e8 fa 14 00 00       	call   38c1 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    23c7:	50                   	push   %eax
    23c8:	50                   	push   %eax
    23c9:	68 0e 47 00 00       	push   $0x470e
    23ce:	6a 01                	push   $0x1
    23d0:	e8 5b 16 00 00       	call   3a30 <printf>
    exit();
    23d5:	e8 e7 14 00 00       	call   38c1 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    23da:	50                   	push   %eax
    23db:	50                   	push   %eax
    23dc:	68 3b 46 00 00       	push   $0x463b
    23e1:	6a 01                	push   $0x1
    23e3:	e8 48 16 00 00       	call   3a30 <printf>
    exit();
    23e8:	e8 d4 14 00 00       	call   38c1 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    23ed:	50                   	push   %eax
    23ee:	50                   	push   %eax
    23ef:	68 23 46 00 00       	push   $0x4623
    23f4:	6a 01                	push   $0x1
    23f6:	e8 35 16 00 00       	call   3a30 <printf>
    exit();
    23fb:	e8 c1 14 00 00       	call   38c1 <exit>

00002400 <bigwrite>:
{
    2400:	55                   	push   %ebp
    2401:	89 e5                	mov    %esp,%ebp
    2403:	56                   	push   %esi
    2404:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    2405:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    240a:	83 ec 08             	sub    $0x8,%esp
    240d:	68 f5 47 00 00       	push   $0x47f5
    2412:	6a 01                	push   $0x1
    2414:	e8 17 16 00 00       	call   3a30 <printf>
  unlink("bigwrite");
    2419:	c7 04 24 04 48 00 00 	movl   $0x4804,(%esp)
    2420:	e8 ec 14 00 00       	call   3911 <unlink>
    2425:	83 c4 10             	add    $0x10,%esp
    2428:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    242f:	90                   	nop
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2430:	83 ec 08             	sub    $0x8,%esp
    2433:	68 02 02 00 00       	push   $0x202
    2438:	68 04 48 00 00       	push   $0x4804
    243d:	e8 bf 14 00 00       	call   3901 <open>
    if(fd < 0){
    2442:	83 c4 10             	add    $0x10,%esp
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2445:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2447:	85 c0                	test   %eax,%eax
    2449:	78 7e                	js     24c9 <bigwrite+0xc9>
      int cc = write(fd, buf, sz);
    244b:	83 ec 04             	sub    $0x4,%esp
    244e:	53                   	push   %ebx
    244f:	68 60 86 00 00       	push   $0x8660
    2454:	50                   	push   %eax
    2455:	e8 87 14 00 00       	call   38e1 <write>
      if(cc != sz){
    245a:	83 c4 10             	add    $0x10,%esp
    245d:	39 d8                	cmp    %ebx,%eax
    245f:	75 55                	jne    24b6 <bigwrite+0xb6>
      int cc = write(fd, buf, sz);
    2461:	83 ec 04             	sub    $0x4,%esp
    2464:	53                   	push   %ebx
    2465:	68 60 86 00 00       	push   $0x8660
    246a:	56                   	push   %esi
    246b:	e8 71 14 00 00       	call   38e1 <write>
      if(cc != sz){
    2470:	83 c4 10             	add    $0x10,%esp
    2473:	39 d8                	cmp    %ebx,%eax
    2475:	75 3f                	jne    24b6 <bigwrite+0xb6>
    close(fd);
    2477:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    247a:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2480:	56                   	push   %esi
    2481:	e8 63 14 00 00       	call   38e9 <close>
    unlink("bigwrite");
    2486:	c7 04 24 04 48 00 00 	movl   $0x4804,(%esp)
    248d:	e8 7f 14 00 00       	call   3911 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2492:	83 c4 10             	add    $0x10,%esp
    2495:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    249b:	75 93                	jne    2430 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    249d:	83 ec 08             	sub    $0x8,%esp
    24a0:	68 37 48 00 00       	push   $0x4837
    24a5:	6a 01                	push   $0x1
    24a7:	e8 84 15 00 00       	call   3a30 <printf>
}
    24ac:	83 c4 10             	add    $0x10,%esp
    24af:	8d 65 f8             	lea    -0x8(%ebp),%esp
    24b2:	5b                   	pop    %ebx
    24b3:	5e                   	pop    %esi
    24b4:	5d                   	pop    %ebp
    24b5:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    24b6:	50                   	push   %eax
    24b7:	53                   	push   %ebx
    24b8:	68 25 48 00 00       	push   $0x4825
    24bd:	6a 01                	push   $0x1
    24bf:	e8 6c 15 00 00       	call   3a30 <printf>
        exit();
    24c4:	e8 f8 13 00 00       	call   38c1 <exit>
      printf(1, "cannot create bigwrite\n");
    24c9:	83 ec 08             	sub    $0x8,%esp
    24cc:	68 0d 48 00 00       	push   $0x480d
    24d1:	6a 01                	push   $0x1
    24d3:	e8 58 15 00 00       	call   3a30 <printf>
      exit();
    24d8:	e8 e4 13 00 00       	call   38c1 <exit>
    24dd:	8d 76 00             	lea    0x0(%esi),%esi

000024e0 <bigfile>:
{
    24e0:	55                   	push   %ebp
    24e1:	89 e5                	mov    %esp,%ebp
    24e3:	57                   	push   %edi
    24e4:	56                   	push   %esi
    24e5:	53                   	push   %ebx
    24e6:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    24e9:	68 44 48 00 00       	push   $0x4844
    24ee:	6a 01                	push   $0x1
    24f0:	e8 3b 15 00 00       	call   3a30 <printf>
  unlink("bigfile");
    24f5:	c7 04 24 60 48 00 00 	movl   $0x4860,(%esp)
    24fc:	e8 10 14 00 00       	call   3911 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2501:	58                   	pop    %eax
    2502:	5a                   	pop    %edx
    2503:	68 02 02 00 00       	push   $0x202
    2508:	68 60 48 00 00       	push   $0x4860
    250d:	e8 ef 13 00 00       	call   3901 <open>
  if(fd < 0){
    2512:	83 c4 10             	add    $0x10,%esp
    2515:	85 c0                	test   %eax,%eax
    2517:	0f 88 5e 01 00 00    	js     267b <bigfile+0x19b>
    251d:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    251f:	31 db                	xor    %ebx,%ebx
    2521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2528:	83 ec 04             	sub    $0x4,%esp
    252b:	68 58 02 00 00       	push   $0x258
    2530:	53                   	push   %ebx
    2531:	68 60 86 00 00       	push   $0x8660
    2536:	e8 e5 11 00 00       	call   3720 <memset>
    if(write(fd, buf, 600) != 600){
    253b:	83 c4 0c             	add    $0xc,%esp
    253e:	68 58 02 00 00       	push   $0x258
    2543:	68 60 86 00 00       	push   $0x8660
    2548:	56                   	push   %esi
    2549:	e8 93 13 00 00       	call   38e1 <write>
    254e:	83 c4 10             	add    $0x10,%esp
    2551:	3d 58 02 00 00       	cmp    $0x258,%eax
    2556:	0f 85 f8 00 00 00    	jne    2654 <bigfile+0x174>
  for(i = 0; i < 20; i++){
    255c:	83 c3 01             	add    $0x1,%ebx
    255f:	83 fb 14             	cmp    $0x14,%ebx
    2562:	75 c4                	jne    2528 <bigfile+0x48>
  close(fd);
    2564:	83 ec 0c             	sub    $0xc,%esp
    2567:	56                   	push   %esi
    2568:	e8 7c 13 00 00       	call   38e9 <close>
  fd = open("bigfile", 0);
    256d:	5e                   	pop    %esi
    256e:	5f                   	pop    %edi
    256f:	6a 00                	push   $0x0
    2571:	68 60 48 00 00       	push   $0x4860
    2576:	e8 86 13 00 00       	call   3901 <open>
  if(fd < 0){
    257b:	83 c4 10             	add    $0x10,%esp
  fd = open("bigfile", 0);
    257e:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2580:	85 c0                	test   %eax,%eax
    2582:	0f 88 e0 00 00 00    	js     2668 <bigfile+0x188>
  total = 0;
    2588:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    258a:	31 ff                	xor    %edi,%edi
    258c:	eb 30                	jmp    25be <bigfile+0xde>
    258e:	66 90                	xchg   %ax,%ax
    if(cc != 300){
    2590:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2595:	0f 85 91 00 00 00    	jne    262c <bigfile+0x14c>
    if(buf[0] != i/2 || buf[299] != i/2){
    259b:	89 fa                	mov    %edi,%edx
    259d:	0f be 05 60 86 00 00 	movsbl 0x8660,%eax
    25a4:	d1 fa                	sar    %edx
    25a6:	39 d0                	cmp    %edx,%eax
    25a8:	75 6e                	jne    2618 <bigfile+0x138>
    25aa:	0f be 15 8b 87 00 00 	movsbl 0x878b,%edx
    25b1:	39 d0                	cmp    %edx,%eax
    25b3:	75 63                	jne    2618 <bigfile+0x138>
    total += cc;
    25b5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    25bb:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    25be:	83 ec 04             	sub    $0x4,%esp
    25c1:	68 2c 01 00 00       	push   $0x12c
    25c6:	68 60 86 00 00       	push   $0x8660
    25cb:	56                   	push   %esi
    25cc:	e8 08 13 00 00       	call   38d9 <read>
    if(cc < 0){
    25d1:	83 c4 10             	add    $0x10,%esp
    25d4:	85 c0                	test   %eax,%eax
    25d6:	78 68                	js     2640 <bigfile+0x160>
    if(cc == 0)
    25d8:	75 b6                	jne    2590 <bigfile+0xb0>
  close(fd);
    25da:	83 ec 0c             	sub    $0xc,%esp
    25dd:	56                   	push   %esi
    25de:	e8 06 13 00 00       	call   38e9 <close>
  if(total != 20*600){
    25e3:	83 c4 10             	add    $0x10,%esp
    25e6:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    25ec:	0f 85 9c 00 00 00    	jne    268e <bigfile+0x1ae>
  unlink("bigfile");
    25f2:	83 ec 0c             	sub    $0xc,%esp
    25f5:	68 60 48 00 00       	push   $0x4860
    25fa:	e8 12 13 00 00       	call   3911 <unlink>
  printf(1, "bigfile test ok\n");
    25ff:	58                   	pop    %eax
    2600:	5a                   	pop    %edx
    2601:	68 ef 48 00 00       	push   $0x48ef
    2606:	6a 01                	push   $0x1
    2608:	e8 23 14 00 00       	call   3a30 <printf>
}
    260d:	83 c4 10             	add    $0x10,%esp
    2610:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2613:	5b                   	pop    %ebx
    2614:	5e                   	pop    %esi
    2615:	5f                   	pop    %edi
    2616:	5d                   	pop    %ebp
    2617:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    2618:	83 ec 08             	sub    $0x8,%esp
    261b:	68 bc 48 00 00       	push   $0x48bc
    2620:	6a 01                	push   $0x1
    2622:	e8 09 14 00 00       	call   3a30 <printf>
      exit();
    2627:	e8 95 12 00 00       	call   38c1 <exit>
      printf(1, "short read bigfile\n");
    262c:	83 ec 08             	sub    $0x8,%esp
    262f:	68 a8 48 00 00       	push   $0x48a8
    2634:	6a 01                	push   $0x1
    2636:	e8 f5 13 00 00       	call   3a30 <printf>
      exit();
    263b:	e8 81 12 00 00       	call   38c1 <exit>
      printf(1, "read bigfile failed\n");
    2640:	83 ec 08             	sub    $0x8,%esp
    2643:	68 93 48 00 00       	push   $0x4893
    2648:	6a 01                	push   $0x1
    264a:	e8 e1 13 00 00       	call   3a30 <printf>
      exit();
    264f:	e8 6d 12 00 00       	call   38c1 <exit>
      printf(1, "write bigfile failed\n");
    2654:	83 ec 08             	sub    $0x8,%esp
    2657:	68 68 48 00 00       	push   $0x4868
    265c:	6a 01                	push   $0x1
    265e:	e8 cd 13 00 00       	call   3a30 <printf>
      exit();
    2663:	e8 59 12 00 00       	call   38c1 <exit>
    printf(1, "cannot open bigfile\n");
    2668:	53                   	push   %ebx
    2669:	53                   	push   %ebx
    266a:	68 7e 48 00 00       	push   $0x487e
    266f:	6a 01                	push   $0x1
    2671:	e8 ba 13 00 00       	call   3a30 <printf>
    exit();
    2676:	e8 46 12 00 00       	call   38c1 <exit>
    printf(1, "cannot create bigfile");
    267b:	50                   	push   %eax
    267c:	50                   	push   %eax
    267d:	68 52 48 00 00       	push   $0x4852
    2682:	6a 01                	push   $0x1
    2684:	e8 a7 13 00 00       	call   3a30 <printf>
    exit();
    2689:	e8 33 12 00 00       	call   38c1 <exit>
    printf(1, "read bigfile wrong total\n");
    268e:	51                   	push   %ecx
    268f:	51                   	push   %ecx
    2690:	68 d5 48 00 00       	push   $0x48d5
    2695:	6a 01                	push   $0x1
    2697:	e8 94 13 00 00       	call   3a30 <printf>
    exit();
    269c:	e8 20 12 00 00       	call   38c1 <exit>
    26a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    26a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    26af:	90                   	nop

000026b0 <fourteen>:
{
    26b0:	55                   	push   %ebp
    26b1:	89 e5                	mov    %esp,%ebp
    26b3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    26b6:	68 00 49 00 00       	push   $0x4900
    26bb:	6a 01                	push   $0x1
    26bd:	e8 6e 13 00 00       	call   3a30 <printf>
  if(mkdir("12345678901234") != 0){
    26c2:	c7 04 24 3b 49 00 00 	movl   $0x493b,(%esp)
    26c9:	e8 5b 12 00 00       	call   3929 <mkdir>
    26ce:	83 c4 10             	add    $0x10,%esp
    26d1:	85 c0                	test   %eax,%eax
    26d3:	0f 85 97 00 00 00    	jne    2770 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    26d9:	83 ec 0c             	sub    $0xc,%esp
    26dc:	68 f8 50 00 00       	push   $0x50f8
    26e1:	e8 43 12 00 00       	call   3929 <mkdir>
    26e6:	83 c4 10             	add    $0x10,%esp
    26e9:	85 c0                	test   %eax,%eax
    26eb:	0f 85 de 00 00 00    	jne    27cf <fourteen+0x11f>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    26f1:	83 ec 08             	sub    $0x8,%esp
    26f4:	68 00 02 00 00       	push   $0x200
    26f9:	68 48 51 00 00       	push   $0x5148
    26fe:	e8 fe 11 00 00       	call   3901 <open>
  if(fd < 0){
    2703:	83 c4 10             	add    $0x10,%esp
    2706:	85 c0                	test   %eax,%eax
    2708:	0f 88 ae 00 00 00    	js     27bc <fourteen+0x10c>
  close(fd);
    270e:	83 ec 0c             	sub    $0xc,%esp
    2711:	50                   	push   %eax
    2712:	e8 d2 11 00 00       	call   38e9 <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2717:	58                   	pop    %eax
    2718:	5a                   	pop    %edx
    2719:	6a 00                	push   $0x0
    271b:	68 b8 51 00 00       	push   $0x51b8
    2720:	e8 dc 11 00 00       	call   3901 <open>
  if(fd < 0){
    2725:	83 c4 10             	add    $0x10,%esp
    2728:	85 c0                	test   %eax,%eax
    272a:	78 7d                	js     27a9 <fourteen+0xf9>
  close(fd);
    272c:	83 ec 0c             	sub    $0xc,%esp
    272f:	50                   	push   %eax
    2730:	e8 b4 11 00 00       	call   38e9 <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2735:	c7 04 24 2c 49 00 00 	movl   $0x492c,(%esp)
    273c:	e8 e8 11 00 00       	call   3929 <mkdir>
    2741:	83 c4 10             	add    $0x10,%esp
    2744:	85 c0                	test   %eax,%eax
    2746:	74 4e                	je     2796 <fourteen+0xe6>
  if(mkdir("123456789012345/12345678901234") == 0){
    2748:	83 ec 0c             	sub    $0xc,%esp
    274b:	68 54 52 00 00       	push   $0x5254
    2750:	e8 d4 11 00 00       	call   3929 <mkdir>
    2755:	83 c4 10             	add    $0x10,%esp
    2758:	85 c0                	test   %eax,%eax
    275a:	74 27                	je     2783 <fourteen+0xd3>
  printf(1, "fourteen ok\n");
    275c:	83 ec 08             	sub    $0x8,%esp
    275f:	68 4a 49 00 00       	push   $0x494a
    2764:	6a 01                	push   $0x1
    2766:	e8 c5 12 00 00       	call   3a30 <printf>
}
    276b:	83 c4 10             	add    $0x10,%esp
    276e:	c9                   	leave  
    276f:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    2770:	50                   	push   %eax
    2771:	50                   	push   %eax
    2772:	68 0f 49 00 00       	push   $0x490f
    2777:	6a 01                	push   $0x1
    2779:	e8 b2 12 00 00       	call   3a30 <printf>
    exit();
    277e:	e8 3e 11 00 00       	call   38c1 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2783:	50                   	push   %eax
    2784:	50                   	push   %eax
    2785:	68 74 52 00 00       	push   $0x5274
    278a:	6a 01                	push   $0x1
    278c:	e8 9f 12 00 00       	call   3a30 <printf>
    exit();
    2791:	e8 2b 11 00 00       	call   38c1 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2796:	52                   	push   %edx
    2797:	52                   	push   %edx
    2798:	68 24 52 00 00       	push   $0x5224
    279d:	6a 01                	push   $0x1
    279f:	e8 8c 12 00 00       	call   3a30 <printf>
    exit();
    27a4:	e8 18 11 00 00       	call   38c1 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    27a9:	51                   	push   %ecx
    27aa:	51                   	push   %ecx
    27ab:	68 e8 51 00 00       	push   $0x51e8
    27b0:	6a 01                	push   $0x1
    27b2:	e8 79 12 00 00       	call   3a30 <printf>
    exit();
    27b7:	e8 05 11 00 00       	call   38c1 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    27bc:	51                   	push   %ecx
    27bd:	51                   	push   %ecx
    27be:	68 78 51 00 00       	push   $0x5178
    27c3:	6a 01                	push   $0x1
    27c5:	e8 66 12 00 00       	call   3a30 <printf>
    exit();
    27ca:	e8 f2 10 00 00       	call   38c1 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    27cf:	50                   	push   %eax
    27d0:	50                   	push   %eax
    27d1:	68 18 51 00 00       	push   $0x5118
    27d6:	6a 01                	push   $0x1
    27d8:	e8 53 12 00 00       	call   3a30 <printf>
    exit();
    27dd:	e8 df 10 00 00       	call   38c1 <exit>
    27e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    27e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000027f0 <rmdot>:
{
    27f0:	55                   	push   %ebp
    27f1:	89 e5                	mov    %esp,%ebp
    27f3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    27f6:	68 57 49 00 00       	push   $0x4957
    27fb:	6a 01                	push   $0x1
    27fd:	e8 2e 12 00 00       	call   3a30 <printf>
  if(mkdir("dots") != 0){
    2802:	c7 04 24 63 49 00 00 	movl   $0x4963,(%esp)
    2809:	e8 1b 11 00 00       	call   3929 <mkdir>
    280e:	83 c4 10             	add    $0x10,%esp
    2811:	85 c0                	test   %eax,%eax
    2813:	0f 85 b0 00 00 00    	jne    28c9 <rmdot+0xd9>
  if(chdir("dots") != 0){
    2819:	83 ec 0c             	sub    $0xc,%esp
    281c:	68 63 49 00 00       	push   $0x4963
    2821:	e8 0b 11 00 00       	call   3931 <chdir>
    2826:	83 c4 10             	add    $0x10,%esp
    2829:	85 c0                	test   %eax,%eax
    282b:	0f 85 1d 01 00 00    	jne    294e <rmdot+0x15e>
  if(unlink(".") == 0){
    2831:	83 ec 0c             	sub    $0xc,%esp
    2834:	68 0e 46 00 00       	push   $0x460e
    2839:	e8 d3 10 00 00       	call   3911 <unlink>
    283e:	83 c4 10             	add    $0x10,%esp
    2841:	85 c0                	test   %eax,%eax
    2843:	0f 84 f2 00 00 00    	je     293b <rmdot+0x14b>
  if(unlink("..") == 0){
    2849:	83 ec 0c             	sub    $0xc,%esp
    284c:	68 0d 46 00 00       	push   $0x460d
    2851:	e8 bb 10 00 00       	call   3911 <unlink>
    2856:	83 c4 10             	add    $0x10,%esp
    2859:	85 c0                	test   %eax,%eax
    285b:	0f 84 c7 00 00 00    	je     2928 <rmdot+0x138>
  if(chdir("/") != 0){
    2861:	83 ec 0c             	sub    $0xc,%esp
    2864:	68 e1 3d 00 00       	push   $0x3de1
    2869:	e8 c3 10 00 00       	call   3931 <chdir>
    286e:	83 c4 10             	add    $0x10,%esp
    2871:	85 c0                	test   %eax,%eax
    2873:	0f 85 9c 00 00 00    	jne    2915 <rmdot+0x125>
  if(unlink("dots/.") == 0){
    2879:	83 ec 0c             	sub    $0xc,%esp
    287c:	68 ab 49 00 00       	push   $0x49ab
    2881:	e8 8b 10 00 00       	call   3911 <unlink>
    2886:	83 c4 10             	add    $0x10,%esp
    2889:	85 c0                	test   %eax,%eax
    288b:	74 75                	je     2902 <rmdot+0x112>
  if(unlink("dots/..") == 0){
    288d:	83 ec 0c             	sub    $0xc,%esp
    2890:	68 c9 49 00 00       	push   $0x49c9
    2895:	e8 77 10 00 00       	call   3911 <unlink>
    289a:	83 c4 10             	add    $0x10,%esp
    289d:	85 c0                	test   %eax,%eax
    289f:	74 4e                	je     28ef <rmdot+0xff>
  if(unlink("dots") != 0){
    28a1:	83 ec 0c             	sub    $0xc,%esp
    28a4:	68 63 49 00 00       	push   $0x4963
    28a9:	e8 63 10 00 00       	call   3911 <unlink>
    28ae:	83 c4 10             	add    $0x10,%esp
    28b1:	85 c0                	test   %eax,%eax
    28b3:	75 27                	jne    28dc <rmdot+0xec>
  printf(1, "rmdot ok\n");
    28b5:	83 ec 08             	sub    $0x8,%esp
    28b8:	68 fe 49 00 00       	push   $0x49fe
    28bd:	6a 01                	push   $0x1
    28bf:	e8 6c 11 00 00       	call   3a30 <printf>
}
    28c4:	83 c4 10             	add    $0x10,%esp
    28c7:	c9                   	leave  
    28c8:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    28c9:	50                   	push   %eax
    28ca:	50                   	push   %eax
    28cb:	68 68 49 00 00       	push   $0x4968
    28d0:	6a 01                	push   $0x1
    28d2:	e8 59 11 00 00       	call   3a30 <printf>
    exit();
    28d7:	e8 e5 0f 00 00       	call   38c1 <exit>
    printf(1, "unlink dots failed!\n");
    28dc:	50                   	push   %eax
    28dd:	50                   	push   %eax
    28de:	68 e9 49 00 00       	push   $0x49e9
    28e3:	6a 01                	push   $0x1
    28e5:	e8 46 11 00 00       	call   3a30 <printf>
    exit();
    28ea:	e8 d2 0f 00 00       	call   38c1 <exit>
    printf(1, "unlink dots/.. worked!\n");
    28ef:	52                   	push   %edx
    28f0:	52                   	push   %edx
    28f1:	68 d1 49 00 00       	push   $0x49d1
    28f6:	6a 01                	push   $0x1
    28f8:	e8 33 11 00 00       	call   3a30 <printf>
    exit();
    28fd:	e8 bf 0f 00 00       	call   38c1 <exit>
    printf(1, "unlink dots/. worked!\n");
    2902:	51                   	push   %ecx
    2903:	51                   	push   %ecx
    2904:	68 b2 49 00 00       	push   $0x49b2
    2909:	6a 01                	push   $0x1
    290b:	e8 20 11 00 00       	call   3a30 <printf>
    exit();
    2910:	e8 ac 0f 00 00       	call   38c1 <exit>
    printf(1, "chdir / failed\n");
    2915:	50                   	push   %eax
    2916:	50                   	push   %eax
    2917:	68 e3 3d 00 00       	push   $0x3de3
    291c:	6a 01                	push   $0x1
    291e:	e8 0d 11 00 00       	call   3a30 <printf>
    exit();
    2923:	e8 99 0f 00 00       	call   38c1 <exit>
    printf(1, "rm .. worked!\n");
    2928:	50                   	push   %eax
    2929:	50                   	push   %eax
    292a:	68 9c 49 00 00       	push   $0x499c
    292f:	6a 01                	push   $0x1
    2931:	e8 fa 10 00 00       	call   3a30 <printf>
    exit();
    2936:	e8 86 0f 00 00       	call   38c1 <exit>
    printf(1, "rm . worked!\n");
    293b:	50                   	push   %eax
    293c:	50                   	push   %eax
    293d:	68 8e 49 00 00       	push   $0x498e
    2942:	6a 01                	push   $0x1
    2944:	e8 e7 10 00 00       	call   3a30 <printf>
    exit();
    2949:	e8 73 0f 00 00       	call   38c1 <exit>
    printf(1, "chdir dots failed\n");
    294e:	50                   	push   %eax
    294f:	50                   	push   %eax
    2950:	68 7b 49 00 00       	push   $0x497b
    2955:	6a 01                	push   $0x1
    2957:	e8 d4 10 00 00       	call   3a30 <printf>
    exit();
    295c:	e8 60 0f 00 00       	call   38c1 <exit>
    2961:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2968:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    296f:	90                   	nop

00002970 <dirfile>:
{
    2970:	55                   	push   %ebp
    2971:	89 e5                	mov    %esp,%ebp
    2973:	53                   	push   %ebx
    2974:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    2977:	68 08 4a 00 00       	push   $0x4a08
    297c:	6a 01                	push   $0x1
    297e:	e8 ad 10 00 00       	call   3a30 <printf>
  fd = open("dirfile", O_CREATE);
    2983:	59                   	pop    %ecx
    2984:	5b                   	pop    %ebx
    2985:	68 00 02 00 00       	push   $0x200
    298a:	68 15 4a 00 00       	push   $0x4a15
    298f:	e8 6d 0f 00 00       	call   3901 <open>
  if(fd < 0){
    2994:	83 c4 10             	add    $0x10,%esp
    2997:	85 c0                	test   %eax,%eax
    2999:	0f 88 43 01 00 00    	js     2ae2 <dirfile+0x172>
  close(fd);
    299f:	83 ec 0c             	sub    $0xc,%esp
    29a2:	50                   	push   %eax
    29a3:	e8 41 0f 00 00       	call   38e9 <close>
  if(chdir("dirfile") == 0){
    29a8:	c7 04 24 15 4a 00 00 	movl   $0x4a15,(%esp)
    29af:	e8 7d 0f 00 00       	call   3931 <chdir>
    29b4:	83 c4 10             	add    $0x10,%esp
    29b7:	85 c0                	test   %eax,%eax
    29b9:	0f 84 10 01 00 00    	je     2acf <dirfile+0x15f>
  fd = open("dirfile/xx", 0);
    29bf:	83 ec 08             	sub    $0x8,%esp
    29c2:	6a 00                	push   $0x0
    29c4:	68 4e 4a 00 00       	push   $0x4a4e
    29c9:	e8 33 0f 00 00       	call   3901 <open>
  if(fd >= 0){
    29ce:	83 c4 10             	add    $0x10,%esp
    29d1:	85 c0                	test   %eax,%eax
    29d3:	0f 89 e3 00 00 00    	jns    2abc <dirfile+0x14c>
  fd = open("dirfile/xx", O_CREATE);
    29d9:	83 ec 08             	sub    $0x8,%esp
    29dc:	68 00 02 00 00       	push   $0x200
    29e1:	68 4e 4a 00 00       	push   $0x4a4e
    29e6:	e8 16 0f 00 00       	call   3901 <open>
  if(fd >= 0){
    29eb:	83 c4 10             	add    $0x10,%esp
    29ee:	85 c0                	test   %eax,%eax
    29f0:	0f 89 c6 00 00 00    	jns    2abc <dirfile+0x14c>
  if(mkdir("dirfile/xx") == 0){
    29f6:	83 ec 0c             	sub    $0xc,%esp
    29f9:	68 4e 4a 00 00       	push   $0x4a4e
    29fe:	e8 26 0f 00 00       	call   3929 <mkdir>
    2a03:	83 c4 10             	add    $0x10,%esp
    2a06:	85 c0                	test   %eax,%eax
    2a08:	0f 84 46 01 00 00    	je     2b54 <dirfile+0x1e4>
  if(unlink("dirfile/xx") == 0){
    2a0e:	83 ec 0c             	sub    $0xc,%esp
    2a11:	68 4e 4a 00 00       	push   $0x4a4e
    2a16:	e8 f6 0e 00 00       	call   3911 <unlink>
    2a1b:	83 c4 10             	add    $0x10,%esp
    2a1e:	85 c0                	test   %eax,%eax
    2a20:	0f 84 1b 01 00 00    	je     2b41 <dirfile+0x1d1>
  if(link("README", "dirfile/xx") == 0){
    2a26:	83 ec 08             	sub    $0x8,%esp
    2a29:	68 4e 4a 00 00       	push   $0x4a4e
    2a2e:	68 b2 4a 00 00       	push   $0x4ab2
    2a33:	e8 e9 0e 00 00       	call   3921 <link>
    2a38:	83 c4 10             	add    $0x10,%esp
    2a3b:	85 c0                	test   %eax,%eax
    2a3d:	0f 84 eb 00 00 00    	je     2b2e <dirfile+0x1be>
  if(unlink("dirfile") != 0){
    2a43:	83 ec 0c             	sub    $0xc,%esp
    2a46:	68 15 4a 00 00       	push   $0x4a15
    2a4b:	e8 c1 0e 00 00       	call   3911 <unlink>
    2a50:	83 c4 10             	add    $0x10,%esp
    2a53:	85 c0                	test   %eax,%eax
    2a55:	0f 85 c0 00 00 00    	jne    2b1b <dirfile+0x1ab>
  fd = open(".", O_RDWR);
    2a5b:	83 ec 08             	sub    $0x8,%esp
    2a5e:	6a 02                	push   $0x2
    2a60:	68 0e 46 00 00       	push   $0x460e
    2a65:	e8 97 0e 00 00       	call   3901 <open>
  if(fd >= 0){
    2a6a:	83 c4 10             	add    $0x10,%esp
    2a6d:	85 c0                	test   %eax,%eax
    2a6f:	0f 89 93 00 00 00    	jns    2b08 <dirfile+0x198>
  fd = open(".", 0);
    2a75:	83 ec 08             	sub    $0x8,%esp
    2a78:	6a 00                	push   $0x0
    2a7a:	68 0e 46 00 00       	push   $0x460e
    2a7f:	e8 7d 0e 00 00       	call   3901 <open>
  if(write(fd, "x", 1) > 0){
    2a84:	83 c4 0c             	add    $0xc,%esp
    2a87:	6a 01                	push   $0x1
  fd = open(".", 0);
    2a89:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2a8b:	68 f1 46 00 00       	push   $0x46f1
    2a90:	50                   	push   %eax
    2a91:	e8 4b 0e 00 00       	call   38e1 <write>
    2a96:	83 c4 10             	add    $0x10,%esp
    2a99:	85 c0                	test   %eax,%eax
    2a9b:	7f 58                	jg     2af5 <dirfile+0x185>
  close(fd);
    2a9d:	83 ec 0c             	sub    $0xc,%esp
    2aa0:	53                   	push   %ebx
    2aa1:	e8 43 0e 00 00       	call   38e9 <close>
  printf(1, "dir vs file OK\n");
    2aa6:	58                   	pop    %eax
    2aa7:	5a                   	pop    %edx
    2aa8:	68 e5 4a 00 00       	push   $0x4ae5
    2aad:	6a 01                	push   $0x1
    2aaf:	e8 7c 0f 00 00       	call   3a30 <printf>
}
    2ab4:	83 c4 10             	add    $0x10,%esp
    2ab7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2aba:	c9                   	leave  
    2abb:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    2abc:	50                   	push   %eax
    2abd:	50                   	push   %eax
    2abe:	68 59 4a 00 00       	push   $0x4a59
    2ac3:	6a 01                	push   $0x1
    2ac5:	e8 66 0f 00 00       	call   3a30 <printf>
    exit();
    2aca:	e8 f2 0d 00 00       	call   38c1 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    2acf:	50                   	push   %eax
    2ad0:	50                   	push   %eax
    2ad1:	68 34 4a 00 00       	push   $0x4a34
    2ad6:	6a 01                	push   $0x1
    2ad8:	e8 53 0f 00 00       	call   3a30 <printf>
    exit();
    2add:	e8 df 0d 00 00       	call   38c1 <exit>
    printf(1, "create dirfile failed\n");
    2ae2:	52                   	push   %edx
    2ae3:	52                   	push   %edx
    2ae4:	68 1d 4a 00 00       	push   $0x4a1d
    2ae9:	6a 01                	push   $0x1
    2aeb:	e8 40 0f 00 00       	call   3a30 <printf>
    exit();
    2af0:	e8 cc 0d 00 00       	call   38c1 <exit>
    printf(1, "write . succeeded!\n");
    2af5:	51                   	push   %ecx
    2af6:	51                   	push   %ecx
    2af7:	68 d1 4a 00 00       	push   $0x4ad1
    2afc:	6a 01                	push   $0x1
    2afe:	e8 2d 0f 00 00       	call   3a30 <printf>
    exit();
    2b03:	e8 b9 0d 00 00       	call   38c1 <exit>
    printf(1, "open . for writing succeeded!\n");
    2b08:	53                   	push   %ebx
    2b09:	53                   	push   %ebx
    2b0a:	68 c8 52 00 00       	push   $0x52c8
    2b0f:	6a 01                	push   $0x1
    2b11:	e8 1a 0f 00 00       	call   3a30 <printf>
    exit();
    2b16:	e8 a6 0d 00 00       	call   38c1 <exit>
    printf(1, "unlink dirfile failed!\n");
    2b1b:	50                   	push   %eax
    2b1c:	50                   	push   %eax
    2b1d:	68 b9 4a 00 00       	push   $0x4ab9
    2b22:	6a 01                	push   $0x1
    2b24:	e8 07 0f 00 00       	call   3a30 <printf>
    exit();
    2b29:	e8 93 0d 00 00       	call   38c1 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    2b2e:	50                   	push   %eax
    2b2f:	50                   	push   %eax
    2b30:	68 a8 52 00 00       	push   $0x52a8
    2b35:	6a 01                	push   $0x1
    2b37:	e8 f4 0e 00 00       	call   3a30 <printf>
    exit();
    2b3c:	e8 80 0d 00 00       	call   38c1 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    2b41:	50                   	push   %eax
    2b42:	50                   	push   %eax
    2b43:	68 94 4a 00 00       	push   $0x4a94
    2b48:	6a 01                	push   $0x1
    2b4a:	e8 e1 0e 00 00       	call   3a30 <printf>
    exit();
    2b4f:	e8 6d 0d 00 00       	call   38c1 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2b54:	50                   	push   %eax
    2b55:	50                   	push   %eax
    2b56:	68 77 4a 00 00       	push   $0x4a77
    2b5b:	6a 01                	push   $0x1
    2b5d:	e8 ce 0e 00 00       	call   3a30 <printf>
    exit();
    2b62:	e8 5a 0d 00 00       	call   38c1 <exit>
    2b67:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2b6e:	66 90                	xchg   %ax,%ax

00002b70 <iref>:
{
    2b70:	55                   	push   %ebp
    2b71:	89 e5                	mov    %esp,%ebp
    2b73:	53                   	push   %ebx
  printf(1, "empty file name\n");
    2b74:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    2b79:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    2b7c:	68 f5 4a 00 00       	push   $0x4af5
    2b81:	6a 01                	push   $0x1
    2b83:	e8 a8 0e 00 00       	call   3a30 <printf>
    2b88:	83 c4 10             	add    $0x10,%esp
    2b8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2b8f:	90                   	nop
    if(mkdir("irefd") != 0){
    2b90:	83 ec 0c             	sub    $0xc,%esp
    2b93:	68 06 4b 00 00       	push   $0x4b06
    2b98:	e8 8c 0d 00 00       	call   3929 <mkdir>
    2b9d:	83 c4 10             	add    $0x10,%esp
    2ba0:	85 c0                	test   %eax,%eax
    2ba2:	0f 85 bb 00 00 00    	jne    2c63 <iref+0xf3>
    if(chdir("irefd") != 0){
    2ba8:	83 ec 0c             	sub    $0xc,%esp
    2bab:	68 06 4b 00 00       	push   $0x4b06
    2bb0:	e8 7c 0d 00 00       	call   3931 <chdir>
    2bb5:	83 c4 10             	add    $0x10,%esp
    2bb8:	85 c0                	test   %eax,%eax
    2bba:	0f 85 b7 00 00 00    	jne    2c77 <iref+0x107>
    mkdir("");
    2bc0:	83 ec 0c             	sub    $0xc,%esp
    2bc3:	68 bb 41 00 00       	push   $0x41bb
    2bc8:	e8 5c 0d 00 00       	call   3929 <mkdir>
    link("README", "");
    2bcd:	59                   	pop    %ecx
    2bce:	58                   	pop    %eax
    2bcf:	68 bb 41 00 00       	push   $0x41bb
    2bd4:	68 b2 4a 00 00       	push   $0x4ab2
    2bd9:	e8 43 0d 00 00       	call   3921 <link>
    fd = open("", O_CREATE);
    2bde:	58                   	pop    %eax
    2bdf:	5a                   	pop    %edx
    2be0:	68 00 02 00 00       	push   $0x200
    2be5:	68 bb 41 00 00       	push   $0x41bb
    2bea:	e8 12 0d 00 00       	call   3901 <open>
    if(fd >= 0)
    2bef:	83 c4 10             	add    $0x10,%esp
    2bf2:	85 c0                	test   %eax,%eax
    2bf4:	78 0c                	js     2c02 <iref+0x92>
      close(fd);
    2bf6:	83 ec 0c             	sub    $0xc,%esp
    2bf9:	50                   	push   %eax
    2bfa:	e8 ea 0c 00 00       	call   38e9 <close>
    2bff:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    2c02:	83 ec 08             	sub    $0x8,%esp
    2c05:	68 00 02 00 00       	push   $0x200
    2c0a:	68 f0 46 00 00       	push   $0x46f0
    2c0f:	e8 ed 0c 00 00       	call   3901 <open>
    if(fd >= 0)
    2c14:	83 c4 10             	add    $0x10,%esp
    2c17:	85 c0                	test   %eax,%eax
    2c19:	78 0c                	js     2c27 <iref+0xb7>
      close(fd);
    2c1b:	83 ec 0c             	sub    $0xc,%esp
    2c1e:	50                   	push   %eax
    2c1f:	e8 c5 0c 00 00       	call   38e9 <close>
    2c24:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    2c27:	83 ec 0c             	sub    $0xc,%esp
    2c2a:	68 f0 46 00 00       	push   $0x46f0
    2c2f:	e8 dd 0c 00 00       	call   3911 <unlink>
  for(i = 0; i < 50 + 1; i++){
    2c34:	83 c4 10             	add    $0x10,%esp
    2c37:	83 eb 01             	sub    $0x1,%ebx
    2c3a:	0f 85 50 ff ff ff    	jne    2b90 <iref+0x20>
  chdir("/");
    2c40:	83 ec 0c             	sub    $0xc,%esp
    2c43:	68 e1 3d 00 00       	push   $0x3de1
    2c48:	e8 e4 0c 00 00       	call   3931 <chdir>
  printf(1, "empty file name OK\n");
    2c4d:	58                   	pop    %eax
    2c4e:	5a                   	pop    %edx
    2c4f:	68 34 4b 00 00       	push   $0x4b34
    2c54:	6a 01                	push   $0x1
    2c56:	e8 d5 0d 00 00       	call   3a30 <printf>
}
    2c5b:	83 c4 10             	add    $0x10,%esp
    2c5e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2c61:	c9                   	leave  
    2c62:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    2c63:	83 ec 08             	sub    $0x8,%esp
    2c66:	68 0c 4b 00 00       	push   $0x4b0c
    2c6b:	6a 01                	push   $0x1
    2c6d:	e8 be 0d 00 00       	call   3a30 <printf>
      exit();
    2c72:	e8 4a 0c 00 00       	call   38c1 <exit>
      printf(1, "chdir irefd failed\n");
    2c77:	83 ec 08             	sub    $0x8,%esp
    2c7a:	68 20 4b 00 00       	push   $0x4b20
    2c7f:	6a 01                	push   $0x1
    2c81:	e8 aa 0d 00 00       	call   3a30 <printf>
      exit();
    2c86:	e8 36 0c 00 00       	call   38c1 <exit>
    2c8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2c8f:	90                   	nop

00002c90 <forktest>:
{
    2c90:	55                   	push   %ebp
    2c91:	89 e5                	mov    %esp,%ebp
    2c93:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    2c94:	31 db                	xor    %ebx,%ebx
{
    2c96:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    2c99:	68 48 4b 00 00       	push   $0x4b48
    2c9e:	6a 01                	push   $0x1
    2ca0:	e8 8b 0d 00 00       	call   3a30 <printf>
    2ca5:	83 c4 10             	add    $0x10,%esp
    2ca8:	eb 13                	jmp    2cbd <forktest+0x2d>
    2caa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid == 0)
    2cb0:	74 4a                	je     2cfc <forktest+0x6c>
  for(n=0; n<1000; n++){
    2cb2:	83 c3 01             	add    $0x1,%ebx
    2cb5:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2cbb:	74 6b                	je     2d28 <forktest+0x98>
    pid = fork();
    2cbd:	e8 f7 0b 00 00       	call   38b9 <fork>
    if(pid < 0)
    2cc2:	85 c0                	test   %eax,%eax
    2cc4:	79 ea                	jns    2cb0 <forktest+0x20>
  for(; n > 0; n--){
    2cc6:	85 db                	test   %ebx,%ebx
    2cc8:	74 14                	je     2cde <forktest+0x4e>
    2cca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    2cd0:	e8 f4 0b 00 00       	call   38c9 <wait>
    2cd5:	85 c0                	test   %eax,%eax
    2cd7:	78 28                	js     2d01 <forktest+0x71>
  for(; n > 0; n--){
    2cd9:	83 eb 01             	sub    $0x1,%ebx
    2cdc:	75 f2                	jne    2cd0 <forktest+0x40>
  if(wait() != -1){
    2cde:	e8 e6 0b 00 00       	call   38c9 <wait>
    2ce3:	83 f8 ff             	cmp    $0xffffffff,%eax
    2ce6:	75 2d                	jne    2d15 <forktest+0x85>
  printf(1, "fork test OK\n");
    2ce8:	83 ec 08             	sub    $0x8,%esp
    2ceb:	68 7a 4b 00 00       	push   $0x4b7a
    2cf0:	6a 01                	push   $0x1
    2cf2:	e8 39 0d 00 00       	call   3a30 <printf>
}
    2cf7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2cfa:	c9                   	leave  
    2cfb:	c3                   	ret    
      exit();
    2cfc:	e8 c0 0b 00 00       	call   38c1 <exit>
      printf(1, "wait stopped early\n");
    2d01:	83 ec 08             	sub    $0x8,%esp
    2d04:	68 53 4b 00 00       	push   $0x4b53
    2d09:	6a 01                	push   $0x1
    2d0b:	e8 20 0d 00 00       	call   3a30 <printf>
      exit();
    2d10:	e8 ac 0b 00 00       	call   38c1 <exit>
    printf(1, "wait got too many\n");
    2d15:	52                   	push   %edx
    2d16:	52                   	push   %edx
    2d17:	68 67 4b 00 00       	push   $0x4b67
    2d1c:	6a 01                	push   $0x1
    2d1e:	e8 0d 0d 00 00       	call   3a30 <printf>
    exit();
    2d23:	e8 99 0b 00 00       	call   38c1 <exit>
    printf(1, "fork claimed to work 1000 times!\n");
    2d28:	50                   	push   %eax
    2d29:	50                   	push   %eax
    2d2a:	68 e8 52 00 00       	push   $0x52e8
    2d2f:	6a 01                	push   $0x1
    2d31:	e8 fa 0c 00 00       	call   3a30 <printf>
    exit();
    2d36:	e8 86 0b 00 00       	call   38c1 <exit>
    2d3b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2d3f:	90                   	nop

00002d40 <sbrktest>:
{
    2d40:	55                   	push   %ebp
    2d41:	89 e5                	mov    %esp,%ebp
    2d43:	57                   	push   %edi
  for(i = 0; i < 5000; i++){
    2d44:	31 ff                	xor    %edi,%edi
{
    2d46:	56                   	push   %esi
    2d47:	53                   	push   %ebx
    2d48:	83 ec 54             	sub    $0x54,%esp
  printf(stdout, "sbrk test\n");
    2d4b:	68 88 4b 00 00       	push   $0x4b88
    2d50:	ff 35 30 5e 00 00    	pushl  0x5e30
    2d56:	e8 d5 0c 00 00       	call   3a30 <printf>
  oldbrk = sbrk(0);
    2d5b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d62:	e8 e2 0b 00 00       	call   3949 <sbrk>
  a = sbrk(0);
    2d67:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    2d6e:	89 c3                	mov    %eax,%ebx
  a = sbrk(0);
    2d70:	e8 d4 0b 00 00       	call   3949 <sbrk>
    2d75:	83 c4 10             	add    $0x10,%esp
    2d78:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 5000; i++){
    2d7a:	eb 06                	jmp    2d82 <sbrktest+0x42>
    2d7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    a = b + 1;
    2d80:	89 c6                	mov    %eax,%esi
    b = sbrk(1);
    2d82:	83 ec 0c             	sub    $0xc,%esp
    2d85:	6a 01                	push   $0x1
    2d87:	e8 bd 0b 00 00       	call   3949 <sbrk>
    if(b != a){
    2d8c:	83 c4 10             	add    $0x10,%esp
    2d8f:	39 f0                	cmp    %esi,%eax
    2d91:	0f 85 84 02 00 00    	jne    301b <sbrktest+0x2db>
  for(i = 0; i < 5000; i++){
    2d97:	83 c7 01             	add    $0x1,%edi
    *b = 1;
    2d9a:	c6 06 01             	movb   $0x1,(%esi)
    a = b + 1;
    2d9d:	8d 46 01             	lea    0x1(%esi),%eax
  for(i = 0; i < 5000; i++){
    2da0:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    2da6:	75 d8                	jne    2d80 <sbrktest+0x40>
  pid = fork();
    2da8:	e8 0c 0b 00 00       	call   38b9 <fork>
    2dad:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    2daf:	85 c0                	test   %eax,%eax
    2db1:	0f 88 91 03 00 00    	js     3148 <sbrktest+0x408>
  c = sbrk(1);
    2db7:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    2dba:	83 c6 02             	add    $0x2,%esi
  c = sbrk(1);
    2dbd:	6a 01                	push   $0x1
    2dbf:	e8 85 0b 00 00       	call   3949 <sbrk>
  c = sbrk(1);
    2dc4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2dcb:	e8 79 0b 00 00       	call   3949 <sbrk>
  if(c != a + 1){
    2dd0:	83 c4 10             	add    $0x10,%esp
    2dd3:	39 f0                	cmp    %esi,%eax
    2dd5:	0f 85 56 03 00 00    	jne    3131 <sbrktest+0x3f1>
  if(pid == 0)
    2ddb:	85 ff                	test   %edi,%edi
    2ddd:	0f 84 49 03 00 00    	je     312c <sbrktest+0x3ec>
  wait();
    2de3:	e8 e1 0a 00 00       	call   38c9 <wait>
  a = sbrk(0);
    2de8:	83 ec 0c             	sub    $0xc,%esp
    2deb:	6a 00                	push   $0x0
    2ded:	e8 57 0b 00 00       	call   3949 <sbrk>
    2df2:	89 c6                	mov    %eax,%esi
  amt = (BIG) - (uint)a;
    2df4:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2df9:	29 f0                	sub    %esi,%eax
  p = sbrk(amt);
    2dfb:	89 04 24             	mov    %eax,(%esp)
    2dfe:	e8 46 0b 00 00       	call   3949 <sbrk>
  if (p != a) {
    2e03:	83 c4 10             	add    $0x10,%esp
    2e06:	39 c6                	cmp    %eax,%esi
    2e08:	0f 85 07 03 00 00    	jne    3115 <sbrktest+0x3d5>
  a = sbrk(0);
    2e0e:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    2e11:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    2e18:	6a 00                	push   $0x0
    2e1a:	e8 2a 0b 00 00       	call   3949 <sbrk>
  c = sbrk(-4096);
    2e1f:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    2e26:	89 c6                	mov    %eax,%esi
  c = sbrk(-4096);
    2e28:	e8 1c 0b 00 00       	call   3949 <sbrk>
  if(c == (char*)0xffffffff){
    2e2d:	83 c4 10             	add    $0x10,%esp
    2e30:	83 f8 ff             	cmp    $0xffffffff,%eax
    2e33:	0f 84 c5 02 00 00    	je     30fe <sbrktest+0x3be>
  c = sbrk(0);
    2e39:	83 ec 0c             	sub    $0xc,%esp
    2e3c:	6a 00                	push   $0x0
    2e3e:	e8 06 0b 00 00       	call   3949 <sbrk>
  if(c != a - 4096){
    2e43:	8d 96 00 f0 ff ff    	lea    -0x1000(%esi),%edx
    2e49:	83 c4 10             	add    $0x10,%esp
    2e4c:	39 d0                	cmp    %edx,%eax
    2e4e:	0f 85 93 02 00 00    	jne    30e7 <sbrktest+0x3a7>
  a = sbrk(0);
    2e54:	83 ec 0c             	sub    $0xc,%esp
    2e57:	6a 00                	push   $0x0
    2e59:	e8 eb 0a 00 00       	call   3949 <sbrk>
  c = sbrk(4096);
    2e5e:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    2e65:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    2e67:	e8 dd 0a 00 00       	call   3949 <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    2e6c:	83 c4 10             	add    $0x10,%esp
  c = sbrk(4096);
    2e6f:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    2e71:	39 c6                	cmp    %eax,%esi
    2e73:	0f 85 57 02 00 00    	jne    30d0 <sbrktest+0x390>
    2e79:	83 ec 0c             	sub    $0xc,%esp
    2e7c:	6a 00                	push   $0x0
    2e7e:	e8 c6 0a 00 00       	call   3949 <sbrk>
    2e83:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    2e89:	83 c4 10             	add    $0x10,%esp
    2e8c:	39 d0                	cmp    %edx,%eax
    2e8e:	0f 85 3c 02 00 00    	jne    30d0 <sbrktest+0x390>
  if(*lastaddr == 99){
    2e94:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    2e9b:	0f 84 18 02 00 00    	je     30b9 <sbrktest+0x379>
  a = sbrk(0);
    2ea1:	83 ec 0c             	sub    $0xc,%esp
    2ea4:	6a 00                	push   $0x0
    2ea6:	e8 9e 0a 00 00       	call   3949 <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    2eab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    2eb2:	89 c6                	mov    %eax,%esi
  c = sbrk(-(sbrk(0) - oldbrk));
    2eb4:	e8 90 0a 00 00       	call   3949 <sbrk>
    2eb9:	89 d9                	mov    %ebx,%ecx
    2ebb:	29 c1                	sub    %eax,%ecx
    2ebd:	89 0c 24             	mov    %ecx,(%esp)
    2ec0:	e8 84 0a 00 00       	call   3949 <sbrk>
  if(c != a){
    2ec5:	83 c4 10             	add    $0x10,%esp
    2ec8:	39 c6                	cmp    %eax,%esi
    2eca:	0f 85 d2 01 00 00    	jne    30a2 <sbrktest+0x362>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2ed0:	be 00 00 00 80       	mov    $0x80000000,%esi
    2ed5:	8d 76 00             	lea    0x0(%esi),%esi
    ppid = getpid();
    2ed8:	e8 64 0a 00 00       	call   3941 <getpid>
    2edd:	89 c7                	mov    %eax,%edi
    pid = fork();
    2edf:	e8 d5 09 00 00       	call   38b9 <fork>
    if(pid < 0){
    2ee4:	85 c0                	test   %eax,%eax
    2ee6:	0f 88 9e 01 00 00    	js     308a <sbrktest+0x34a>
    if(pid == 0){
    2eec:	0f 84 76 01 00 00    	je     3068 <sbrktest+0x328>
    wait();
    2ef2:	e8 d2 09 00 00       	call   38c9 <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2ef7:	81 c6 50 c3 00 00    	add    $0xc350,%esi
    2efd:	81 fe 80 84 1e 80    	cmp    $0x801e8480,%esi
    2f03:	75 d3                	jne    2ed8 <sbrktest+0x198>
  if(pipe(fds) != 0){
    2f05:	83 ec 0c             	sub    $0xc,%esp
    2f08:	8d 45 b8             	lea    -0x48(%ebp),%eax
    2f0b:	50                   	push   %eax
    2f0c:	e8 c0 09 00 00       	call   38d1 <pipe>
    2f11:	83 c4 10             	add    $0x10,%esp
    2f14:	85 c0                	test   %eax,%eax
    2f16:	0f 85 34 01 00 00    	jne    3050 <sbrktest+0x310>
    2f1c:	8d 75 c0             	lea    -0x40(%ebp),%esi
    2f1f:	89 f7                	mov    %esi,%edi
    if((pids[i] = fork()) == 0){
    2f21:	e8 93 09 00 00       	call   38b9 <fork>
    2f26:	89 07                	mov    %eax,(%edi)
    2f28:	85 c0                	test   %eax,%eax
    2f2a:	0f 84 8f 00 00 00    	je     2fbf <sbrktest+0x27f>
    if(pids[i] != -1)
    2f30:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f33:	74 14                	je     2f49 <sbrktest+0x209>
      read(fds[0], &scratch, 1);
    2f35:	83 ec 04             	sub    $0x4,%esp
    2f38:	8d 45 b7             	lea    -0x49(%ebp),%eax
    2f3b:	6a 01                	push   $0x1
    2f3d:	50                   	push   %eax
    2f3e:	ff 75 b8             	pushl  -0x48(%ebp)
    2f41:	e8 93 09 00 00       	call   38d9 <read>
    2f46:	83 c4 10             	add    $0x10,%esp
    2f49:	83 c7 04             	add    $0x4,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f4c:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f4f:	39 c7                	cmp    %eax,%edi
    2f51:	75 ce                	jne    2f21 <sbrktest+0x1e1>
  c = sbrk(4096);
    2f53:	83 ec 0c             	sub    $0xc,%esp
    2f56:	68 00 10 00 00       	push   $0x1000
    2f5b:	e8 e9 09 00 00       	call   3949 <sbrk>
    2f60:	83 c4 10             	add    $0x10,%esp
    2f63:	89 c7                	mov    %eax,%edi
    if(pids[i] == -1)
    2f65:	8b 06                	mov    (%esi),%eax
    2f67:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f6a:	74 11                	je     2f7d <sbrktest+0x23d>
    kill(pids[i]);
    2f6c:	83 ec 0c             	sub    $0xc,%esp
    2f6f:	50                   	push   %eax
    2f70:	e8 7c 09 00 00       	call   38f1 <kill>
    wait();
    2f75:	e8 4f 09 00 00       	call   38c9 <wait>
    2f7a:	83 c4 10             	add    $0x10,%esp
    2f7d:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f80:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f83:	39 c6                	cmp    %eax,%esi
    2f85:	75 de                	jne    2f65 <sbrktest+0x225>
  if(c == (char*)0xffffffff){
    2f87:	83 ff ff             	cmp    $0xffffffff,%edi
    2f8a:	0f 84 a9 00 00 00    	je     3039 <sbrktest+0x2f9>
  if(sbrk(0) > oldbrk)
    2f90:	83 ec 0c             	sub    $0xc,%esp
    2f93:	6a 00                	push   $0x0
    2f95:	e8 af 09 00 00       	call   3949 <sbrk>
    2f9a:	83 c4 10             	add    $0x10,%esp
    2f9d:	39 d8                	cmp    %ebx,%eax
    2f9f:	77 61                	ja     3002 <sbrktest+0x2c2>
  printf(stdout, "sbrk test OK\n");
    2fa1:	83 ec 08             	sub    $0x8,%esp
    2fa4:	68 30 4c 00 00       	push   $0x4c30
    2fa9:	ff 35 30 5e 00 00    	pushl  0x5e30
    2faf:	e8 7c 0a 00 00       	call   3a30 <printf>
}
    2fb4:	83 c4 10             	add    $0x10,%esp
    2fb7:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2fba:	5b                   	pop    %ebx
    2fbb:	5e                   	pop    %esi
    2fbc:	5f                   	pop    %edi
    2fbd:	5d                   	pop    %ebp
    2fbe:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    2fbf:	83 ec 0c             	sub    $0xc,%esp
    2fc2:	6a 00                	push   $0x0
    2fc4:	e8 80 09 00 00       	call   3949 <sbrk>
    2fc9:	ba 00 00 40 06       	mov    $0x6400000,%edx
    2fce:	29 c2                	sub    %eax,%edx
    2fd0:	89 14 24             	mov    %edx,(%esp)
    2fd3:	e8 71 09 00 00       	call   3949 <sbrk>
      write(fds[1], "x", 1);
    2fd8:	83 c4 0c             	add    $0xc,%esp
    2fdb:	6a 01                	push   $0x1
    2fdd:	68 f1 46 00 00       	push   $0x46f1
    2fe2:	ff 75 bc             	pushl  -0x44(%ebp)
    2fe5:	e8 f7 08 00 00       	call   38e1 <write>
    2fea:	83 c4 10             	add    $0x10,%esp
    2fed:	8d 76 00             	lea    0x0(%esi),%esi
      for(;;) sleep(1000);
    2ff0:	83 ec 0c             	sub    $0xc,%esp
    2ff3:	68 e8 03 00 00       	push   $0x3e8
    2ff8:	e8 54 09 00 00       	call   3951 <sleep>
    2ffd:	83 c4 10             	add    $0x10,%esp
    3000:	eb ee                	jmp    2ff0 <sbrktest+0x2b0>
    sbrk(-(sbrk(0) - oldbrk));
    3002:	83 ec 0c             	sub    $0xc,%esp
    3005:	6a 00                	push   $0x0
    3007:	e8 3d 09 00 00       	call   3949 <sbrk>
    300c:	29 c3                	sub    %eax,%ebx
    300e:	89 1c 24             	mov    %ebx,(%esp)
    3011:	e8 33 09 00 00       	call   3949 <sbrk>
    3016:	83 c4 10             	add    $0x10,%esp
    3019:	eb 86                	jmp    2fa1 <sbrktest+0x261>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    301b:	83 ec 0c             	sub    $0xc,%esp
    301e:	50                   	push   %eax
    301f:	56                   	push   %esi
    3020:	57                   	push   %edi
    3021:	68 93 4b 00 00       	push   $0x4b93
    3026:	ff 35 30 5e 00 00    	pushl  0x5e30
    302c:	e8 ff 09 00 00       	call   3a30 <printf>
      exit();
    3031:	83 c4 20             	add    $0x20,%esp
    3034:	e8 88 08 00 00       	call   38c1 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    3039:	50                   	push   %eax
    303a:	50                   	push   %eax
    303b:	68 15 4c 00 00       	push   $0x4c15
    3040:	ff 35 30 5e 00 00    	pushl  0x5e30
    3046:	e8 e5 09 00 00       	call   3a30 <printf>
    exit();
    304b:	e8 71 08 00 00       	call   38c1 <exit>
    printf(1, "pipe() failed\n");
    3050:	52                   	push   %edx
    3051:	52                   	push   %edx
    3052:	68 d1 40 00 00       	push   $0x40d1
    3057:	6a 01                	push   $0x1
    3059:	e8 d2 09 00 00       	call   3a30 <printf>
    exit();
    305e:	e8 5e 08 00 00       	call   38c1 <exit>
    3063:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3067:	90                   	nop
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3068:	0f be 06             	movsbl (%esi),%eax
    306b:	50                   	push   %eax
    306c:	56                   	push   %esi
    306d:	68 fc 4b 00 00       	push   $0x4bfc
    3072:	ff 35 30 5e 00 00    	pushl  0x5e30
    3078:	e8 b3 09 00 00       	call   3a30 <printf>
      kill(ppid);
    307d:	89 3c 24             	mov    %edi,(%esp)
    3080:	e8 6c 08 00 00       	call   38f1 <kill>
      exit();
    3085:	e8 37 08 00 00       	call   38c1 <exit>
      printf(stdout, "fork failed\n");
    308a:	83 ec 08             	sub    $0x8,%esp
    308d:	68 d9 4c 00 00       	push   $0x4cd9
    3092:	ff 35 30 5e 00 00    	pushl  0x5e30
    3098:	e8 93 09 00 00       	call   3a30 <printf>
      exit();
    309d:	e8 1f 08 00 00       	call   38c1 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    30a2:	50                   	push   %eax
    30a3:	56                   	push   %esi
    30a4:	68 dc 53 00 00       	push   $0x53dc
    30a9:	ff 35 30 5e 00 00    	pushl  0x5e30
    30af:	e8 7c 09 00 00       	call   3a30 <printf>
    exit();
    30b4:	e8 08 08 00 00       	call   38c1 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    30b9:	51                   	push   %ecx
    30ba:	51                   	push   %ecx
    30bb:	68 ac 53 00 00       	push   $0x53ac
    30c0:	ff 35 30 5e 00 00    	pushl  0x5e30
    30c6:	e8 65 09 00 00       	call   3a30 <printf>
    exit();
    30cb:	e8 f1 07 00 00       	call   38c1 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    30d0:	57                   	push   %edi
    30d1:	56                   	push   %esi
    30d2:	68 84 53 00 00       	push   $0x5384
    30d7:	ff 35 30 5e 00 00    	pushl  0x5e30
    30dd:	e8 4e 09 00 00       	call   3a30 <printf>
    exit();
    30e2:	e8 da 07 00 00       	call   38c1 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    30e7:	50                   	push   %eax
    30e8:	56                   	push   %esi
    30e9:	68 4c 53 00 00       	push   $0x534c
    30ee:	ff 35 30 5e 00 00    	pushl  0x5e30
    30f4:	e8 37 09 00 00       	call   3a30 <printf>
    exit();
    30f9:	e8 c3 07 00 00       	call   38c1 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    30fe:	53                   	push   %ebx
    30ff:	53                   	push   %ebx
    3100:	68 e1 4b 00 00       	push   $0x4be1
    3105:	ff 35 30 5e 00 00    	pushl  0x5e30
    310b:	e8 20 09 00 00       	call   3a30 <printf>
    exit();
    3110:	e8 ac 07 00 00       	call   38c1 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    3115:	56                   	push   %esi
    3116:	56                   	push   %esi
    3117:	68 0c 53 00 00       	push   $0x530c
    311c:	ff 35 30 5e 00 00    	pushl  0x5e30
    3122:	e8 09 09 00 00       	call   3a30 <printf>
    exit();
    3127:	e8 95 07 00 00       	call   38c1 <exit>
    exit();
    312c:	e8 90 07 00 00       	call   38c1 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    3131:	57                   	push   %edi
    3132:	57                   	push   %edi
    3133:	68 c5 4b 00 00       	push   $0x4bc5
    3138:	ff 35 30 5e 00 00    	pushl  0x5e30
    313e:	e8 ed 08 00 00       	call   3a30 <printf>
    exit();
    3143:	e8 79 07 00 00       	call   38c1 <exit>
    printf(stdout, "sbrk test fork failed\n");
    3148:	50                   	push   %eax
    3149:	50                   	push   %eax
    314a:	68 ae 4b 00 00       	push   $0x4bae
    314f:	ff 35 30 5e 00 00    	pushl  0x5e30
    3155:	e8 d6 08 00 00       	call   3a30 <printf>
    exit();
    315a:	e8 62 07 00 00       	call   38c1 <exit>
    315f:	90                   	nop

00003160 <validateint>:
}
    3160:	c3                   	ret    
    3161:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3168:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    316f:	90                   	nop

00003170 <validatetest>:
{
    3170:	55                   	push   %ebp
    3171:	89 e5                	mov    %esp,%ebp
    3173:	56                   	push   %esi
    3174:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    3175:	31 db                	xor    %ebx,%ebx
  printf(stdout, "validate test\n");
    3177:	83 ec 08             	sub    $0x8,%esp
    317a:	68 3e 4c 00 00       	push   $0x4c3e
    317f:	ff 35 30 5e 00 00    	pushl  0x5e30
    3185:	e8 a6 08 00 00       	call   3a30 <printf>
    318a:	83 c4 10             	add    $0x10,%esp
    318d:	8d 76 00             	lea    0x0(%esi),%esi
    if((pid = fork()) == 0){
    3190:	e8 24 07 00 00       	call   38b9 <fork>
    3195:	89 c6                	mov    %eax,%esi
    3197:	85 c0                	test   %eax,%eax
    3199:	74 63                	je     31fe <validatetest+0x8e>
    sleep(0);
    319b:	83 ec 0c             	sub    $0xc,%esp
    319e:	6a 00                	push   $0x0
    31a0:	e8 ac 07 00 00       	call   3951 <sleep>
    sleep(0);
    31a5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31ac:	e8 a0 07 00 00       	call   3951 <sleep>
    kill(pid);
    31b1:	89 34 24             	mov    %esi,(%esp)
    31b4:	e8 38 07 00 00       	call   38f1 <kill>
    wait();
    31b9:	e8 0b 07 00 00       	call   38c9 <wait>
    if(link("nosuchfile", (char*)p) != -1){
    31be:	58                   	pop    %eax
    31bf:	5a                   	pop    %edx
    31c0:	53                   	push   %ebx
    31c1:	68 4d 4c 00 00       	push   $0x4c4d
    31c6:	e8 56 07 00 00       	call   3921 <link>
    31cb:	83 c4 10             	add    $0x10,%esp
    31ce:	83 f8 ff             	cmp    $0xffffffff,%eax
    31d1:	75 30                	jne    3203 <validatetest+0x93>
  for(p = 0; p <= (uint)hi; p += 4096){
    31d3:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    31d9:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    31df:	75 af                	jne    3190 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    31e1:	83 ec 08             	sub    $0x8,%esp
    31e4:	68 71 4c 00 00       	push   $0x4c71
    31e9:	ff 35 30 5e 00 00    	pushl  0x5e30
    31ef:	e8 3c 08 00 00       	call   3a30 <printf>
}
    31f4:	83 c4 10             	add    $0x10,%esp
    31f7:	8d 65 f8             	lea    -0x8(%ebp),%esp
    31fa:	5b                   	pop    %ebx
    31fb:	5e                   	pop    %esi
    31fc:	5d                   	pop    %ebp
    31fd:	c3                   	ret    
      exit();
    31fe:	e8 be 06 00 00       	call   38c1 <exit>
      printf(stdout, "link should not succeed\n");
    3203:	83 ec 08             	sub    $0x8,%esp
    3206:	68 58 4c 00 00       	push   $0x4c58
    320b:	ff 35 30 5e 00 00    	pushl  0x5e30
    3211:	e8 1a 08 00 00       	call   3a30 <printf>
      exit();
    3216:	e8 a6 06 00 00       	call   38c1 <exit>
    321b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    321f:	90                   	nop

00003220 <bsstest>:
{
    3220:	55                   	push   %ebp
    3221:	89 e5                	mov    %esp,%ebp
    3223:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    3226:	68 7e 4c 00 00       	push   $0x4c7e
    322b:	ff 35 30 5e 00 00    	pushl  0x5e30
    3231:	e8 fa 07 00 00       	call   3a30 <printf>
    if(uninit[i] != '\0'){
    3236:	83 c4 10             	add    $0x10,%esp
    3239:	80 3d 40 5f 00 00 00 	cmpb   $0x0,0x5f40
    3240:	75 39                	jne    327b <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    3242:	b8 01 00 00 00       	mov    $0x1,%eax
    3247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    324e:	66 90                	xchg   %ax,%ax
    if(uninit[i] != '\0'){
    3250:	80 b8 40 5f 00 00 00 	cmpb   $0x0,0x5f40(%eax)
    3257:	75 22                	jne    327b <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    3259:	83 c0 01             	add    $0x1,%eax
    325c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3261:	75 ed                	jne    3250 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    3263:	83 ec 08             	sub    $0x8,%esp
    3266:	68 99 4c 00 00       	push   $0x4c99
    326b:	ff 35 30 5e 00 00    	pushl  0x5e30
    3271:	e8 ba 07 00 00       	call   3a30 <printf>
}
    3276:	83 c4 10             	add    $0x10,%esp
    3279:	c9                   	leave  
    327a:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    327b:	83 ec 08             	sub    $0x8,%esp
    327e:	68 88 4c 00 00       	push   $0x4c88
    3283:	ff 35 30 5e 00 00    	pushl  0x5e30
    3289:	e8 a2 07 00 00       	call   3a30 <printf>
      exit();
    328e:	e8 2e 06 00 00       	call   38c1 <exit>
    3293:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    329a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000032a0 <bigargtest>:
{
    32a0:	55                   	push   %ebp
    32a1:	89 e5                	mov    %esp,%ebp
    32a3:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    32a6:	68 a6 4c 00 00       	push   $0x4ca6
    32ab:	e8 61 06 00 00       	call   3911 <unlink>
  pid = fork();
    32b0:	e8 04 06 00 00       	call   38b9 <fork>
  if(pid == 0){
    32b5:	83 c4 10             	add    $0x10,%esp
    32b8:	85 c0                	test   %eax,%eax
    32ba:	74 44                	je     3300 <bigargtest+0x60>
  } else if(pid < 0){
    32bc:	0f 88 c5 00 00 00    	js     3387 <bigargtest+0xe7>
  wait();
    32c2:	e8 02 06 00 00       	call   38c9 <wait>
  fd = open("bigarg-ok", 0);
    32c7:	83 ec 08             	sub    $0x8,%esp
    32ca:	6a 00                	push   $0x0
    32cc:	68 a6 4c 00 00       	push   $0x4ca6
    32d1:	e8 2b 06 00 00       	call   3901 <open>
  if(fd < 0){
    32d6:	83 c4 10             	add    $0x10,%esp
    32d9:	85 c0                	test   %eax,%eax
    32db:	0f 88 8f 00 00 00    	js     3370 <bigargtest+0xd0>
  close(fd);
    32e1:	83 ec 0c             	sub    $0xc,%esp
    32e4:	50                   	push   %eax
    32e5:	e8 ff 05 00 00       	call   38e9 <close>
  unlink("bigarg-ok");
    32ea:	c7 04 24 a6 4c 00 00 	movl   $0x4ca6,(%esp)
    32f1:	e8 1b 06 00 00       	call   3911 <unlink>
}
    32f6:	83 c4 10             	add    $0x10,%esp
    32f9:	c9                   	leave  
    32fa:	c3                   	ret    
    32fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    32ff:	90                   	nop
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3300:	c7 04 85 60 5e 00 00 	movl   $0x5400,0x5e60(,%eax,4)
    3307:	00 54 00 00 
    for(i = 0; i < MAXARG-1; i++)
    330b:	83 c0 01             	add    $0x1,%eax
    330e:	83 f8 1f             	cmp    $0x1f,%eax
    3311:	75 ed                	jne    3300 <bigargtest+0x60>
    printf(stdout, "bigarg test\n");
    3313:	51                   	push   %ecx
    3314:	51                   	push   %ecx
    3315:	68 b0 4c 00 00       	push   $0x4cb0
    331a:	ff 35 30 5e 00 00    	pushl  0x5e30
    args[MAXARG-1] = 0;
    3320:	c7 05 dc 5e 00 00 00 	movl   $0x0,0x5edc
    3327:	00 00 00 
    printf(stdout, "bigarg test\n");
    332a:	e8 01 07 00 00       	call   3a30 <printf>
    exec("echo", args);
    332f:	58                   	pop    %eax
    3330:	5a                   	pop    %edx
    3331:	68 60 5e 00 00       	push   $0x5e60
    3336:	68 7d 3e 00 00       	push   $0x3e7d
    333b:	e8 b9 05 00 00       	call   38f9 <exec>
    printf(stdout, "bigarg test ok\n");
    3340:	59                   	pop    %ecx
    3341:	58                   	pop    %eax
    3342:	68 bd 4c 00 00       	push   $0x4cbd
    3347:	ff 35 30 5e 00 00    	pushl  0x5e30
    334d:	e8 de 06 00 00       	call   3a30 <printf>
    fd = open("bigarg-ok", O_CREATE);
    3352:	58                   	pop    %eax
    3353:	5a                   	pop    %edx
    3354:	68 00 02 00 00       	push   $0x200
    3359:	68 a6 4c 00 00       	push   $0x4ca6
    335e:	e8 9e 05 00 00       	call   3901 <open>
    close(fd);
    3363:	89 04 24             	mov    %eax,(%esp)
    3366:	e8 7e 05 00 00       	call   38e9 <close>
    exit();
    336b:	e8 51 05 00 00       	call   38c1 <exit>
    printf(stdout, "bigarg test failed!\n");
    3370:	50                   	push   %eax
    3371:	50                   	push   %eax
    3372:	68 e6 4c 00 00       	push   $0x4ce6
    3377:	ff 35 30 5e 00 00    	pushl  0x5e30
    337d:	e8 ae 06 00 00       	call   3a30 <printf>
    exit();
    3382:	e8 3a 05 00 00       	call   38c1 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    3387:	52                   	push   %edx
    3388:	52                   	push   %edx
    3389:	68 cd 4c 00 00       	push   $0x4ccd
    338e:	ff 35 30 5e 00 00    	pushl  0x5e30
    3394:	e8 97 06 00 00       	call   3a30 <printf>
    exit();
    3399:	e8 23 05 00 00       	call   38c1 <exit>
    339e:	66 90                	xchg   %ax,%ax

000033a0 <fsfull>:
{
    33a0:	55                   	push   %ebp
    33a1:	89 e5                	mov    %esp,%ebp
    33a3:	57                   	push   %edi
    33a4:	56                   	push   %esi
  for(nfiles = 0; ; nfiles++){
    33a5:	31 f6                	xor    %esi,%esi
{
    33a7:	53                   	push   %ebx
    33a8:	83 ec 54             	sub    $0x54,%esp
  printf(1, "fsfull test\n");
    33ab:	68 fb 4c 00 00       	push   $0x4cfb
    33b0:	6a 01                	push   $0x1
    33b2:	e8 79 06 00 00       	call   3a30 <printf>
    33b7:	83 c4 10             	add    $0x10,%esp
    33ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    33c0:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    33c5:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    33ca:	83 ec 04             	sub    $0x4,%esp
    name[0] = 'f';
    33cd:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    33d1:	f7 e6                	mul    %esi
    name[5] = '\0';
    33d3:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    33d7:	c1 ea 06             	shr    $0x6,%edx
    33da:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    33dd:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    33e3:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    33e6:	89 f0                	mov    %esi,%eax
    33e8:	29 d0                	sub    %edx,%eax
    33ea:	89 c2                	mov    %eax,%edx
    33ec:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    33f1:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    33f3:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    33f8:	c1 ea 05             	shr    $0x5,%edx
    33fb:	83 c2 30             	add    $0x30,%edx
    33fe:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3401:	f7 e6                	mul    %esi
    3403:	89 f0                	mov    %esi,%eax
    3405:	c1 ea 05             	shr    $0x5,%edx
    3408:	6b d2 64             	imul   $0x64,%edx,%edx
    340b:	29 d0                	sub    %edx,%eax
    340d:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    340f:	89 f0                	mov    %esi,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3411:	c1 ea 03             	shr    $0x3,%edx
    3414:	83 c2 30             	add    $0x30,%edx
    3417:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    341a:	f7 e1                	mul    %ecx
    341c:	89 f1                	mov    %esi,%ecx
    341e:	c1 ea 03             	shr    $0x3,%edx
    3421:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3424:	01 c0                	add    %eax,%eax
    3426:	29 c1                	sub    %eax,%ecx
    3428:	89 c8                	mov    %ecx,%eax
    342a:	83 c0 30             	add    $0x30,%eax
    342d:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    3430:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3433:	50                   	push   %eax
    3434:	68 08 4d 00 00       	push   $0x4d08
    3439:	6a 01                	push   $0x1
    343b:	e8 f0 05 00 00       	call   3a30 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3440:	58                   	pop    %eax
    3441:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3444:	5a                   	pop    %edx
    3445:	68 02 02 00 00       	push   $0x202
    344a:	50                   	push   %eax
    344b:	e8 b1 04 00 00       	call   3901 <open>
    if(fd < 0){
    3450:	83 c4 10             	add    $0x10,%esp
    int fd = open(name, O_CREATE|O_RDWR);
    3453:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    3455:	85 c0                	test   %eax,%eax
    3457:	78 4d                	js     34a6 <fsfull+0x106>
    int total = 0;
    3459:	31 db                	xor    %ebx,%ebx
    345b:	eb 05                	jmp    3462 <fsfull+0xc2>
    345d:	8d 76 00             	lea    0x0(%esi),%esi
      total += cc;
    3460:	01 c3                	add    %eax,%ebx
      int cc = write(fd, buf, 512);
    3462:	83 ec 04             	sub    $0x4,%esp
    3465:	68 00 02 00 00       	push   $0x200
    346a:	68 60 86 00 00       	push   $0x8660
    346f:	57                   	push   %edi
    3470:	e8 6c 04 00 00       	call   38e1 <write>
      if(cc < 512)
    3475:	83 c4 10             	add    $0x10,%esp
    3478:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    347d:	7f e1                	jg     3460 <fsfull+0xc0>
    printf(1, "wrote %d bytes\n", total);
    347f:	83 ec 04             	sub    $0x4,%esp
    3482:	53                   	push   %ebx
    3483:	68 24 4d 00 00       	push   $0x4d24
    3488:	6a 01                	push   $0x1
    348a:	e8 a1 05 00 00       	call   3a30 <printf>
    close(fd);
    348f:	89 3c 24             	mov    %edi,(%esp)
    3492:	e8 52 04 00 00       	call   38e9 <close>
    if(total == 0)
    3497:	83 c4 10             	add    $0x10,%esp
    349a:	85 db                	test   %ebx,%ebx
    349c:	74 1e                	je     34bc <fsfull+0x11c>
  for(nfiles = 0; ; nfiles++){
    349e:	83 c6 01             	add    $0x1,%esi
    34a1:	e9 1a ff ff ff       	jmp    33c0 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    34a6:	83 ec 04             	sub    $0x4,%esp
    34a9:	8d 45 a8             	lea    -0x58(%ebp),%eax
    34ac:	50                   	push   %eax
    34ad:	68 14 4d 00 00       	push   $0x4d14
    34b2:	6a 01                	push   $0x1
    34b4:	e8 77 05 00 00       	call   3a30 <printf>
      break;
    34b9:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    34bc:	bf d3 4d 62 10       	mov    $0x10624dd3,%edi
    name[2] = '0' + (nfiles % 1000) / 100;
    34c1:	bb 1f 85 eb 51       	mov    $0x51eb851f,%ebx
    34c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    34cd:	8d 76 00             	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    34d0:	89 f0                	mov    %esi,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    34d2:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    unlink(name);
    34d7:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'f';
    34da:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    34de:	f7 e7                	mul    %edi
    name[5] = '\0';
    34e0:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    34e4:	c1 ea 06             	shr    $0x6,%edx
    34e7:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    34ea:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    34f0:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    34f3:	89 f0                	mov    %esi,%eax
    34f5:	29 d0                	sub    %edx,%eax
    34f7:	f7 e3                	mul    %ebx
    name[3] = '0' + (nfiles % 100) / 10;
    34f9:	89 f0                	mov    %esi,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    34fb:	c1 ea 05             	shr    $0x5,%edx
    34fe:	83 c2 30             	add    $0x30,%edx
    3501:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3504:	f7 e3                	mul    %ebx
    3506:	89 f0                	mov    %esi,%eax
    3508:	c1 ea 05             	shr    $0x5,%edx
    350b:	6b d2 64             	imul   $0x64,%edx,%edx
    350e:	29 d0                	sub    %edx,%eax
    3510:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    3512:	89 f0                	mov    %esi,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3514:	c1 ea 03             	shr    $0x3,%edx
    3517:	83 c2 30             	add    $0x30,%edx
    351a:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    351d:	f7 e1                	mul    %ecx
    351f:	89 f1                	mov    %esi,%ecx
    nfiles--;
    3521:	83 ee 01             	sub    $0x1,%esi
    name[4] = '0' + (nfiles % 10);
    3524:	c1 ea 03             	shr    $0x3,%edx
    3527:	8d 04 92             	lea    (%edx,%edx,4),%eax
    352a:	01 c0                	add    %eax,%eax
    352c:	29 c1                	sub    %eax,%ecx
    352e:	89 c8                	mov    %ecx,%eax
    3530:	83 c0 30             	add    $0x30,%eax
    3533:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    3536:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3539:	50                   	push   %eax
    353a:	e8 d2 03 00 00       	call   3911 <unlink>
  while(nfiles >= 0){
    353f:	83 c4 10             	add    $0x10,%esp
    3542:	83 fe ff             	cmp    $0xffffffff,%esi
    3545:	75 89                	jne    34d0 <fsfull+0x130>
  printf(1, "fsfull test finished\n");
    3547:	83 ec 08             	sub    $0x8,%esp
    354a:	68 34 4d 00 00       	push   $0x4d34
    354f:	6a 01                	push   $0x1
    3551:	e8 da 04 00 00       	call   3a30 <printf>
}
    3556:	83 c4 10             	add    $0x10,%esp
    3559:	8d 65 f4             	lea    -0xc(%ebp),%esp
    355c:	5b                   	pop    %ebx
    355d:	5e                   	pop    %esi
    355e:	5f                   	pop    %edi
    355f:	5d                   	pop    %ebp
    3560:	c3                   	ret    
    3561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3568:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    356f:	90                   	nop

00003570 <uio>:
{
    3570:	55                   	push   %ebp
    3571:	89 e5                	mov    %esp,%ebp
    3573:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    3576:	68 4a 4d 00 00       	push   $0x4d4a
    357b:	6a 01                	push   $0x1
    357d:	e8 ae 04 00 00       	call   3a30 <printf>
  pid = fork();
    3582:	e8 32 03 00 00       	call   38b9 <fork>
  if(pid == 0){
    3587:	83 c4 10             	add    $0x10,%esp
    358a:	85 c0                	test   %eax,%eax
    358c:	74 1b                	je     35a9 <uio+0x39>
  } else if(pid < 0){
    358e:	78 3d                	js     35cd <uio+0x5d>
  wait();
    3590:	e8 34 03 00 00       	call   38c9 <wait>
  printf(1, "uio test done\n");
    3595:	83 ec 08             	sub    $0x8,%esp
    3598:	68 54 4d 00 00       	push   $0x4d54
    359d:	6a 01                	push   $0x1
    359f:	e8 8c 04 00 00       	call   3a30 <printf>
}
    35a4:	83 c4 10             	add    $0x10,%esp
    35a7:	c9                   	leave  
    35a8:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    35a9:	b8 09 00 00 00       	mov    $0x9,%eax
    35ae:	ba 70 00 00 00       	mov    $0x70,%edx
    35b3:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    35b4:	ba 71 00 00 00       	mov    $0x71,%edx
    35b9:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    35ba:	52                   	push   %edx
    35bb:	52                   	push   %edx
    35bc:	68 e0 54 00 00       	push   $0x54e0
    35c1:	6a 01                	push   $0x1
    35c3:	e8 68 04 00 00       	call   3a30 <printf>
    exit();
    35c8:	e8 f4 02 00 00       	call   38c1 <exit>
    printf (1, "fork failed\n");
    35cd:	50                   	push   %eax
    35ce:	50                   	push   %eax
    35cf:	68 d9 4c 00 00       	push   $0x4cd9
    35d4:	6a 01                	push   $0x1
    35d6:	e8 55 04 00 00       	call   3a30 <printf>
    exit();
    35db:	e8 e1 02 00 00       	call   38c1 <exit>

000035e0 <argptest>:
{
    35e0:	55                   	push   %ebp
    35e1:	89 e5                	mov    %esp,%ebp
    35e3:	53                   	push   %ebx
    35e4:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    35e7:	6a 00                	push   $0x0
    35e9:	68 63 4d 00 00       	push   $0x4d63
    35ee:	e8 0e 03 00 00       	call   3901 <open>
  if (fd < 0) {
    35f3:	83 c4 10             	add    $0x10,%esp
    35f6:	85 c0                	test   %eax,%eax
    35f8:	78 39                	js     3633 <argptest+0x53>
  read(fd, sbrk(0) - 1, -1);
    35fa:	83 ec 0c             	sub    $0xc,%esp
    35fd:	89 c3                	mov    %eax,%ebx
    35ff:	6a 00                	push   $0x0
    3601:	e8 43 03 00 00       	call   3949 <sbrk>
    3606:	83 c4 0c             	add    $0xc,%esp
    3609:	83 e8 01             	sub    $0x1,%eax
    360c:	6a ff                	push   $0xffffffff
    360e:	50                   	push   %eax
    360f:	53                   	push   %ebx
    3610:	e8 c4 02 00 00       	call   38d9 <read>
  close(fd);
    3615:	89 1c 24             	mov    %ebx,(%esp)
    3618:	e8 cc 02 00 00       	call   38e9 <close>
  printf(1, "arg test passed\n");
    361d:	58                   	pop    %eax
    361e:	5a                   	pop    %edx
    361f:	68 75 4d 00 00       	push   $0x4d75
    3624:	6a 01                	push   $0x1
    3626:	e8 05 04 00 00       	call   3a30 <printf>
}
    362b:	83 c4 10             	add    $0x10,%esp
    362e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3631:	c9                   	leave  
    3632:	c3                   	ret    
    printf(2, "open failed\n");
    3633:	51                   	push   %ecx
    3634:	51                   	push   %ecx
    3635:	68 68 4d 00 00       	push   $0x4d68
    363a:	6a 02                	push   $0x2
    363c:	e8 ef 03 00 00       	call   3a30 <printf>
    exit();
    3641:	e8 7b 02 00 00       	call   38c1 <exit>
    3646:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    364d:	8d 76 00             	lea    0x0(%esi),%esi

00003650 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    3650:	69 05 2c 5e 00 00 0d 	imul   $0x19660d,0x5e2c,%eax
    3657:	66 19 00 
    365a:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    365f:	a3 2c 5e 00 00       	mov    %eax,0x5e2c
}
    3664:	c3                   	ret    
    3665:	66 90                	xchg   %ax,%ax
    3667:	66 90                	xchg   %ax,%ax
    3669:	66 90                	xchg   %ax,%ax
    366b:	66 90                	xchg   %ax,%ax
    366d:	66 90                	xchg   %ax,%ax
    366f:	90                   	nop

00003670 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3670:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3671:	31 d2                	xor    %edx,%edx
{
    3673:	89 e5                	mov    %esp,%ebp
    3675:	53                   	push   %ebx
    3676:	8b 45 08             	mov    0x8(%ebp),%eax
    3679:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    367c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    3680:	0f b6 0c 13          	movzbl (%ebx,%edx,1),%ecx
    3684:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    3687:	83 c2 01             	add    $0x1,%edx
    368a:	84 c9                	test   %cl,%cl
    368c:	75 f2                	jne    3680 <strcpy+0x10>
    ;
  return os;
}
    368e:	5b                   	pop    %ebx
    368f:	5d                   	pop    %ebp
    3690:	c3                   	ret    
    3691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3698:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    369f:	90                   	nop

000036a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    36a0:	55                   	push   %ebp
    36a1:	89 e5                	mov    %esp,%ebp
    36a3:	56                   	push   %esi
    36a4:	53                   	push   %ebx
    36a5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    36a8:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(*p && *p == *q)
    36ab:	0f b6 13             	movzbl (%ebx),%edx
    36ae:	0f b6 0e             	movzbl (%esi),%ecx
    36b1:	84 d2                	test   %dl,%dl
    36b3:	74 1e                	je     36d3 <strcmp+0x33>
    36b5:	b8 01 00 00 00       	mov    $0x1,%eax
    36ba:	38 ca                	cmp    %cl,%dl
    36bc:	74 09                	je     36c7 <strcmp+0x27>
    36be:	eb 20                	jmp    36e0 <strcmp+0x40>
    36c0:	83 c0 01             	add    $0x1,%eax
    36c3:	38 ca                	cmp    %cl,%dl
    36c5:	75 19                	jne    36e0 <strcmp+0x40>
    36c7:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    36cb:	0f b6 0c 06          	movzbl (%esi,%eax,1),%ecx
    36cf:	84 d2                	test   %dl,%dl
    36d1:	75 ed                	jne    36c0 <strcmp+0x20>
    36d3:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
}
    36d5:	5b                   	pop    %ebx
    36d6:	5e                   	pop    %esi
  return (uchar)*p - (uchar)*q;
    36d7:	29 c8                	sub    %ecx,%eax
}
    36d9:	5d                   	pop    %ebp
    36da:	c3                   	ret    
    36db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    36df:	90                   	nop
    36e0:	0f b6 c2             	movzbl %dl,%eax
    36e3:	5b                   	pop    %ebx
    36e4:	5e                   	pop    %esi
  return (uchar)*p - (uchar)*q;
    36e5:	29 c8                	sub    %ecx,%eax
}
    36e7:	5d                   	pop    %ebp
    36e8:	c3                   	ret    
    36e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000036f0 <strlen>:

uint
strlen(const char *s)
{
    36f0:	55                   	push   %ebp
    36f1:	89 e5                	mov    %esp,%ebp
    36f3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    36f6:	80 39 00             	cmpb   $0x0,(%ecx)
    36f9:	74 15                	je     3710 <strlen+0x20>
    36fb:	31 d2                	xor    %edx,%edx
    36fd:	8d 76 00             	lea    0x0(%esi),%esi
    3700:	83 c2 01             	add    $0x1,%edx
    3703:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3707:	89 d0                	mov    %edx,%eax
    3709:	75 f5                	jne    3700 <strlen+0x10>
    ;
  return n;
}
    370b:	5d                   	pop    %ebp
    370c:	c3                   	ret    
    370d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    3710:	31 c0                	xor    %eax,%eax
}
    3712:	5d                   	pop    %ebp
    3713:	c3                   	ret    
    3714:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    371b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    371f:	90                   	nop

00003720 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3720:	55                   	push   %ebp
    3721:	89 e5                	mov    %esp,%ebp
    3723:	57                   	push   %edi
    3724:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3727:	8b 4d 10             	mov    0x10(%ebp),%ecx
    372a:	8b 45 0c             	mov    0xc(%ebp),%eax
    372d:	89 d7                	mov    %edx,%edi
    372f:	fc                   	cld    
    3730:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3732:	89 d0                	mov    %edx,%eax
    3734:	5f                   	pop    %edi
    3735:	5d                   	pop    %ebp
    3736:	c3                   	ret    
    3737:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    373e:	66 90                	xchg   %ax,%ax

00003740 <strchr>:

char*
strchr(const char *s, char c)
{
    3740:	55                   	push   %ebp
    3741:	89 e5                	mov    %esp,%ebp
    3743:	53                   	push   %ebx
    3744:	8b 45 08             	mov    0x8(%ebp),%eax
    3747:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    374a:	0f b6 18             	movzbl (%eax),%ebx
    374d:	84 db                	test   %bl,%bl
    374f:	74 1d                	je     376e <strchr+0x2e>
    3751:	89 d1                	mov    %edx,%ecx
    if(*s == c)
    3753:	38 d3                	cmp    %dl,%bl
    3755:	75 0d                	jne    3764 <strchr+0x24>
    3757:	eb 17                	jmp    3770 <strchr+0x30>
    3759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3760:	38 ca                	cmp    %cl,%dl
    3762:	74 0c                	je     3770 <strchr+0x30>
  for(; *s; s++)
    3764:	83 c0 01             	add    $0x1,%eax
    3767:	0f b6 10             	movzbl (%eax),%edx
    376a:	84 d2                	test   %dl,%dl
    376c:	75 f2                	jne    3760 <strchr+0x20>
      return (char*)s;
  return 0;
    376e:	31 c0                	xor    %eax,%eax
}
    3770:	5b                   	pop    %ebx
    3771:	5d                   	pop    %ebp
    3772:	c3                   	ret    
    3773:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    377a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003780 <gets>:

char*
gets(char *buf, int max)
{
    3780:	55                   	push   %ebp
    3781:	89 e5                	mov    %esp,%ebp
    3783:	57                   	push   %edi
    3784:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3785:	31 f6                	xor    %esi,%esi
{
    3787:	53                   	push   %ebx
    3788:	89 f3                	mov    %esi,%ebx
    378a:	83 ec 1c             	sub    $0x1c,%esp
    378d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    3790:	eb 2f                	jmp    37c1 <gets+0x41>
    3792:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    3798:	83 ec 04             	sub    $0x4,%esp
    379b:	8d 45 e7             	lea    -0x19(%ebp),%eax
    379e:	6a 01                	push   $0x1
    37a0:	50                   	push   %eax
    37a1:	6a 00                	push   $0x0
    37a3:	e8 31 01 00 00       	call   38d9 <read>
    if(cc < 1)
    37a8:	83 c4 10             	add    $0x10,%esp
    37ab:	85 c0                	test   %eax,%eax
    37ad:	7e 1c                	jle    37cb <gets+0x4b>
      break;
    buf[i++] = c;
    37af:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    37b3:	83 c7 01             	add    $0x1,%edi
    37b6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    37b9:	3c 0a                	cmp    $0xa,%al
    37bb:	74 23                	je     37e0 <gets+0x60>
    37bd:	3c 0d                	cmp    $0xd,%al
    37bf:	74 1f                	je     37e0 <gets+0x60>
  for(i=0; i+1 < max; ){
    37c1:	83 c3 01             	add    $0x1,%ebx
    37c4:	89 fe                	mov    %edi,%esi
    37c6:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    37c9:	7c cd                	jl     3798 <gets+0x18>
    37cb:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    37cd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    37d0:	c6 03 00             	movb   $0x0,(%ebx)
}
    37d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    37d6:	5b                   	pop    %ebx
    37d7:	5e                   	pop    %esi
    37d8:	5f                   	pop    %edi
    37d9:	5d                   	pop    %ebp
    37da:	c3                   	ret    
    37db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    37df:	90                   	nop
    37e0:	8b 75 08             	mov    0x8(%ebp),%esi
    37e3:	8b 45 08             	mov    0x8(%ebp),%eax
    37e6:	01 de                	add    %ebx,%esi
    37e8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    37ea:	c6 03 00             	movb   $0x0,(%ebx)
}
    37ed:	8d 65 f4             	lea    -0xc(%ebp),%esp
    37f0:	5b                   	pop    %ebx
    37f1:	5e                   	pop    %esi
    37f2:	5f                   	pop    %edi
    37f3:	5d                   	pop    %ebp
    37f4:	c3                   	ret    
    37f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    37fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003800 <stat>:

int
stat(const char *n, struct stat *st)
{
    3800:	55                   	push   %ebp
    3801:	89 e5                	mov    %esp,%ebp
    3803:	56                   	push   %esi
    3804:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3805:	83 ec 08             	sub    $0x8,%esp
    3808:	6a 00                	push   $0x0
    380a:	ff 75 08             	pushl  0x8(%ebp)
    380d:	e8 ef 00 00 00       	call   3901 <open>
  if(fd < 0)
    3812:	83 c4 10             	add    $0x10,%esp
    3815:	85 c0                	test   %eax,%eax
    3817:	78 27                	js     3840 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    3819:	83 ec 08             	sub    $0x8,%esp
    381c:	ff 75 0c             	pushl  0xc(%ebp)
    381f:	89 c3                	mov    %eax,%ebx
    3821:	50                   	push   %eax
    3822:	e8 f2 00 00 00       	call   3919 <fstat>
  close(fd);
    3827:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    382a:	89 c6                	mov    %eax,%esi
  close(fd);
    382c:	e8 b8 00 00 00       	call   38e9 <close>
  return r;
    3831:	83 c4 10             	add    $0x10,%esp
}
    3834:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3837:	89 f0                	mov    %esi,%eax
    3839:	5b                   	pop    %ebx
    383a:	5e                   	pop    %esi
    383b:	5d                   	pop    %ebp
    383c:	c3                   	ret    
    383d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3840:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3845:	eb ed                	jmp    3834 <stat+0x34>
    3847:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    384e:	66 90                	xchg   %ax,%ax

00003850 <atoi>:

int
atoi(const char *s)
{
    3850:	55                   	push   %ebp
    3851:	89 e5                	mov    %esp,%ebp
    3853:	53                   	push   %ebx
    3854:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3857:	0f be 11             	movsbl (%ecx),%edx
    385a:	8d 42 d0             	lea    -0x30(%edx),%eax
    385d:	3c 09                	cmp    $0x9,%al
  n = 0;
    385f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    3864:	77 1f                	ja     3885 <atoi+0x35>
    3866:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    386d:	8d 76 00             	lea    0x0(%esi),%esi
    n = n*10 + *s++ - '0';
    3870:	83 c1 01             	add    $0x1,%ecx
    3873:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3876:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    387a:	0f be 11             	movsbl (%ecx),%edx
    387d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3880:	80 fb 09             	cmp    $0x9,%bl
    3883:	76 eb                	jbe    3870 <atoi+0x20>
  return n;
}
    3885:	5b                   	pop    %ebx
    3886:	5d                   	pop    %ebp
    3887:	c3                   	ret    
    3888:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    388f:	90                   	nop

00003890 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3890:	55                   	push   %ebp
    3891:	89 e5                	mov    %esp,%ebp
    3893:	57                   	push   %edi
    3894:	8b 55 10             	mov    0x10(%ebp),%edx
    3897:	8b 45 08             	mov    0x8(%ebp),%eax
    389a:	56                   	push   %esi
    389b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    389e:	85 d2                	test   %edx,%edx
    38a0:	7e 13                	jle    38b5 <memmove+0x25>
    38a2:	01 c2                	add    %eax,%edx
  dst = vdst;
    38a4:	89 c7                	mov    %eax,%edi
    38a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    38ad:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
    38b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    38b1:	39 fa                	cmp    %edi,%edx
    38b3:	75 fb                	jne    38b0 <memmove+0x20>
  return vdst;
}
    38b5:	5e                   	pop    %esi
    38b6:	5f                   	pop    %edi
    38b7:	5d                   	pop    %ebp
    38b8:	c3                   	ret    

000038b9 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    38b9:	b8 01 00 00 00       	mov    $0x1,%eax
    38be:	cd 40                	int    $0x40
    38c0:	c3                   	ret    

000038c1 <exit>:
SYSCALL(exit)
    38c1:	b8 02 00 00 00       	mov    $0x2,%eax
    38c6:	cd 40                	int    $0x40
    38c8:	c3                   	ret    

000038c9 <wait>:
SYSCALL(wait)
    38c9:	b8 03 00 00 00       	mov    $0x3,%eax
    38ce:	cd 40                	int    $0x40
    38d0:	c3                   	ret    

000038d1 <pipe>:
SYSCALL(pipe)
    38d1:	b8 04 00 00 00       	mov    $0x4,%eax
    38d6:	cd 40                	int    $0x40
    38d8:	c3                   	ret    

000038d9 <read>:
SYSCALL(read)
    38d9:	b8 05 00 00 00       	mov    $0x5,%eax
    38de:	cd 40                	int    $0x40
    38e0:	c3                   	ret    

000038e1 <write>:
SYSCALL(write)
    38e1:	b8 10 00 00 00       	mov    $0x10,%eax
    38e6:	cd 40                	int    $0x40
    38e8:	c3                   	ret    

000038e9 <close>:
SYSCALL(close)
    38e9:	b8 15 00 00 00       	mov    $0x15,%eax
    38ee:	cd 40                	int    $0x40
    38f0:	c3                   	ret    

000038f1 <kill>:
SYSCALL(kill)
    38f1:	b8 06 00 00 00       	mov    $0x6,%eax
    38f6:	cd 40                	int    $0x40
    38f8:	c3                   	ret    

000038f9 <exec>:
SYSCALL(exec)
    38f9:	b8 07 00 00 00       	mov    $0x7,%eax
    38fe:	cd 40                	int    $0x40
    3900:	c3                   	ret    

00003901 <open>:
SYSCALL(open)
    3901:	b8 0f 00 00 00       	mov    $0xf,%eax
    3906:	cd 40                	int    $0x40
    3908:	c3                   	ret    

00003909 <mknod>:
SYSCALL(mknod)
    3909:	b8 11 00 00 00       	mov    $0x11,%eax
    390e:	cd 40                	int    $0x40
    3910:	c3                   	ret    

00003911 <unlink>:
SYSCALL(unlink)
    3911:	b8 12 00 00 00       	mov    $0x12,%eax
    3916:	cd 40                	int    $0x40
    3918:	c3                   	ret    

00003919 <fstat>:
SYSCALL(fstat)
    3919:	b8 08 00 00 00       	mov    $0x8,%eax
    391e:	cd 40                	int    $0x40
    3920:	c3                   	ret    

00003921 <link>:
SYSCALL(link)
    3921:	b8 13 00 00 00       	mov    $0x13,%eax
    3926:	cd 40                	int    $0x40
    3928:	c3                   	ret    

00003929 <mkdir>:
SYSCALL(mkdir)
    3929:	b8 14 00 00 00       	mov    $0x14,%eax
    392e:	cd 40                	int    $0x40
    3930:	c3                   	ret    

00003931 <chdir>:
SYSCALL(chdir)
    3931:	b8 09 00 00 00       	mov    $0x9,%eax
    3936:	cd 40                	int    $0x40
    3938:	c3                   	ret    

00003939 <dup>:
SYSCALL(dup)
    3939:	b8 0a 00 00 00       	mov    $0xa,%eax
    393e:	cd 40                	int    $0x40
    3940:	c3                   	ret    

00003941 <getpid>:
SYSCALL(getpid)
    3941:	b8 0b 00 00 00       	mov    $0xb,%eax
    3946:	cd 40                	int    $0x40
    3948:	c3                   	ret    

00003949 <sbrk>:
SYSCALL(sbrk)
    3949:	b8 0c 00 00 00       	mov    $0xc,%eax
    394e:	cd 40                	int    $0x40
    3950:	c3                   	ret    

00003951 <sleep>:
SYSCALL(sleep)
    3951:	b8 0d 00 00 00       	mov    $0xd,%eax
    3956:	cd 40                	int    $0x40
    3958:	c3                   	ret    

00003959 <uptime>:
SYSCALL(uptime)
    3959:	b8 0e 00 00 00       	mov    $0xe,%eax
    395e:	cd 40                	int    $0x40
    3960:	c3                   	ret    
    3961:	66 90                	xchg   %ax,%ax
    3963:	66 90                	xchg   %ax,%ax
    3965:	66 90                	xchg   %ax,%ax
    3967:	66 90                	xchg   %ax,%ax
    3969:	66 90                	xchg   %ax,%ax
    396b:	66 90                	xchg   %ax,%ax
    396d:	66 90                	xchg   %ax,%ax
    396f:	90                   	nop

00003970 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3970:	55                   	push   %ebp
    3971:	89 e5                	mov    %esp,%ebp
    3973:	57                   	push   %edi
    3974:	56                   	push   %esi
    3975:	53                   	push   %ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    3976:	89 d3                	mov    %edx,%ebx
{
    3978:	83 ec 3c             	sub    $0x3c,%esp
    397b:	89 45 bc             	mov    %eax,-0x44(%ebp)
  if(sgn && xx < 0){
    397e:	85 d2                	test   %edx,%edx
    3980:	0f 89 92 00 00 00    	jns    3a18 <printint+0xa8>
    3986:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    398a:	0f 84 88 00 00 00    	je     3a18 <printint+0xa8>
    neg = 1;
    3990:	c7 45 c0 01 00 00 00 	movl   $0x1,-0x40(%ebp)
    x = -xx;
    3997:	f7 db                	neg    %ebx
  } else {
    x = xx;
  }

  i = 0;
    3999:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    39a0:	8d 75 d7             	lea    -0x29(%ebp),%esi
    39a3:	eb 08                	jmp    39ad <printint+0x3d>
    39a5:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    39a8:	89 7d c4             	mov    %edi,-0x3c(%ebp)
  }while((x /= base) != 0);
    39ab:	89 c3                	mov    %eax,%ebx
    buf[i++] = digits[x % base];
    39ad:	89 d8                	mov    %ebx,%eax
    39af:	31 d2                	xor    %edx,%edx
    39b1:	8b 7d c4             	mov    -0x3c(%ebp),%edi
    39b4:	f7 f1                	div    %ecx
    39b6:	83 c7 01             	add    $0x1,%edi
    39b9:	0f b6 92 38 55 00 00 	movzbl 0x5538(%edx),%edx
    39c0:	88 14 3e             	mov    %dl,(%esi,%edi,1)
  }while((x /= base) != 0);
    39c3:	39 d9                	cmp    %ebx,%ecx
    39c5:	76 e1                	jbe    39a8 <printint+0x38>
  if(neg)
    39c7:	8b 45 c0             	mov    -0x40(%ebp),%eax
    39ca:	85 c0                	test   %eax,%eax
    39cc:	74 0d                	je     39db <printint+0x6b>
    buf[i++] = '-';
    39ce:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    39d3:	ba 2d 00 00 00       	mov    $0x2d,%edx
    buf[i++] = digits[x % base];
    39d8:	89 7d c4             	mov    %edi,-0x3c(%ebp)
    39db:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    39de:	8b 7d bc             	mov    -0x44(%ebp),%edi
    39e1:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    39e5:	eb 0f                	jmp    39f6 <printint+0x86>
    39e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    39ee:	66 90                	xchg   %ax,%ax
    39f0:	0f b6 13             	movzbl (%ebx),%edx
    39f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    39f6:	83 ec 04             	sub    $0x4,%esp
    39f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    39fc:	6a 01                	push   $0x1
    39fe:	56                   	push   %esi
    39ff:	57                   	push   %edi
    3a00:	e8 dc fe ff ff       	call   38e1 <write>

  while(--i >= 0)
    3a05:	83 c4 10             	add    $0x10,%esp
    3a08:	39 de                	cmp    %ebx,%esi
    3a0a:	75 e4                	jne    39f0 <printint+0x80>
    putc(fd, buf[i]);
}
    3a0c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3a0f:	5b                   	pop    %ebx
    3a10:	5e                   	pop    %esi
    3a11:	5f                   	pop    %edi
    3a12:	5d                   	pop    %ebp
    3a13:	c3                   	ret    
    3a14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    3a18:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
    3a1f:	e9 75 ff ff ff       	jmp    3999 <printint+0x29>
    3a24:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3a2b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3a2f:	90                   	nop

00003a30 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3a30:	55                   	push   %ebp
    3a31:	89 e5                	mov    %esp,%ebp
    3a33:	57                   	push   %edi
    3a34:	56                   	push   %esi
    3a35:	53                   	push   %ebx
    3a36:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3a39:	8b 75 0c             	mov    0xc(%ebp),%esi
    3a3c:	0f b6 1e             	movzbl (%esi),%ebx
    3a3f:	84 db                	test   %bl,%bl
    3a41:	0f 84 b9 00 00 00    	je     3b00 <printf+0xd0>
  ap = (uint*)(void*)&fmt + 1;
    3a47:	8d 45 10             	lea    0x10(%ebp),%eax
    3a4a:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    3a4d:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    3a50:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    3a52:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3a55:	eb 38                	jmp    3a8f <printf+0x5f>
    3a57:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3a5e:	66 90                	xchg   %ax,%ax
    3a60:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    3a63:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    3a68:	83 f8 25             	cmp    $0x25,%eax
    3a6b:	74 17                	je     3a84 <printf+0x54>
  write(fd, &c, 1);
    3a6d:	83 ec 04             	sub    $0x4,%esp
    3a70:	88 5d e7             	mov    %bl,-0x19(%ebp)
    3a73:	6a 01                	push   $0x1
    3a75:	57                   	push   %edi
    3a76:	ff 75 08             	pushl  0x8(%ebp)
    3a79:	e8 63 fe ff ff       	call   38e1 <write>
    3a7e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    3a81:	83 c4 10             	add    $0x10,%esp
    3a84:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    3a87:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    3a8b:	84 db                	test   %bl,%bl
    3a8d:	74 71                	je     3b00 <printf+0xd0>
    c = fmt[i] & 0xff;
    3a8f:	0f be cb             	movsbl %bl,%ecx
    3a92:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    3a95:	85 d2                	test   %edx,%edx
    3a97:	74 c7                	je     3a60 <printf+0x30>
      }
    } else if(state == '%'){
    3a99:	83 fa 25             	cmp    $0x25,%edx
    3a9c:	75 e6                	jne    3a84 <printf+0x54>
      if(c == 'd'){
    3a9e:	83 f8 64             	cmp    $0x64,%eax
    3aa1:	0f 84 99 00 00 00    	je     3b40 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    3aa7:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    3aad:	83 f9 70             	cmp    $0x70,%ecx
    3ab0:	74 5e                	je     3b10 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    3ab2:	83 f8 73             	cmp    $0x73,%eax
    3ab5:	0f 84 d5 00 00 00    	je     3b90 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    3abb:	83 f8 63             	cmp    $0x63,%eax
    3abe:	0f 84 8c 00 00 00    	je     3b50 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    3ac4:	83 f8 25             	cmp    $0x25,%eax
    3ac7:	0f 84 b3 00 00 00    	je     3b80 <printf+0x150>
  write(fd, &c, 1);
    3acd:	83 ec 04             	sub    $0x4,%esp
    3ad0:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    3ad4:	6a 01                	push   $0x1
    3ad6:	57                   	push   %edi
    3ad7:	ff 75 08             	pushl  0x8(%ebp)
    3ada:	e8 02 fe ff ff       	call   38e1 <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    3adf:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    3ae2:	83 c4 0c             	add    $0xc,%esp
    3ae5:	6a 01                	push   $0x1
    3ae7:	83 c6 01             	add    $0x1,%esi
    3aea:	57                   	push   %edi
    3aeb:	ff 75 08             	pushl  0x8(%ebp)
    3aee:	e8 ee fd ff ff       	call   38e1 <write>
  for(i = 0; fmt[i]; i++){
    3af3:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    3af7:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    3afa:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    3afc:	84 db                	test   %bl,%bl
    3afe:	75 8f                	jne    3a8f <printf+0x5f>
    }
  }
}
    3b00:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3b03:	5b                   	pop    %ebx
    3b04:	5e                   	pop    %esi
    3b05:	5f                   	pop    %edi
    3b06:	5d                   	pop    %ebp
    3b07:	c3                   	ret    
    3b08:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3b0f:	90                   	nop
        printint(fd, *ap, 16, 0);
    3b10:	83 ec 0c             	sub    $0xc,%esp
    3b13:	b9 10 00 00 00       	mov    $0x10,%ecx
    3b18:	6a 00                	push   $0x0
    3b1a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    3b1d:	8b 45 08             	mov    0x8(%ebp),%eax
    3b20:	8b 13                	mov    (%ebx),%edx
    3b22:	e8 49 fe ff ff       	call   3970 <printint>
        ap++;
    3b27:	89 d8                	mov    %ebx,%eax
    3b29:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3b2c:	31 d2                	xor    %edx,%edx
        ap++;
    3b2e:	83 c0 04             	add    $0x4,%eax
    3b31:	89 45 d0             	mov    %eax,-0x30(%ebp)
    3b34:	e9 4b ff ff ff       	jmp    3a84 <printf+0x54>
    3b39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    3b40:	83 ec 0c             	sub    $0xc,%esp
    3b43:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3b48:	6a 01                	push   $0x1
    3b4a:	eb ce                	jmp    3b1a <printf+0xea>
    3b4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    3b50:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    3b53:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    3b56:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    3b58:	6a 01                	push   $0x1
        ap++;
    3b5a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    3b5d:	57                   	push   %edi
    3b5e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    3b61:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3b64:	e8 78 fd ff ff       	call   38e1 <write>
        ap++;
    3b69:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    3b6c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3b6f:	31 d2                	xor    %edx,%edx
    3b71:	e9 0e ff ff ff       	jmp    3a84 <printf+0x54>
    3b76:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3b7d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    3b80:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    3b83:	83 ec 04             	sub    $0x4,%esp
    3b86:	e9 5a ff ff ff       	jmp    3ae5 <printf+0xb5>
    3b8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3b8f:	90                   	nop
        s = (char*)*ap;
    3b90:	8b 45 d0             	mov    -0x30(%ebp),%eax
    3b93:	8b 18                	mov    (%eax),%ebx
        ap++;
    3b95:	83 c0 04             	add    $0x4,%eax
    3b98:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    3b9b:	85 db                	test   %ebx,%ebx
    3b9d:	74 17                	je     3bb6 <printf+0x186>
        while(*s != 0){
    3b9f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    3ba2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    3ba4:	84 c0                	test   %al,%al
    3ba6:	0f 84 d8 fe ff ff    	je     3a84 <printf+0x54>
    3bac:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    3baf:	89 de                	mov    %ebx,%esi
    3bb1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3bb4:	eb 1a                	jmp    3bd0 <printf+0x1a0>
          s = "(null)";
    3bb6:	bb 30 55 00 00       	mov    $0x5530,%ebx
        while(*s != 0){
    3bbb:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    3bbe:	b8 28 00 00 00       	mov    $0x28,%eax
    3bc3:	89 de                	mov    %ebx,%esi
    3bc5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3bc8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3bcf:	90                   	nop
  write(fd, &c, 1);
    3bd0:	83 ec 04             	sub    $0x4,%esp
          s++;
    3bd3:	83 c6 01             	add    $0x1,%esi
    3bd6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3bd9:	6a 01                	push   $0x1
    3bdb:	57                   	push   %edi
    3bdc:	53                   	push   %ebx
    3bdd:	e8 ff fc ff ff       	call   38e1 <write>
        while(*s != 0){
    3be2:	0f b6 06             	movzbl (%esi),%eax
    3be5:	83 c4 10             	add    $0x10,%esp
    3be8:	84 c0                	test   %al,%al
    3bea:	75 e4                	jne    3bd0 <printf+0x1a0>
    3bec:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    3bef:	31 d2                	xor    %edx,%edx
    3bf1:	e9 8e fe ff ff       	jmp    3a84 <printf+0x54>
    3bf6:	66 90                	xchg   %ax,%ax
    3bf8:	66 90                	xchg   %ax,%ax
    3bfa:	66 90                	xchg   %ax,%ax
    3bfc:	66 90                	xchg   %ax,%ax
    3bfe:	66 90                	xchg   %ax,%ax

00003c00 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3c00:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c01:	a1 e0 5e 00 00       	mov    0x5ee0,%eax
{
    3c06:	89 e5                	mov    %esp,%ebp
    3c08:	57                   	push   %edi
    3c09:	56                   	push   %esi
    3c0a:	53                   	push   %ebx
    3c0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3c0e:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    3c10:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c13:	39 c8                	cmp    %ecx,%eax
    3c15:	73 19                	jae    3c30 <free+0x30>
    3c17:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c1e:	66 90                	xchg   %ax,%ax
    3c20:	39 d1                	cmp    %edx,%ecx
    3c22:	72 14                	jb     3c38 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3c24:	39 d0                	cmp    %edx,%eax
    3c26:	73 10                	jae    3c38 <free+0x38>
{
    3c28:	89 d0                	mov    %edx,%eax
    3c2a:	8b 10                	mov    (%eax),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c2c:	39 c8                	cmp    %ecx,%eax
    3c2e:	72 f0                	jb     3c20 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3c30:	39 d0                	cmp    %edx,%eax
    3c32:	72 f4                	jb     3c28 <free+0x28>
    3c34:	39 d1                	cmp    %edx,%ecx
    3c36:	73 f0                	jae    3c28 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    3c38:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3c3b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3c3e:	39 fa                	cmp    %edi,%edx
    3c40:	74 1e                	je     3c60 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    3c42:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    3c45:	8b 50 04             	mov    0x4(%eax),%edx
    3c48:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3c4b:	39 f1                	cmp    %esi,%ecx
    3c4d:	74 28                	je     3c77 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    3c4f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    3c51:	5b                   	pop    %ebx
  freep = p;
    3c52:	a3 e0 5e 00 00       	mov    %eax,0x5ee0
}
    3c57:	5e                   	pop    %esi
    3c58:	5f                   	pop    %edi
    3c59:	5d                   	pop    %ebp
    3c5a:	c3                   	ret    
    3c5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3c5f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    3c60:	03 72 04             	add    0x4(%edx),%esi
    3c63:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    3c66:	8b 10                	mov    (%eax),%edx
    3c68:	8b 12                	mov    (%edx),%edx
    3c6a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    3c6d:	8b 50 04             	mov    0x4(%eax),%edx
    3c70:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3c73:	39 f1                	cmp    %esi,%ecx
    3c75:	75 d8                	jne    3c4f <free+0x4f>
    p->s.size += bp->s.size;
    3c77:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    3c7a:	a3 e0 5e 00 00       	mov    %eax,0x5ee0
    p->s.size += bp->s.size;
    3c7f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    3c82:	8b 53 f8             	mov    -0x8(%ebx),%edx
    3c85:	89 10                	mov    %edx,(%eax)
}
    3c87:	5b                   	pop    %ebx
    3c88:	5e                   	pop    %esi
    3c89:	5f                   	pop    %edi
    3c8a:	5d                   	pop    %ebp
    3c8b:	c3                   	ret    
    3c8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003c90 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3c90:	55                   	push   %ebp
    3c91:	89 e5                	mov    %esp,%ebp
    3c93:	57                   	push   %edi
    3c94:	56                   	push   %esi
    3c95:	53                   	push   %ebx
    3c96:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3c99:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    3c9c:	8b 3d e0 5e 00 00    	mov    0x5ee0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3ca2:	8d 70 07             	lea    0x7(%eax),%esi
    3ca5:	c1 ee 03             	shr    $0x3,%esi
    3ca8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    3cab:	85 ff                	test   %edi,%edi
    3cad:	0f 84 ad 00 00 00    	je     3d60 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3cb3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
    3cb5:	8b 4a 04             	mov    0x4(%edx),%ecx
    3cb8:	39 ce                	cmp    %ecx,%esi
    3cba:	76 72                	jbe    3d2e <malloc+0x9e>
    3cbc:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    3cc2:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3cc7:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    3cca:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
    3cd1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    3cd4:	eb 1b                	jmp    3cf1 <malloc+0x61>
    3cd6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3cdd:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3ce0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    3ce2:	8b 48 04             	mov    0x4(%eax),%ecx
    3ce5:	39 f1                	cmp    %esi,%ecx
    3ce7:	73 4f                	jae    3d38 <malloc+0xa8>
    3ce9:	8b 3d e0 5e 00 00    	mov    0x5ee0,%edi
    3cef:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3cf1:	39 d7                	cmp    %edx,%edi
    3cf3:	75 eb                	jne    3ce0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    3cf5:	83 ec 0c             	sub    $0xc,%esp
    3cf8:	ff 75 e4             	pushl  -0x1c(%ebp)
    3cfb:	e8 49 fc ff ff       	call   3949 <sbrk>
  if(p == (char*)-1)
    3d00:	83 c4 10             	add    $0x10,%esp
    3d03:	83 f8 ff             	cmp    $0xffffffff,%eax
    3d06:	74 1c                	je     3d24 <malloc+0x94>
  hp->s.size = nu;
    3d08:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    3d0b:	83 ec 0c             	sub    $0xc,%esp
    3d0e:	83 c0 08             	add    $0x8,%eax
    3d11:	50                   	push   %eax
    3d12:	e8 e9 fe ff ff       	call   3c00 <free>
  return freep;
    3d17:	8b 15 e0 5e 00 00    	mov    0x5ee0,%edx
      if((p = morecore(nunits)) == 0)
    3d1d:	83 c4 10             	add    $0x10,%esp
    3d20:	85 d2                	test   %edx,%edx
    3d22:	75 bc                	jne    3ce0 <malloc+0x50>
        return 0;
  }
}
    3d24:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    3d27:	31 c0                	xor    %eax,%eax
}
    3d29:	5b                   	pop    %ebx
    3d2a:	5e                   	pop    %esi
    3d2b:	5f                   	pop    %edi
    3d2c:	5d                   	pop    %ebp
    3d2d:	c3                   	ret    
    if(p->s.size >= nunits){
    3d2e:	89 d0                	mov    %edx,%eax
    3d30:	89 fa                	mov    %edi,%edx
    3d32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    3d38:	39 ce                	cmp    %ecx,%esi
    3d3a:	74 54                	je     3d90 <malloc+0x100>
        p->s.size -= nunits;
    3d3c:	29 f1                	sub    %esi,%ecx
    3d3e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    3d41:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    3d44:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    3d47:	89 15 e0 5e 00 00    	mov    %edx,0x5ee0
}
    3d4d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    3d50:	83 c0 08             	add    $0x8,%eax
}
    3d53:	5b                   	pop    %ebx
    3d54:	5e                   	pop    %esi
    3d55:	5f                   	pop    %edi
    3d56:	5d                   	pop    %ebp
    3d57:	c3                   	ret    
    3d58:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3d5f:	90                   	nop
    base.s.ptr = freep = prevp = &base;
    3d60:	c7 05 e0 5e 00 00 e4 	movl   $0x5ee4,0x5ee0
    3d67:	5e 00 00 
    base.s.size = 0;
    3d6a:	bf e4 5e 00 00       	mov    $0x5ee4,%edi
    base.s.ptr = freep = prevp = &base;
    3d6f:	c7 05 e4 5e 00 00 e4 	movl   $0x5ee4,0x5ee4
    3d76:	5e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3d79:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
    3d7b:	c7 05 e8 5e 00 00 00 	movl   $0x0,0x5ee8
    3d82:	00 00 00 
    if(p->s.size >= nunits){
    3d85:	e9 32 ff ff ff       	jmp    3cbc <malloc+0x2c>
    3d8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    3d90:	8b 08                	mov    (%eax),%ecx
    3d92:	89 0a                	mov    %ecx,(%edx)
    3d94:	eb b1                	jmp    3d47 <malloc+0xb7>
