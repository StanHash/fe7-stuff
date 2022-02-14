    .thumb

    .macro blh to, reg=r3
        ldr \reg, =\to
        mov lr, \reg
        .short 0xf800
    .endm

    gPlaySt = 0x0202BBF8
    SpawnProc = 0x08004494+1

    .global DisableMiniMapHook
    .type DisableMiniMapHook, function

DisableMiniMapHook:
    push {r4}

    @ var r0 = proc scr

    ldr  r4, =DisableMinimapList
    ldr  r3, =gPlaySt

lop:
    ldrb r1, [r4, #0] @ r2 = list entry

    cmp  r1, #0xFF
    beq  do_show @ 0xFF is terminator

    ldrb r2, [r3, #0x0E] @ r3 = current chapter id

    cmp  r2, r1
    beq  do_not_show

    add  r4, #1
    b    lop

do_show:
    ldr  r3, =SpawnProc

    @ implied   @ arg r0 = proc scr
    mov  r1, #3 @ arg r1 = parent proc

    bl   bx_r3

do_not_show:
end:
    pop {r4}
    pop {r3}
bx_r3:
    bx  r3
