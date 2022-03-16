    .thumb

    .global MapBgmOverrideHook
    .type MapBgmOverrideHook, function

MapBgmOverrideHook:
    @ jumpToHack at fe7u:08015E9C

    .Lcontinue_addr = 0x08015EA4 + 1
    .Lreturn_addr   = 0x08015F78 + 1

    push {r4-r7, lr}     @ replaced

    @ r0 = GetFlag(lMapBgmOverrideEnableFlag)

    ldr  r3, =GetFlag

    ldr  r0, =lMapBgmOverrideEnableFlag
    ldrb r0, [r0] @ arg r0 = flag

    bl   .Lcall_via_r3

    @ override if flag set

    cmp  r0, #0
    bne  .Lload_override

    ldr  r0, =gPlaySt    @ replaced
    mov  r1, #0          @ replaced
    ldrb r0, [r0, #0x1B] @ replaced

.Lcontinue:
    ldr  r3, =.Lcontinue_addr
.Lcall_via_r3:
    bx   r3

.Lload_override:
    @ load overridden song id and return

    ldr  r0, =lMapBgmOverrideSongAddr
    ldr  r0, [r0]
    ldrh r0, [r0]

.Lreturn:
    ldr  r3, =.Lreturn_addr
    bx   r3
