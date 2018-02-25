.text          /* start of the text (code) section */ 
.global main 

main:
    @ 66 31 34 36
    mov   r0, #0x66	
    mov   r1, #0xFF
    lsl   r0, r0, #8
    mov  r12, #0x31
    eor   r0, r12
    lsl   r0, r0, #8
    mov  r12, #0x34
    eor   r0, r12
    lsl   r0, r0, #8
    mov  r12, #0x36
    eor   r0, r12

    @ 7b 35 30 6d
    mov   r1, #0x7b	
    mov   r2, #0xFF
    lsl   r1, r1, #8
    mov  r12, #0x35
    eor   r1, r12
    lsl   r1, r1, #8
    mov  r12, #0x30
    eor   r1, r12
    lsl   r1, r1, #8
    mov  r12, #0x6d
    eor   r1, r12

    @ 33 37 31 6d
    mov   r2, #0x33	
    mov   r3, #0xFF
    lsl   r2, r2, #8
    mov  r12, #0x37
    eor   r2, r12
    lsl   r2, r2, #8
    mov  r12, #0x31
    eor   r2, r12
    lsl   r2, r2, #8
    mov  r12, #0x6d
    eor   r2, r12

    @ 33 35 5f 79 
    mov   r3, #0x33	
    mov   r4, #0xFF
    lsl   r3, r3, #8
    mov  r12, #0x35
    eor   r3, r12
    lsl   r3, r3, #8
    mov  r12, #0x5f
    eor   r3, r12
    lsl   r3, r3, #8
    mov  r12, #0x79
    eor   r3, r12

    @ 30 75 5f 68
    mov   r4, #0x30	
    mov   r5, #0xFF
    lsl   r4, r4, #8
    mov  r12, #0x75
    eor   r4, r12
    lsl   r4, r4, #8
    mov  r12, #0x5f
    eor   r4, r12
    lsl   r4, r4, #8
    mov  r12, #0x68
    eor   r4, r12

    @ 34 76 33 5f
    mov   r5, #0x34	
    mov   r6, #0xFF
    lsl   r5, r5, #8
    mov  r12, #0x76
    eor   r5, r12
    lsl   r5, r5, #8
    mov  r12, #0x33
    eor   r5, r12
    lsl   r5, r5, #8
    mov  r12, #0x5f
    eor   r5, r12

    @ 37 30 5f 6c
    mov   r6, #0x37	
    mov   r7, #0xFF
    lsl   r6, r6, #8
    mov  r12, #0x30
    eor   r6, r12
    lsl   r6, r6, #8
    mov  r12, #0x5f
    eor   r6, r12
    lsl   r6, r6, #8
    mov  r12, #0x6c
    eor   r6, r12

    @ 30 30 6b 5f
    mov   r7, #0x30	
    mov   r8, #0xFF
    lsl   r7, r7, #8
    mov  r12, #0x30
    eor   r7, r12
    lsl   r7, r7, #8
    mov  r12, #0x6b
    eor   r7, r12
    lsl   r7, r7, #8
    mov  r12, #0x5f
    eor   r7, r12

    @ 34 37 5f 37
    mov   r8, #0x34	
    mov   r9, #0xFF
    lsl   r8, r8, #8
    mov  r12, #0x37
    eor   r8, r12
    lsl   r8, r8, #8
    mov  r12, #0x5f
    eor   r8, r12
    lsl   r8, r8, #8
    mov  r12, #0x37
    eor   r8, r12

    @ 68 33 5f 72
    mov   r9, #0x68
    mov   r10, #0xFF
    lsl   r9, r9, #8
    mov  r12, #0x33
    eor   r9, r12
    lsl   r9, r9, #8
    mov  r12, #0x5f
    eor   r9, r12
    lsl   r9, r9, #8
    mov  r12, #0x72
    eor   r9, r12

    @ 33 36 31 35
    mov  r10, #0x33
    mov  r11, #0xFF
    lsl  r10, r10, #8
    mov  r12, #0x36
    eor  r10, r12
    lsl  r10, r10, #8
    mov  r12, #0x31
    eor  r10, r12
    lsl  r10, r10, #8
    mov  r12, #0x35
    eor  r10, r12

    @ 37 33 72 35
    mov  r11, #0x37
    lsl  r11, r11, #8
    mov  r12, #0x33
    eor  r11, r12
    lsl  r11, r11, #8
    mov  r12, #0x72
    eor  r11, r12
    lsl  r11, r11, #8
    mov  r12, #0x35
    eor  r11, r12

    @ 7d
    mov r12, #0x7d

    push  {ip, lr}
    ldr   r0, =message
    bl    printf
    mov   r0, #0
    pop   {ip, pc}

message:
    .asciz "Now where did I leave that flag?\n"


