    .thumb

    .global StatusImmuneBossesBattleOutputStatusHook
    .type StatusImmuneBossesBattleOutputStatusHook, function

StatusImmuneBossesBattleOutputStatusHook:
    @ hook at fe7-us:08029C44

    @ input:
    @ r4 = unit
    @ r5 = bu

    @ output:
    @ r0 = output status (negative for none)
    @ return to fe7-us:08029C4C

    @ replaced by hook:
    @ mov  r1, r5
    @ add  r1, #0x6F
    @ mov  r0, #0
    @ ldsb r0, [r1, r0]

    .LStatusImmuneBossesBattleOutputStatusHook.return_location = 0x08029C4D

    ldr  r0, [r4, #0x00] @ r0 = unit->pinfo
    ldr  r1, [r4, #0x04] @ r1 = unit->jinfo
    ldr  r0, [r0, #0x28] @ r0 = unit->pinfo->attributes
    ldr  r1, [r1, #0x28] @ r1 = unit->jinfo->attributes
    orr  r0, r1          @ r0 = UNIT_ATTRIBUTES(unit)

    mov  r1, #1
    lsl  r1, #15         @ r1 = UNIT_ATTR_BOSS

    tst  r0, r1
    bne  .LStatusImmuneBossesBattleOutputStatusHook.is_boss

    mov  r1, #0x6F
    ldsb r0, [r5, r1]    @ r0 = bu->output_status

.LStatusImmuneBossesBattleOutputStatusHook.end_hook:
    ldr  r3, =.LStatusImmuneBossesBattleOutputStatusHook.return_location
    bx   r3

.LStatusImmuneBossesBattleOutputStatusHook.is_boss:
    mvn  r0, r1          @ r0 = ~UNIT_ATTR_BOSS, which is negative

    b    .LStatusImmuneBossesBattleOutputStatusHook.end_hook

    .pool

    .global StatusImmuneBossesStaffOutputStatusHook
    .type StatusImmuneBossesStaffOutputStatusHook, function

StatusImmuneBossesStaffOutputStatusHook:
    @ hook at fe7-us:0802D25C

    @ input:
    @ r0 = bu

    @ output:
    @ r0 = output status (negative for none)
    @ r4 = &bu->output_status (if output_status not negative)
    @ return to fe7-us:0802D264

    @ replaced by hook:
    @ mov  r4, r0
    @ add  r4, #0x6F
    @ mov  r0, #0
    @ ldsb r0, [r4, r0]

    .LStatusImmuneBossesStaffOutputStatusHook.return_location = 0x0802D265

    ldr  r1, [r0, #0x00] @ r1 = unit->pinfo
    ldr  r2, [r0, #0x04] @ r2 = unit->jinfo
    ldr  r1, [r1, #0x28] @ r1 = unit->pinfo->attributes
    ldr  r2, [r2, #0x28] @ r2 = unit->jinfo->attributes
    orr  r1, r2          @ r1 = UNIT_ATTRIBUTES(unit)

    mov  r2, #1
    lsl  r2, #15         @ r2 = UNIT_ATTR_BOSS

    tst  r1, r2
    bne  .LStatusImmuneBossesStaffOutputStatusHook.is_boss

    mov  r4, r0
    add  r4, #0x6F
    ldsb r0, [r4, r1]    @ r0 = bu->output_status

.LStatusImmuneBossesStaffOutputStatusHook.end_hook:
    ldr  r3, =.LStatusImmuneBossesStaffOutputStatusHook.return_location
    bx   r3

.LStatusImmuneBossesStaffOutputStatusHook.is_boss:
    mvn  r0, r2          @ r0 = ~UNIT_ATTR_BOSS, which is negative

    b    .LStatusImmuneBossesStaffOutputStatusHook.end_hook
