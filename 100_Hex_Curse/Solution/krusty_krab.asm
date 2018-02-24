
krusty_krab:     file format elf64-x86-64


Disassembly of section .init:

00000000000005b8 <_init>:
 5b8:	48 83 ec 08          	sub    rsp,0x8
 5bc:	48 8b 05 25 0a 20 00 	mov    rax,QWORD PTR [rip+0x200a25]        # 200fe8 <__gmon_start__>
 5c3:	48 85 c0             	test   rax,rax
 5c6:	74 02                	je     5ca <_init+0x12>
 5c8:	ff d0                	call   rax
 5ca:	48 83 c4 08          	add    rsp,0x8
 5ce:	c3                   	ret    

Disassembly of section .plt:

00000000000005d0 <.plt>:
 5d0:	ff 35 32 0a 20 00    	push   QWORD PTR [rip+0x200a32]        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 5d6:	ff 25 34 0a 20 00    	jmp    QWORD PTR [rip+0x200a34]        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 5dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000005e0 <putchar@plt>:
 5e0:	ff 25 32 0a 20 00    	jmp    QWORD PTR [rip+0x200a32]        # 201018 <putchar@GLIBC_2.2.5>
 5e6:	68 00 00 00 00       	push   0x0
 5eb:	e9 e0 ff ff ff       	jmp    5d0 <.plt>

00000000000005f0 <puts@plt>:
 5f0:	ff 25 2a 0a 20 00    	jmp    QWORD PTR [rip+0x200a2a]        # 201020 <puts@GLIBC_2.2.5>
 5f6:	68 01 00 00 00       	push   0x1
 5fb:	e9 d0 ff ff ff       	jmp    5d0 <.plt>

0000000000000600 <printf@plt>:
 600:	ff 25 22 0a 20 00    	jmp    QWORD PTR [rip+0x200a22]        # 201028 <printf@GLIBC_2.2.5>
 606:	68 02 00 00 00       	push   0x2
 60b:	e9 c0 ff ff ff       	jmp    5d0 <.plt>

0000000000000610 <__isoc99_scanf@plt>:
 610:	ff 25 1a 0a 20 00    	jmp    QWORD PTR [rip+0x200a1a]        # 201030 <__isoc99_scanf@GLIBC_2.7>
 616:	68 03 00 00 00       	push   0x3
 61b:	e9 b0 ff ff ff       	jmp    5d0 <.plt>

Disassembly of section .plt.got:

0000000000000620 <__cxa_finalize@plt>:
 620:	ff 25 d2 09 20 00    	jmp    QWORD PTR [rip+0x2009d2]        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 626:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000000630 <_start>:
 630:	31 ed                	xor    ebp,ebp
 632:	49 89 d1             	mov    r9,rdx
 635:	5e                   	pop    rsi
 636:	48 89 e2             	mov    rdx,rsp
 639:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
 63d:	50                   	push   rax
 63e:	54                   	push   rsp
 63f:	4c 8d 05 ba 02 00 00 	lea    r8,[rip+0x2ba]        # 900 <__libc_csu_fini>
 646:	48 8d 0d 43 02 00 00 	lea    rcx,[rip+0x243]        # 890 <__libc_csu_init>
 64d:	48 8d 3d e2 01 00 00 	lea    rdi,[rip+0x1e2]        # 836 <main>
 654:	ff 15 86 09 20 00    	call   QWORD PTR [rip+0x200986]        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 65a:	f4                   	hlt    
 65b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000660 <deregister_tm_clones>:
 660:	48 8d 3d e1 09 20 00 	lea    rdi,[rip+0x2009e1]        # 201048 <__TMC_END__>
 667:	55                   	push   rbp
 668:	48 8d 05 d9 09 20 00 	lea    rax,[rip+0x2009d9]        # 201048 <__TMC_END__>
 66f:	48 39 f8             	cmp    rax,rdi
 672:	48 89 e5             	mov    rbp,rsp
 675:	74 19                	je     690 <deregister_tm_clones+0x30>
 677:	48 8b 05 5a 09 20 00 	mov    rax,QWORD PTR [rip+0x20095a]        # 200fd8 <_ITM_deregisterTMCloneTable>
 67e:	48 85 c0             	test   rax,rax
 681:	74 0d                	je     690 <deregister_tm_clones+0x30>
 683:	5d                   	pop    rbp
 684:	ff e0                	jmp    rax
 686:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 68d:	00 00 00 
 690:	5d                   	pop    rbp
 691:	c3                   	ret    
 692:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 696:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 69d:	00 00 00 

