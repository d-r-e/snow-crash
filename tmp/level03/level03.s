
level03:	file format ELF32-i386

Disassembly of section .init:
_init:
 8048340:	53 	pushl	%ebx
 8048341:	83 ec 08 	subl	$8, %esp
 8048344:	e8 00 00 00 00 	calll	0 <_init+0x9>
 8048349:	5b 	popl	%ebx
 804834a:	81 c3 ab 1c 00 00 	addl	$7339, %ebx
 8048350:	8b 83 fc ff ff ff 	movl	-4(%ebx), %eax
 8048356:	85 c0 	testl	%eax, %eax
 8048358:	74 05 	je	5 <_init+0x1f>
 804835a:	e8 61 00 00 00 	calll	97 <system@@GLIBC_2.0+0x80483c0>
 804835f:	e8 1c 01 00 00 	calll	284 <frame_dummy>
 8048364:	e8 27 02 00 00 	calll	551 <__do_global_ctors_aux>
 8048369:	83 c4 08 	addl	$8, %esp
 804836c:	5b 	popl	%ebx
 804836d:	c3 	retl
Disassembly of section .plt:
.plt:
 8048370:	ff 35 f8 9f 04 08 	pushl	134520824
 8048376:	ff 25 fc 9f 04 08 	jmpl	*134520828
 804837c:	00 00 	addb	%al, (%eax)
 804837e:	00 00 	addb	%al, (%eax)
 8048380:	ff 25 00 a0 04 08 	jmpl	*134520832
 8048386:	68 00 00 00 00 	pushl	$0
 804838b:	e9 e0 ff ff ff 	jmp	-32 <.plt>
 8048390:	ff 25 04 a0 04 08 	jmpl	*134520836
 8048396:	68 08 00 00 00 	pushl	$8
 804839b:	e9 d0 ff ff ff 	jmp	-48 <.plt>
 80483a0:	ff 25 08 a0 04 08 	jmpl	*134520840
 80483a6:	68 10 00 00 00 	pushl	$16
 80483ab:	e9 c0 ff ff ff 	jmp	-64 <.plt>
 80483b0:	ff 25 0c a0 04 08 	jmpl	*134520844
 80483b6:	68 18 00 00 00 	pushl	$24
 80483bb:	e9 b0 ff ff ff 	jmp	-80 <.plt>
 80483c0:	ff 25 10 a0 04 08 	jmpl	*134520848
 80483c6:	68 20 00 00 00 	pushl	$32
 80483cb:	e9 a0 ff ff ff 	jmp	-96 <.plt>
 80483d0:	ff 25 14 a0 04 08 	jmpl	*134520852
 80483d6:	68 28 00 00 00 	pushl	$40
 80483db:	e9 90 ff ff ff 	jmp	-112 <.plt>
 80483e0:	ff 25 18 a0 04 08 	jmpl	*134520856
 80483e6:	68 30 00 00 00 	pushl	$48
 80483eb:	e9 80 ff ff ff 	jmp	-128 <.plt>
Disassembly of section .text:
_start:
 80483f0:	31 ed 	xorl	%ebp, %ebp
 80483f2:	5e 	popl	%esi
 80483f3:	89 e1 	movl	%esp, %ecx
 80483f5:	83 e4 f0 	andl	$-16, %esp
 80483f8:	50 	pushl	%eax
 80483f9:	54 	pushl	%esp
 80483fa:	52 	pushl	%edx
 80483fb:	68 80 85 04 08 	pushl	$134514048
 8048400:	68 10 85 04 08 	pushl	$134513936
 8048405:	51 	pushl	%ecx
 8048406:	56 	pushl	%esi
 8048407:	68 a4 84 04 08 	pushl	$134513828
 804840c:	e8 bf ff ff ff 	calll	-65 <.plt+0x60>
 8048411:	f4 	hlt
 8048412:	90 	nop
 8048413:	90 	nop
 8048414:	90 	nop
 8048415:	90 	nop
 8048416:	90 	nop
 8048417:	90 	nop
 8048418:	90 	nop
 8048419:	90 	nop
 804841a:	90 	nop
 804841b:	90 	nop
 804841c:	90 	nop
 804841d:	90 	nop
 804841e:	90 	nop
 804841f:	90 	nop

