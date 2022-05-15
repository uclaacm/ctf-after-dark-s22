isCorrect(int):
        pushq   %rbp
        movq    %rsp, %rbp
        movl    %edi, -20(%rbp)
        movl    -20(%rbp), %eax
        leal    -255(%rax), %edx
        movl    %edx, %eax
        addl    %eax, %eax
        addl    %edx, %eax
        addl    $5, %eax
        movl    %eax, -4(%rbp)
        movl    -4(%rbp), %eax
        cmpl    -20(%rbp), %eax
        jge     .L2
        cmpl    $10390, -4(%rbp)
        jg      .L3
        movl    $0, %eax
        jmp     .L4
.L2:
        movl    -4(%rbp), %eax
        cmpl    -20(%rbp), %eax
        jle     .L5
        movl    $19402093, -8(%rbp)
        sall    -8(%rbp)
        movl    -4(%rbp), %eax
        cmpl    -8(%rbp), %eax
        jne     .L6
        movl    $1, %eax
        jmp     .L4
.L6:
        movl    $0, %eax
        jmp     .L4
.L5:
        cmpl    $19, -4(%rbp)
        jne     .L3
        movl    $0, %eax
        jmp     .L4
.L3:
        movl    $0, %eax
.L4:
        popq    %rbp
        ret