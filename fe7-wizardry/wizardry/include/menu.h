#pragma once

#include "types.h"
#include "fwd.h"

enum
{
    MENU_ENABLED  = 1,
    MENU_DISABLED = 2,
    MENU_NOTSHOWN = 3,
};

enum
{
    MENU_ACT_SKIPCURSOR = (1 << 0),
    MENU_ACT_END        = (1 << 1),
    MENU_ACT_SE_BEEP    = (1 << 2),
    MENU_ACT_SE_BOOP    = (1 << 3),
    MENU_ACT_CLEAR      = (1 << 4),
    MENU_ACT_ENDFACE    = (1 << 5),
    MENU_ACT_UNUSED6    = (1 << 6),
    MENU_ACT_DOOM       = (1 << 7),
};

struct MenuRect
{
    /* 00 */ i8 x, y, w, h;
};

struct MenuEntInfo
{
    /* 00 */ char const * name;

    /* 04 */ u8 pad_04[0x0C - 0x04];

    /* 0C */ int(*available)(struct MenuEntInfo const * info, int id);

    /* 10 */ int(*on_draw)(struct MenuProc * menu, struct MenuEntProc * ent);

    /* 14 */ int(*on_select)(struct MenuProc *, struct MenuEntProc * ent);
    /* 18 */ int(*on_idle)(struct MenuProc *, struct MenuEntProc * ent);

    /* 1C */ int(*on_switch_in)(struct MenuProc * menu, struct MenuEntProc * ent);
    /* 20 */ int(*on_switch_out)(struct MenuProc * menu, struct MenuEntProc * ent);
};

struct MenuInfo
{
    /* 00 */ struct MenuRect rect;
    /* 04 */ u8 style;
    /* 08 */ struct MenuEntInfo const * entries;

    /* 0C */ void(*on_init)(struct MenuProc * menu);
    /* 10 */ void(*on_end)(struct MenuProc * menu);
    /* 14 */ void(*unk_14)(struct MenuProc * menu);
    /* 18 */ int(*on_b_press)(struct MenuProc *, struct MenuEntProc * ent);
    /* 1C */ int(*on_r_press)(struct MenuProc * menu);
    /* 20 */ void(*on_help_box)(struct MenuProc * menu, struct MenuEntProc * ent);
};