__do_global_dtors_aux:
 8048420:	55 	pushl	%ebp
 8048421:	89 e5 	movl	%esp, %ebp
 8048423:	53 	pushl	%ebx
 8048424:	83 ec 04 	subl	$4, %esp
 8048427:	80 3d 24 a0 04 08 00 	cmpb	$0, 134520868
 804842e:	75 3f 	jne	63 <__do_global_dtors_aux+0x4f>
 8048430:	a1 28 a0 04 08 	movl	134520872, %eax
 8048435:	bb 20 9f 04 08 	movl	$134520608, %ebx
 804843a:	81 eb 1c 9f 04 08 	subl	$134520604, %ebx
 8048440:	c1 fb 02 	sarl	$2, %ebx
 8048443:	83 eb 01 	subl	$1, %ebx
 8048446:	39 d8 	cmpl	%ebx, %eax
 8048448:	73 1e 	jae	30 <__do_global_dtors_aux+0x48>
 804844a:	8d b6 00 00 00 00 	leal	(%esi), %esi
 8048450:	83 c0 01 	addl	$1, %eax
 8048453:	a3 28 a0 04 08 	movl	%eax, 134520872
 8048458:	ff 14 85 1c 9f 04 08 	calll	*134520604(,%eax,4)
 804845f:	a1 28 a0 04 08 	movl	134520872, %eax
 8048464:	39 d8 	cmpl	%ebx, %eax
 8048466:	72 e8 	jb	-24 <__do_global_dtors_aux+0x30>
 8048468:	c6 05 24 a0 04 08 01 	movb	$1, 134520868
 804846f:	83 c4 04 	addl	$4, %esp
 8048472:	5b 	popl	%ebx
 8048473:	5d 	popl	%ebp
 8048474:	c3 	retl
 8048475:	8d 74 26 00 	leal	(%esi,%eiz), %esi
 8048479:	8d bc 27 00 00 00 00 	leal	(%edi,%eiz), %edi

frame_dummy:
 8048480:	55 	pushl	%ebp
 8048481:	89 e5 	movl	%esp, %ebp
 8048483:	83 ec 18 	subl	$24, %esp
 8048486:	a1 24 9f 04 08 	movl	134520612, %eax
 804848b:	85 c0 	testl	%eax, %eax
 804848d:	74 12 	je	18 <frame_dummy+0x21>
 804848f:	b8 00 00 00 00 	movl	$0, %eax
 8048494:	85 c0 	testl	%eax, %eax
 8048496:	74 09 	je	9 <frame_dummy+0x21>
 8048498:	c7 04 24 24 9f 04 08 	movl	$134520612, (%esp)
 804849f:	ff d0 	calll	*%eax
 80484a1:	c9 	leave
 80484a2:	c3 	retl
 80484a3:	90 	nop

main:
 80484a4:	55 	pushl	%ebp
 80484a5:	89 e5 	movl	%esp, %ebp
 80484a7:	83 e4 f0 	andl	$-16, %esp
 80484aa:	83 ec 20 	subl	$32, %esp
 80484ad:	e8 ee fe ff ff 	calll	-274 <.plt+0x30>
 80484b2:	89 44 24 18 	movl	%eax, 24(%esp)
 80484b6:	e8 d5 fe ff ff 	calll	-299 <.plt+0x20>
 80484bb:	89 44 24 1c 	movl	%eax, 28(%esp)
 80484bf:	8b 44 24 18 	movl	24(%esp), %eax
 80484c3:	89 44 24 08 	movl	%eax, 8(%esp)
 80484c7:	8b 44 24 18 	movl	24(%esp), %eax
 80484cb:	89 44 24 04 	movl	%eax, 4(%esp)
 80484cf:	8b 44 24 18 	movl	24(%esp), %eax
 80484d3:	89 04 24 	movl	%eax, (%esp)
 80484d6:	e8 05 ff ff ff 	calll	-251 <.plt+0x70>
 80484db:	8b 44 24 1c 	movl	28(%esp), %eax
 80484df:	89 44 24 08 	movl	%eax, 8(%esp)
 80484e3:	8b 44 24 1c 	movl	28(%esp), %eax
 80484e7:	89 44 24 04 	movl	%eax, 4(%esp)
 80484eb:	8b 44 24 1c 	movl	28(%esp), %eax
 80484ef:	89 04 24 	movl	%eax, (%esp)
 80484f2:	e8 89 fe ff ff 	calll	-375 <.plt+0x10>
 80484f7:	c7 04 24 e0 85 04 08 	movl	$134514144, (%esp)
 80484fe:	e8 ad fe ff ff 	calll	-339 <.plt+0x40>
 8048503:	c9 	leave
 8048504:	c3 	retl
 8048505:	90 	nop
 8048506:	90 	nop
 8048507:	90 	nop
 8048508:	90 	nop
 8048509:	90 	nop
 804850a:	90 	nop
 804850b:	90 	nop
 804850c:	90 	nop
 804850d:	90 	nop
 804850e:	90 	nop
 804850f:	90 	nop

