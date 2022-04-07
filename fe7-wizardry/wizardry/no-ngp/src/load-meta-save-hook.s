    .thumb
    .syntax unified

    @ jumpToHack at fe7u:809E566

    .global LoadMetaSaveHook
    .type   LoadMetaSaveHook, function
LoadMetaSaveHook:

    @ r0 = please do not touch
    @ r5 = save meta buf

    movs   r1, 0xF7
    strb   r1, [r5, 0x0E]

    movs   r1, 0x80
    strb   r1, [r5, 0x14]
    adds   r1, 1
    strb   r1, [r5, 0x15]
    adds   r1, 1
    strb   r1, [r5, 0x16]
    adds   r1, 1
    strb   r1, [r5, 0x17]
    adds   r1, 1
    strb   r1, [r5, 0x18]
    adds   r1, 1
    strb   r1, [r5, 0x19]
    adds   r1, 1
    strb   r1, [r5, 0x1A]
    adds   r1, 1
    strb   r1, [r5, 0x1B]
    adds   r1, 1
    strb   r1, [r5, 0x1C]
    adds   r1, 1
    strb   r1, [r5, 0x1D]
    adds   r1, 1
    strb   r1, [r5, 0x1E]
    adds   r1, 1
    strb   r1, [r5, 0x1F]

    add    sp, 0x64 @ replaced
    pop    {r4-r5}  @ replaced
    pop    {r1}     @ replaced
    bx     r1       @ replaced