00000000000006a0 <register_tm_clones>:
 6a0:	48 8d 3d a1 09 20 00 	lea    rdi,[rip+0x2009a1]        # 201048 <__TMC_END__>
 6a7:	48 8d 35 9a 09 20 00 	lea    rsi,[rip+0x20099a]        # 201048 <__TMC_END__>
 6ae:	55                   	push   rbp
 6af:	48 29 fe             	sub    rsi,rdi
 6b2:	48 89 e5             	mov    rbp,rsp
 6b5:	48 c1 fe 03          	sar    rsi,0x3
 6b9:	48 89 f0             	mov    rax,rsi
 6bc:	48 c1 e8 3f          	shr    rax,0x3f
 6c0:	48 01 c6             	add    rsi,rax
 6c3:	48 d1 fe             	sar    rsi,1
 6c6:	74 18                	je     6e0 <register_tm_clones+0x40>
 6c8:	48 8b 05 21 09 20 00 	mov    rax,QWORD PTR [rip+0x200921]        # 200ff0 <_ITM_registerTMCloneTable>
 6cf:	48 85 c0             	test   rax,rax
 6d2:	74 0c                	je     6e0 <register_tm_clones+0x40>
 6d4:	5d                   	pop    rbp
 6d5:	ff e0                	jmp    rax
 6d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
 6de:	00 00 
 6e0:	5d                   	pop    rbp
 6e1:	c3                   	ret    
 6e2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 6e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 6ed:	00 00 00 

00000000000006f0 <__do_global_dtors_aux>:
 6f0:	80 3d 51 09 20 00 00 	cmp    BYTE PTR [rip+0x200951],0x0        # 201048 <__TMC_END__>
 6f7:	75 2f                	jne    728 <__do_global_dtors_aux+0x38>
 6f9:	48 83 3d f7 08 20 00 	cmp    QWORD PTR [rip+0x2008f7],0x0        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 700:	00 
 701:	55                   	push   rbp
 702:	48 89 e5             	mov    rbp,rsp
 705:	74 0c                	je     713 <__do_global_dtors_aux+0x23>
 707:	48 8b 3d 32 09 20 00 	mov    rdi,QWORD PTR [rip+0x200932]        # 201040 <__dso_handle>
 70e:	e8 0d ff ff ff       	call   620 <__cxa_finalize@plt>
 713:	e8 48 ff ff ff       	call   660 <deregister_tm_clones>
 718:	c6 05 29 09 20 00 01 	mov    BYTE PTR [rip+0x200929],0x1        # 201048 <__TMC_END__>
 71f:	5d                   	pop    rbp
 720:	c3                   	ret    
 721:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
 728:	f3 c3                	repz ret 
 72a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000000730 <frame_dummy>:
 730:	55                   	push   rbp
 731:	48 89 e5             	mov    rbp,rsp
 734:	5d                   	pop    rbp
 735:	e9 66 ff ff ff       	jmp    6a0 <register_tm_clones>