__libc_csu_init:
 8048510:	55 	pushl	%ebp
 8048511:	57 	pushl	%edi
 8048512:	56 	pushl	%esi
 8048513:	53 	pushl	%ebx
 8048514:	e8 69 00 00 00 	calll	105 <__i686.get_pc_thunk.bx>
 8048519:	81 c3 db 1a 00 00 	addl	$6875, %ebx
 804851f:	83 ec 1c 	subl	$28, %esp
 8048522:	8b 6c 24 30 	movl	48(%esp), %ebp
 8048526:	8d bb 20 ff ff ff 	leal	-224(%ebx), %edi
 804852c:	e8 0f fe ff ff 	calll	-497 <_init>
 8048531:	8d 83 20 ff ff ff 	leal	-224(%ebx), %eax
 8048537:	29 c7 	subl	%eax, %edi
 8048539:	c1 ff 02 	sarl	$2, %edi
 804853c:	85 ff 	testl	%edi, %edi
 804853e:	74 29 	je	41 <__libc_csu_init+0x59>
 8048540:	31 f6 	xorl	%esi, %esi
 8048542:	8d b6 00 00 00 00 	leal	(%esi), %esi
 8048548:	8b 44 24 38 	movl	56(%esp), %eax
 804854c:	89 2c 24 	movl	%ebp, (%esp)
 804854f:	89 44 24 08 	movl	%eax, 8(%esp)
 8048553:	8b 44 24 34 	movl	52(%esp), %eax
 8048557:	89 44 24 04 	movl	%eax, 4(%esp)
 804855b:	ff 94 b3 20 ff ff ff 	calll	*-224(%ebx,%esi,4)
 8048562:	83 c6 01 	addl	$1, %esi
 8048565:	39 fe 	cmpl	%edi, %esi
 8048567:	75 df 	jne	-33 <__libc_csu_init+0x38>
 8048569:	83 c4 1c 	addl	$28, %esp
 804856c:	5b 	popl	%ebx
 804856d:	5e 	popl	%esi
 804856e:	5f 	popl	%edi
 804856f:	5d 	popl	%ebp
 8048570:	c3 	retl
 8048571:	eb 0d 	jmp	13 <__libc_csu_fini>
 8048573:	90 	nop
 8048574:	90 	nop
 8048575:	90 	nop
 8048576:	90 	nop
 8048577:	90 	nop
 8048578:	90 	nop
 8048579:	90 	nop
 804857a:	90 	nop
 804857b:	90 	nop
 804857c:	90 	nop
 804857d:	90 	nop
 804857e:	90 	nop
 804857f:	90 	nop

__libc_csu_fini:
 8048580:	f3 c3 	rep		retl

__i686.get_pc_thunk.bx:
 8048582:	8b 1c 24 	movl	(%esp), %ebx
 8048585:	c3 	retl
 8048586:	90 	nop
 8048587:	90 	nop
 8048588:	90 	nop
 8048589:	90 	nop
 804858a:	90 	nop
 804858b:	90 	nop
 804858c:	90 	nop
 804858d:	90 	nop
 804858e:	90 	nop
 804858f:	90 	nop

__do_global_ctors_aux:
 8048590:	55 	pushl	%ebp
 8048591:	89 e5 	movl	%esp, %ebp
 8048593:	53 	pushl	%ebx
 8048594:	83 ec 04 	subl	$4, %esp
 8048597:	a1 14 9f 04 08 	movl	134520596, %eax
 804859c:	83 f8 ff 	cmpl	$-1, %eax
 804859f:	74 13 	je	19 <__do_global_ctors_aux+0x24>
 80485a1:	bb 14 9f 04 08 	movl	$134520596, %ebx
 80485a6:	66 90 	nop
 80485a8:	83 eb 04 	subl	$4, %ebx
 80485ab:	ff d0 	calll	*%eax
 80485ad:	8b 03 	movl	(%ebx), %eax
 80485af:	83 f8 ff 	cmpl	$-1, %eax
 80485b2:	75 f4 	jne	-12 <__do_global_ctors_aux+0x18>
 80485b4:	83 c4 04 	addl	$4, %esp
 80485b7:	5b 	popl	%ebx
 80485b8:	5d 	popl	%ebp
 80485b9:	c3 	retl
 80485ba:	90 	nop
 80485bb:	90 	nop
Disassembly of section .fini:
_fini:
 80485bc:	53 	pushl	%ebx
 80485bd:	83 ec 08 	subl	$8, %esp
 80485c0:	e8 00 00 00 00 	calll	0 <_fini+0x9>
 80485c5:	5b 	popl	%ebx
 80485c6:	81 c3 2f 1a 00 00 	addl	$6703, %ebx
 80485cc:	e8 4f fe ff ff 	calll	-433 <__do_global_dtors_aux>
 80485d1:	83 c4 08 	addl	$8, %esp
 80485d4:	5b 	popl	%ebx
 80485d5:	c3 	retl
