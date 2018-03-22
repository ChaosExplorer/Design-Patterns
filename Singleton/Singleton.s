	.file	"Singleton.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN9SingletonC2Ei,"axG",@progbits,_ZN9SingletonC5Ei,comdat
	.align 2
	.weak	_ZN9SingletonC2Ei
	.type	_ZN9SingletonC2Ei, @function
_ZN9SingletonC2Ei:
.LFB972:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE972:
	.size	_ZN9SingletonC2Ei, .-_ZN9SingletonC2Ei
	.weak	_ZN9SingletonC1Ei
	.set	_ZN9SingletonC1Ei,_ZN9SingletonC2Ei
	.section	.text._ZN9Singleton8instanceEv,"axG",@progbits,_ZN9Singleton8instanceEv,comdat
	.weak	_ZN9Singleton8instanceEv
	.type	_ZN9Singleton8instanceEv, @function
_ZN9Singleton8instanceEv:
.LFB974:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$_ZN9Singleton3insE, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE974:
	.size	_ZN9Singleton8instanceEv, .-_ZN9Singleton8instanceEv
	.section	.text._ZN9Singleton8getValueEv,"axG",@progbits,_ZN9Singleton8getValueEv,comdat
	.align 2
	.weak	_ZN9Singleton8getValueEv
	.type	_ZN9Singleton8getValueEv, @function
_ZN9Singleton8getValueEv:
.LFB975:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE975:
	.size	_ZN9Singleton8getValueEv, .-_ZN9Singleton8getValueEv
	.globl	_ZN9Singleton3insE
	.bss
	.align 4
	.type	_ZN9Singleton3insE, @object
	.size	_ZN9Singleton3insE, 4
_ZN9Singleton3insE:
	.zero	4
	.text
	.globl	main
	.type	main, @function
main:
.LFB977:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	_ZN9Singleton8instanceEv
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9Singleton8getValueEv
	movl	%eax, %esi
	movl	$_ZSt4cout, %edi
	call	_ZNSolsEi
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE977:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB983:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L8
	cmpl	$65535, -8(%rbp)
	jne	.L8
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
	movl	$66, %esi
	movl	$_ZN9Singleton3insE, %edi
	call	_ZN9SingletonC1Ei
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE983:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN9Singleton3insE, @function
_GLOBAL__sub_I__ZN9Singleton3insE:
.LFB984:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE984:
	.size	_GLOBAL__sub_I__ZN9Singleton3insE, .-_GLOBAL__sub_I__ZN9Singleton3insE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN9Singleton3insE
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-16)"
	.section	.note.GNU-stack,"",@progbits