000000000000073a <curse>:
 73a:	55                   	push   rbp
 73b:	48 89 e5             	mov    rbp,rsp
 73e:	48 81 ec 90 01 00 00 	sub    rsp,0x190
 745:	48 89 bd 78 fe ff ff 	mov    QWORD PTR [rbp-0x188],rdi
 74c:	48 8d 95 d0 fe ff ff 	lea    rdx,[rbp-0x130]
 753:	48 8d 05 e6 01 00 00 	lea    rax,[rip+0x1e6]        # 940 <_IO_stdin_used+0x20>
 75a:	b9 22 00 00 00       	mov    ecx,0x22
 75f:	48 89 d7             	mov    rdi,rdx
 762:	48 89 c6             	mov    rsi,rax
 765:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
 768:	48 89 f0             	mov    rax,rsi
 76b:	48 89 fa             	mov    rdx,rdi
 76e:	8b 08                	mov    ecx,DWORD PTR [rax]
 770:	89 0a                	mov    DWORD PTR [rdx],ecx
 772:	48 8d 52 04          	lea    rdx,[rdx+0x4]
 776:	48 8d 40 04          	lea    rax,[rax+0x4]
 77a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
 781:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
 788:	eb 49                	jmp    7d3 <curse+0x99>
 78a:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
 791:	eb 2d                	jmp    7c0 <curse+0x86>
 793:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 796:	48 63 d0             	movsxd rdx,eax
 799:	48 8b 85 78 fe ff ff 	mov    rax,QWORD PTR [rbp-0x188]
 7a0:	48 01 d0             	add    rax,rdx
 7a3:	0f b6 10             	movzx  edx,BYTE PTR [rax]
 7a6:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 7a9:	48 98                	cdqe   
 7ab:	88 94 05 80 fe ff ff 	mov    BYTE PTR [rbp+rax*1-0x180],dl
 7b2:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
 7b6:	83 7d fc 44          	cmp    DWORD PTR [rbp-0x4],0x44
 7ba:	7f 0c                	jg     7c8 <curse+0x8e>
 7bc:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
 7c0:	83 7d f4 0c          	cmp    DWORD PTR [rbp-0xc],0xc
 7c4:	7e cd                	jle    793 <curse+0x59>
 7c6:	eb 01                	jmp    7c9 <curse+0x8f>
 7c8:	90                   	nop
 7c9:	83 7d fc 44          	cmp    DWORD PTR [rbp-0x4],0x44
 7cd:	7f 0c                	jg     7db <curse+0xa1>
 7cf:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
 7d3:	83 7d f8 06          	cmp    DWORD PTR [rbp-0x8],0x6
 7d7:	7e b1                	jle    78a <curse+0x50>
 7d9:	eb 01                	jmp    7dc <curse+0xa2>
 7db:	90                   	nop
 7dc:	48 8d 85 80 fe ff ff 	lea    rax,[rbp-0x180]
 7e3:	48 89 c7             	mov    rdi,rax
 7e6:	e8 05 fe ff ff       	call   5f0 <puts@plt>
 7eb:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
 7f2:	eb 2f                	jmp    823 <curse+0xe9>
 7f4:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
 7f7:	48 98                	cdqe   
 7f9:	8b 84 85 d0 fe ff ff 	mov    eax,DWORD PTR [rbp+rax*4-0x130]
 800:	89 c2                	mov    edx,eax
 802:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
 805:	48 98                	cdqe   
 807:	0f b6 84 05 80 fe ff 	movzx  eax,BYTE PTR [rbp+rax*1-0x180]
 80e:	ff 
 80f:	31 d0                	xor    eax,edx
 811:	88 45 ef             	mov    BYTE PTR [rbp-0x11],al
 814:	0f be 45 ef          	movsx  eax,BYTE PTR [rbp-0x11]
 818:	89 c7                	mov    edi,eax
 81a:	e8 c1 fd ff ff       	call   5e0 <putchar@plt>
 81f:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
 823:	83 7d f0 44          	cmp    DWORD PTR [rbp-0x10],0x44
 827:	7e cb                	jle    7f4 <curse+0xba>
 829:	bf 0a 00 00 00       	mov    edi,0xa
 82e:	e8 ad fd ff ff       	call   5e0 <putchar@plt>
 833:	90                   	nop
 834:	c9                   	leave  
 835:	c3                   	ret    

