	.file	"main.cpp"
	.section	.text._ZN6HAS_CDC1Ev,"axG",@progbits,_ZN6HAS_CDC1Ev,comdat
	.align 2
	.weak	_ZN6HAS_CDC1Ev
	.type	_ZN6HAS_CDC1Ev, @function
_ZN6HAS_CDC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	popl	%ebp
	ret
	.size	_ZN6HAS_CDC1Ev, .-_ZN6HAS_CDC1Ev
	.section	.text._ZN6HAS_CDD1Ev,"axG",@progbits,_ZN6HAS_CDD1Ev,comdat
	.align 2
	.weak	_ZN6HAS_CDD1Ev
	.type	_ZN6HAS_CDD1Ev, @function
_ZN6HAS_CDD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	popl	%ebp
	ret
	.size	_ZN6HAS_CDD1Ev, .-_ZN6HAS_CDD1Ev
	.section	.text._ZN10POD_HAS_CDC1Ev,"axG",@progbits,_ZN10POD_HAS_CDC1Ev,comdat
	.align 2
	.weak	_ZN10POD_HAS_CDC1Ev
	.type	_ZN10POD_HAS_CDC1Ev, @function
_ZN10POD_HAS_CDC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	ret
	.size	_ZN10POD_HAS_CDC1Ev, .-_ZN10POD_HAS_CDC1Ev
	.section	.text._ZN10POD_HAS_CDD1Ev,"axG",@progbits,_ZN10POD_HAS_CDD1Ev,comdat
	.align 2
	.weak	_ZN10POD_HAS_CDD1Ev
	.type	_ZN10POD_HAS_CDD1Ev, @function
_ZN10POD_HAS_CDD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	popl	%ebp
	ret
	.size	_ZN10POD_HAS_CDD1Ev, .-_ZN10POD_HAS_CDD1Ev
	.section	.text._ZN9HAS_NO_CDC1Ev,"axG",@progbits,_ZN9HAS_NO_CDC1Ev,comdat
	.align 2
	.weak	_ZN9HAS_NO_CDC1Ev
	.type	_ZN9HAS_NO_CDC1Ev, @function
_ZN9HAS_NO_CDC1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_ZN6HAS_CDC1Ev
	leave
	ret
	.size	_ZN9HAS_NO_CDC1Ev, .-_ZN9HAS_NO_CDC1Ev
	.section	.text._ZN9HAS_NO_CDD1Ev,"axG",@progbits,_ZN9HAS_NO_CDD1Ev,comdat
	.align 2
	.weak	_ZN9HAS_NO_CDD1Ev
	.type	_ZN9HAS_NO_CDD1Ev, @function
_ZN9HAS_NO_CDD1Ev:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_ZN6HAS_CDD1Ev
	leave
	ret
	.size	_ZN9HAS_NO_CDD1Ev, .-_ZN9HAS_NO_CDD1Ev
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	pushl	%ebx
	subl	$204, %esp
#APP
# 42 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	leal	152(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN6HAS_CDC1Ev
#APP
# 44 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	$8, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	_ZN6HAS_CDC1Ev
	movl	%ebx, 188(%esp)
#APP
# 46 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	$8, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	_ZN6HAS_CDC1Ev
	movl	%ebx, 184(%esp)
#APP
# 48 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	152(%esp), %eax
	movl	%eax, 144(%esp)
	movl	156(%esp), %eax
	movl	%eax, 148(%esp)
#APP
# 50 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	188(%esp), %eax
	movl	(%eax), %edx
	movl	%edx, 136(%esp)
	movl	4(%eax), %eax
	movl	%eax, 140(%esp)
#APP
# 52 "./main.cpp" 1
	nop
# 0 "" 2
# 55 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	$8, (%esp)
	call	_Znwj
	movl	%eax, 180(%esp)
#APP
# 57 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	$8, (%esp)
	call	_Znwj
	movl	%eax, %edx
	movl	%edx, %eax
	movl	$0, (%eax)
	movw	$0, 4(%eax)
	movb	$0, 6(%eax)
	movl	%edx, 176(%esp)
#APP
# 59 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	180(%esp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, 120(%esp)
	movl	%edx, 124(%esp)
#APP
# 61 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	176(%esp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, 112(%esp)
	movl	%edx, 116(%esp)
#APP
# 63 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	leal	104(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN10POD_HAS_CDC1Ev
#APP
# 66 "./main.cpp" 1
	nop
# 0 "" 2
# 68 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	104(%esp), %eax
	movl	%eax, 88(%esp)
	movzwl	108(%esp), %eax
	movw	%ax, 92(%esp)
	movzbl	110(%esp), %eax
	movb	%al, 94(%esp)
#APP
# 70 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	$8, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	_ZN10POD_HAS_CDC1Ev
	movl	%ebx, 172(%esp)
#APP
# 72 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	$8, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	_ZN10POD_HAS_CDC1Ev
	movl	%ebx, 168(%esp)
#APP
# 74 "./main.cpp" 1
	nop
# 0 "" 2
# 77 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	76(%esp), %eax
	movl	%eax, 64(%esp)
	movl	80(%esp), %eax
	movl	%eax, 68(%esp)
	movl	84(%esp), %eax
	movl	%eax, 72(%esp)
#APP
# 79 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN9HAS_NO_CDC1Ev
#APP
# 82 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	$16, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	_ZN9HAS_NO_CDC1Ev
	movl	%ebx, 164(%esp)
#APP
# 84 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	$16, (%esp)
	call	_Znwj
	movl	%eax, %ebx
	movl	%ebx, %eax
	movl	$0, (%eax)
	movb	$0, 4(%eax)
	movw	$0, 6(%eax)
	movl	$0, 8(%eax)
	movb	$0, 12(%eax)
	movw	$0, 14(%eax)
	movl	%eax, (%esp)
	call	_ZN9HAS_NO_CDC1Ev
	movl	%ebx, 160(%esp)
#APP
# 86 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	160(%esp), %eax
	movl	(%eax), %edx
	movl	%edx, 32(%esp)
	movl	4(%eax), %edx
	movl	%edx, 36(%esp)
	movl	8(%eax), %edx
	movl	%edx, 40(%esp)
	movl	12(%eax), %eax
	movl	%eax, 44(%esp)
#APP
# 88 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	160(%esp), %eax
	movl	(%eax), %edx
	movl	%edx, 16(%esp)
	movl	4(%eax), %edx
	movl	%edx, 20(%esp)
	movl	8(%eax), %edx
	movl	%edx, 24(%esp)
	movl	12(%eax), %eax
	movl	%eax, 28(%esp)
#APP
# 90 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	$5, %ebx
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN9HAS_NO_CDD1Ev
	leal	32(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN9HAS_NO_CDD1Ev
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN9HAS_NO_CDD1Ev
	leal	88(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN10POD_HAS_CDD1Ev
	leal	96(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN10POD_HAS_CDD1Ev
	leal	104(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN10POD_HAS_CDD1Ev
	leal	136(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN6HAS_CDD1Ev
	leal	144(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN6HAS_CDD1Ev
	leal	152(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN6HAS_CDD1Ev
	movl	%ebx, %eax
	addl	$204, %esp
	popl	%ebx
	movl	%ebp, %esp
	popl	%ebp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
