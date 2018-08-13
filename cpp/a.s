
a.out:     file format elf64-littleaarch64


Disassembly of section .init:

00000000004004e8 <_init>:
  4004e8:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  4004ec:	910003fd 	mov	x29, sp
  4004f0:	9400002e 	bl	4005a8 <call_weak_fn>
  4004f4:	a8c17bfd 	ldp	x29, x30, [sp],#16
  4004f8:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400500 <.plt>:
  400500:	a9bf7bf0 	stp	x16, x30, [sp,#-16]!
  400504:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1e6f8>
  400508:	f947fe11 	ldr	x17, [x16,#4088]
  40050c:	913fe210 	add	x16, x16, #0xff8
  400510:	d61f0220 	br	x17
  400514:	d503201f 	nop
  400518:	d503201f 	nop
  40051c:	d503201f 	nop

0000000000400520 <__libc_start_main@plt>:
  400520:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.17>
  400524:	f9400211 	ldr	x17, [x16]
  400528:	91000210 	add	x16, x16, #0x0
  40052c:	d61f0220 	br	x17

0000000000400530 <__gmon_start__@plt>:
  400530:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.17>
  400534:	f9400611 	ldr	x17, [x16,#8]
  400538:	91002210 	add	x16, x16, #0x8
  40053c:	d61f0220 	br	x17

0000000000400540 <abort@plt>:
  400540:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.17>
  400544:	f9400a11 	ldr	x17, [x16,#16]
  400548:	91004210 	add	x16, x16, #0x10
  40054c:	d61f0220 	br	x17

0000000000400550 <printf@plt>:
  400550:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.17>
  400554:	f9400e11 	ldr	x17, [x16,#24]
  400558:	91006210 	add	x16, x16, #0x18
  40055c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000400560 <_start>:
  400560:	d280001d 	mov	x29, #0x0                   	// #0
  400564:	d280001e 	mov	x30, #0x0                   	// #0
  400568:	910003fd 	mov	x29, sp
  40056c:	aa0003e5 	mov	x5, x0
  400570:	f94003e1 	ldr	x1, [sp]
  400574:	910023e2 	add	x2, sp, #0x8
  400578:	910003e6 	mov	x6, sp
  40057c:	580000a0 	ldr	x0, 400590 <_start+0x30>
  400580:	580000c3 	ldr	x3, 400598 <_start+0x38>
  400584:	580000e4 	ldr	x4, 4005a0 <_start+0x40>
  400588:	97ffffe6 	bl	400520 <__libc_start_main@plt>
  40058c:	97ffffed 	bl	400540 <abort@plt>
  400590:	004006c0 	.word	0x004006c0
  400594:	00000000 	.word	0x00000000
  400598:	004006ec 	.word	0x004006ec
  40059c:	00000000 	.word	0x00000000
  4005a0:	00400764 	.word	0x00400764
  4005a4:	00000000 	.word	0x00000000

00000000004005a8 <call_weak_fn>:
  4005a8:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1e6f8>
  4005ac:	f947f000 	ldr	x0, [x0,#4064]
  4005b0:	b4000040 	cbz	x0, 4005b8 <call_weak_fn+0x10>
  4005b4:	17ffffdf 	b	400530 <__gmon_start__@plt>
  4005b8:	d65f03c0 	ret
  4005bc:	00000000 	.inst	0x00000000 ; undefined

00000000004005c0 <deregister_tm_clones>:
  4005c0:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.17>
  4005c4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.17>
  4005c8:	9100a021 	add	x1, x1, #0x28
  4005cc:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  4005d0:	9100a000 	add	x0, x0, #0x28
  4005d4:	91001c21 	add	x1, x1, #0x7
  4005d8:	910003fd 	mov	x29, sp
  4005dc:	cb000021 	sub	x1, x1, x0
  4005e0:	f100383f 	cmp	x1, #0xe
  4005e4:	54000068 	b.hi	4005f0 <deregister_tm_clones+0x30>
  4005e8:	a8c17bfd 	ldp	x29, x30, [sp],#16
  4005ec:	d65f03c0 	ret
  4005f0:	58000081 	ldr	x1, 400600 <deregister_tm_clones+0x40>
  4005f4:	b4ffffa1 	cbz	x1, 4005e8 <deregister_tm_clones+0x28>
  4005f8:	d63f0020 	blr	x1
  4005fc:	17fffffb 	b	4005e8 <deregister_tm_clones+0x28>
	...

0000000000400608 <register_tm_clones>:
  400608:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.17>
  40060c:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.17>
  400610:	9100a000 	add	x0, x0, #0x28
  400614:	9100a021 	add	x1, x1, #0x28
  400618:	cb000021 	sub	x1, x1, x0
  40061c:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  400620:	9343fc21 	asr	x1, x1, #3
  400624:	910003fd 	mov	x29, sp
  400628:	8b41fc21 	add	x1, x1, x1, lsr #63
  40062c:	9341fc21 	asr	x1, x1, #1
  400630:	b5000061 	cbnz	x1, 40063c <register_tm_clones+0x34>
  400634:	a8c17bfd 	ldp	x29, x30, [sp],#16
  400638:	d65f03c0 	ret
  40063c:	580000a2 	ldr	x2, 400650 <register_tm_clones+0x48>
  400640:	b4ffffa2 	cbz	x2, 400634 <register_tm_clones+0x2c>
  400644:	d63f0040 	blr	x2
  400648:	17fffffb 	b	400634 <register_tm_clones+0x2c>
  40064c:	d503201f 	nop
	...

0000000000400658 <__do_global_dtors_aux>:
  400658:	a9be7bfd 	stp	x29, x30, [sp,#-32]!
  40065c:	910003fd 	mov	x29, sp
  400660:	f9000bf3 	str	x19, [sp,#16]
  400664:	90000113 	adrp	x19, 420000 <__libc_start_main@GLIBC_2.17>
  400668:	39409260 	ldrb	w0, [x19,#36]
  40066c:	35000080 	cbnz	w0, 40067c <__do_global_dtors_aux+0x24>
  400670:	97ffffd4 	bl	4005c0 <deregister_tm_clones>
  400674:	52800020 	mov	w0, #0x1                   	// #1
  400678:	39009260 	strb	w0, [x19,#36]
  40067c:	f9400bf3 	ldr	x19, [sp,#16]
  400680:	a8c27bfd 	ldp	x29, x30, [sp],#32
  400684:	d65f03c0 	ret

0000000000400688 <frame_dummy>:
  400688:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  40068c:	910003fd 	mov	x29, sp
  400690:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1e6f8>
  400694:	f946e801 	ldr	x1, [x0,#3536]
  400698:	91374000 	add	x0, x0, #0xdd0
  40069c:	b4000081 	cbz	x1, 4006ac <frame_dummy+0x24>
  4006a0:	580000c1 	ldr	x1, 4006b8 <frame_dummy+0x30>
  4006a4:	b4000041 	cbz	x1, 4006ac <frame_dummy+0x24>
  4006a8:	d63f0020 	blr	x1
  4006ac:	a8c17bfd 	ldp	x29, x30, [sp],#16
  4006b0:	17ffffd6 	b	400608 <register_tm_clones>
  4006b4:	d503201f 	nop
	...

00000000004006c0 <main>:
  4006c0:	a9be7bfd 	stp	x29, x30, [sp,#-32]!
  4006c4:	910003fd 	mov	x29, sp
  4006c8:	52800040 	mov	w0, #0x2                   	// #2
  4006cc:	b9001fa0 	str	w0, [x29,#28]
  4006d0:	90000000 	adrp	x0, 400000 <_init-0x4e8>
  4006d4:	911e2000 	add	x0, x0, #0x788
  4006d8:	b9401fa1 	ldr	w1, [x29,#28]
  4006dc:	97ffff9d 	bl	400550 <printf@plt>
  4006e0:	52800000 	mov	w0, #0x0                   	// #0
  4006e4:	a8c27bfd 	ldp	x29, x30, [sp],#32
  4006e8:	d65f03c0 	ret

00000000004006ec <__libc_csu_init>:
  4006ec:	a9bc7bfd 	stp	x29, x30, [sp,#-64]!
  4006f0:	910003fd 	mov	x29, sp
  4006f4:	a90153f3 	stp	x19, x20, [sp,#16]
  4006f8:	a90363f7 	stp	x23, x24, [sp,#48]
  4006fc:	f00000f4 	adrp	x20, 41f000 <__FRAME_END__+0x1e6f8>
  400700:	f00000f8 	adrp	x24, 41f000 <__FRAME_END__+0x1e6f8>
  400704:	91370318 	add	x24, x24, #0xdc0
  400708:	91372294 	add	x20, x20, #0xdc8
  40070c:	cb180294 	sub	x20, x20, x24
  400710:	9343fe94 	asr	x20, x20, #3
  400714:	a9025bf5 	stp	x21, x22, [sp,#32]
  400718:	2a0003f7 	mov	w23, w0
  40071c:	aa0103f6 	mov	x22, x1
  400720:	aa0203f5 	mov	x21, x2
  400724:	d2800013 	mov	x19, #0x0                   	// #0
  400728:	97ffff70 	bl	4004e8 <_init>
  40072c:	b4000134 	cbz	x20, 400750 <__libc_csu_init+0x64>
  400730:	f8737b03 	ldr	x3, [x24,x19,lsl #3]
  400734:	2a1703e0 	mov	w0, w23
  400738:	aa1603e1 	mov	x1, x22
  40073c:	aa1503e2 	mov	x2, x21
  400740:	d63f0060 	blr	x3
  400744:	91000673 	add	x19, x19, #0x1
  400748:	eb14027f 	cmp	x19, x20
  40074c:	54ffff21 	b.ne	400730 <__libc_csu_init+0x44>
  400750:	a94153f3 	ldp	x19, x20, [sp,#16]
  400754:	a9425bf5 	ldp	x21, x22, [sp,#32]
  400758:	a94363f7 	ldp	x23, x24, [sp,#48]
  40075c:	a8c47bfd 	ldp	x29, x30, [sp],#64
  400760:	d65f03c0 	ret

0000000000400764 <__libc_csu_fini>:
  400764:	d65f03c0 	ret

Disassembly of section .fini:

0000000000400768 <_fini>:
  400768:	a9bf7bfd 	stp	x29, x30, [sp,#-16]!
  40076c:	910003fd 	mov	x29, sp
  400770:	a8c17bfd 	ldp	x29, x30, [sp],#16
  400774:	d65f03c0 	ret
