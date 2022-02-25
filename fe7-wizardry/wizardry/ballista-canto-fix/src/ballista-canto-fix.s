    .thumb

    gActiveUnit = 0x03004690

    .global GetUnitAttackBallistaCommandAvailabilityHook
    .type GetUnitAttackBallistaCommandAvailabilityHook, function

GetUnitAttackBallistaCommandAvailabilityHook:
    continue_addr = 0x08023600+1
    return_3_addr = 0x08023638+1

    push  {r4-r5, lr}      @ replaced
    ldr   r5, =gActiveUnit @ replaced @ r5 = &gActiveUnit
    ldr   r2, [r5]         @ replaced @ r2 = gActiveUnit
    ldr   r0, [r2, #0x0C]  @ replaced @ r0 = unit->flags

    mov   r1, #0x40        @ 0x00000040 = UNIT_FLAG_HAS_MOVED
    tst   r0, r1
    bne   .Lreturn_unavailable

    @ if the unit hasn't moved yet, continue with the other checks normally

    ldr   r3, =continue_addr
    bx    r3

.Lreturn_unavailable:
    @ if the unit has moved (and thus must be in canto state), disable this command

    ldr   r3, =return_3_addr
    bx    r3

    .pool
