/// FUNCTION 1 ///
thing1:
	push   %rbp
	mov    %rsp, %rbp
	sub    $0x10, %rsp
	mov    %edi, -0x4(%rbp)
	mov    %esi,-0x8(%rbp)
	mov    -0x8(%rbp),%eax
	mov    %eax,%edi
	callq  <thing2>
	cmp    $0x4,%eax
	jg     .L1
.L0:
    mov    -0x8(%rbp),%eax
    mov    %eax,%edi
    callq  <thing3>
    jmp     .L2
.L1:
    mov    -0x4(%rbp),%eax
    mov    %eax,%edi
    callq  <thing3>
.L2:			
    leaveq
    retq

/// FUNCTION 2 ///
thing2:
	push   %rbp
	mov    %rsp, %rbp
	sub    $0x10, %rsp
	mov    %edi, -0x4(%rbp)
	cmpl   $0x0,-0x4(%rbp)
	je     .L3
	mov    -0x4(%rbp),%eax
	sub    $0x1,%eax
	mov    %eax,%edi
	callq  <thing2>
	mov    -0x4(%rbp),%edx
	add    %edx,%eax
	jmp    .L4
.L3:
    mov    -0x4(%rbp),%eax
.L4:
    leaveq
    retq

/// FUNCTION 3 ///  
thing3:
    push   %rbp
    mov    %rsp,%rbp
	mov    %edi,-0x4(%rbp)
	cmpl   $0x18,-0x4(%rbp)
	jg     .L5
	mov    $0x0,%eax
	jmp    .L6
.L5:
    mov    $0x1,%eax
.L6:
    pop    %rbp
    retq