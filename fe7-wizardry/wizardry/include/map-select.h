#pragma once

#include "types.h"
#include "fwd.h"

struct SelectTarget
{
    /* 00 */ i8 x, y;
    /* 02 */ i8 uid;
    /* 03 */ i8 extra;

    /* 04 */ struct SelectTarget * next;
    /* 08 */ struct SelectTarget * prev;
};

struct MapSelectInfo
{
    /* 00 */ void(*on_init)(struct MapSelectProc * proc);
    /* 04 */ void(*on_end)(struct MapSelectProc * proc);

    /* 08 */ void(*unk_08)(struct MapSelectProc * proc, struct SelectTarget * target);

    /* 0C */ void(*on_switch_in)(struct MapSelectProc * proc, struct SelectTarget * target);
    /* 10 */ void(*on_switch_out)(struct MapSelectProc * proc, struct SelectTarget * target);

    /* 14 */ int(*on_a_press)(struct MapSelectProc * proc, struct SelectTarget * target);
    /* 18 */ int(*on_b_press)(struct MapSelectProc * proc, struct SelectTarget * target);
    /* 1C */ int(*on_r_press)(struct MapSelectProc * proc, struct SelectTarget * target);
};
