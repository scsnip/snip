	.file	"main.cpp"
	.section	.text._ZN4RefCC1Ei,"axG",@progbits,_ZN4RefCC1Ei,comdat
	.align 2
	.weak	_ZN4RefCC1Ei
	.type	_ZN4RefCC1Ei, @function
_ZN4RefCC1Ei:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	leal	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	addl	$1, %edx
	movl	%edx, (%eax)
	popl	%ebp
	ret
	.size	_ZN4RefCC1Ei, .-_ZN4RefCC1Ei
	.section	.text._ZN4ValCC1Ei,"axG",@progbits,_ZN4ValCC1Ei,comdat
	.align 2
	.weak	_ZN4ValCC1Ei
	.type	_ZN4ValCC1Ei, @function
_ZN4ValCC1Ei:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	popl	%ebp
	ret
	.size	_ZN4ValCC1Ei, .-_ZN4ValCC1Ei
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$48, %esp
	movl	$1, 44(%esp)
	movl	$2, 40(%esp)
	movl	$3, 36(%esp)
	addl	$1, 44(%esp)
	addl	$1, 40(%esp)
#APP
# 22 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	leal	32(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN4RefCC1Ei
#APP
# 25 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN4ValCC1Ei
#APP
# 28 "./main.cpp" 1
	nop
# 0 "" 2
#NO_APP
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