0000000000000836 <main>:
 836:	55                   	push   rbp
 837:	48 89 e5             	mov    rbp,rsp
 83a:	48 83 ec 20          	sub    rsp,0x20
 83e:	48 8d 3d 0f 02 00 00 	lea    rdi,[rip+0x20f]        # a54 <_IO_stdin_used+0x134>
 845:	e8 a6 fd ff ff       	call   5f0 <puts@plt>
 84a:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 84e:	48 89 c6             	mov    rsi,rax
 851:	48 8d 3d 0b 02 00 00 	lea    rdi,[rip+0x20b]        # a63 <_IO_stdin_used+0x143>
 858:	b8 00 00 00 00       	mov    eax,0x0
 85d:	e8 ae fd ff ff       	call   610 <__isoc99_scanf@plt>
 862:	48 8d 45 e0          	lea    rax,[rbp-0x20]
 866:	48 89 c6             	mov    rsi,rax
 869:	48 8d 3d f6 01 00 00 	lea    rdi,[rip+0x1f6]        # a66 <_IO_stdin_used+0x146>
 870:	b8 00 00 00 00       	mov    eax,0x0
 875:	e8 86 fd ff ff       	call   600 <printf@plt>
 87a:	b8 00 00 00 00       	mov    eax,0x0
 87f:	c9                   	leave  
 880:	c3                   	ret    
 881:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 888:	00 00 00 
 88b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000890 <__libc_csu_init>:
 890:	41 57                	push   r15
 892:	41 56                	push   r14
 894:	41 89 ff             	mov    r15d,edi
 897:	41 55                	push   r13
 899:	41 54                	push   r12
 89b:	4c 8d 25 46 05 20 00 	lea    r12,[rip+0x200546]        # 200de8 <__frame_dummy_init_array_entry>
 8a2:	55                   	push   rbp
 8a3:	48 8d 2d 46 05 20 00 	lea    rbp,[rip+0x200546]        # 200df0 <__init_array_end>
 8aa:	53                   	push   rbx
 8ab:	49 89 f6             	mov    r14,rsi
 8ae:	49 89 d5             	mov    r13,rdx
 8b1:	4c 29 e5             	sub    rbp,r12
 8b4:	48 83 ec 08          	sub    rsp,0x8
 8b8:	48 c1 fd 03          	sar    rbp,0x3
 8bc:	e8 f7 fc ff ff       	call   5b8 <_init>
 8c1:	48 85 ed             	test   rbp,rbp
 8c4:	74 20                	je     8e6 <__libc_csu_init+0x56>
 8c6:	31 db                	xor    ebx,ebx
 8c8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
 8cf:	00 
 8d0:	4c 89 ea             	mov    rdx,r13
 8d3:	4c 89 f6             	mov    rsi,r14
 8d6:	44 89 ff             	mov    edi,r15d
 8d9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
 8dd:	48 83 c3 01          	add    rbx,0x1
 8e1:	48 39 dd             	cmp    rbp,rbx
 8e4:	75 ea                	jne    8d0 <__libc_csu_init+0x40>
 8e6:	48 83 c4 08          	add    rsp,0x8
 8ea:	5b                   	pop    rbx
 8eb:	5d                   	pop    rbp
 8ec:	41 5c                	pop    r12
 8ee:	41 5d                	pop    r13
 8f0:	41 5e                	pop    r14
 8f2:	41 5f                	pop    r15
 8f4:	c3                   	ret    
 8f5:	90                   	nop
 8f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 8fd:	00 00 00 

0000000000000900 <__libc_csu_fini>:
 900:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000000904 <_fini>:
 904:	48 83 ec 08          	sub    rsp,0x8
 908:	48 83 c4 08          	add    rsp,0x8
 90c:	c3                   	ret    
