#pragma once

#include "types.h"
#include "fwd.h"

enum
{
    // TODO
    ACTION_NONE,
};

struct Action
{
    /* 00 */ u16 action_rand_st[3];
    /* 06 */ u16 arena_begin_rand_st[3];
    /* 0C */ u8 instigator;
    /* 0D */ u8 target;
    /* 0E */ u8 x_move, y_move;
    /* 10 */ u8 move_count;
    /* 11 */ u8 id;
    /* 12 */ u8 item_slot;
    /* 13 */ u8 x_target, y_target;
    /* 15 */ u8 extra;
    /* 16 */ u8 suspendPoint;
};
