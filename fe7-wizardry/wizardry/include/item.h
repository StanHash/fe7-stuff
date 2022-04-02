#pragma once

#include "types.h"
#include "fwd.h"

enum
{
    ITEM_KIND_SWORD,
    ITEM_KIND_LANCE,
    ITEM_KIND_AXE,
    ITEM_KIND_BOW,
    ITEM_KIND_STAFF,
    ITEM_KIND_ANIMA,
    ITEM_KIND_LIGHT,
    ITEM_KIND_ELDER,

    ITEM_KIND_UNK8,
    ITEM_KIND_UNK9,
    ITEM_KIND_DRAGON,
    ITEM_KIND_UNK11,

    ITEM_KIND_INVALID = 0xFF,
};

enum
{
    // Item attribute flags

    ITEM_ATTR_WEAPON           = (1 << 0),
    ITEM_ATTR_MAGIC            = (1 << 1),
    ITEM_ATTR_STAFF            = (1 << 2),
    ITEM_ATTR_UNBREAKABLE      = (1 << 3),
    ITEM_ATTR_IMPORTANT        = (1 << 4),
    ITEM_ATTR_BRAVE            = (1 << 5),
    ITEM_ATTR_MAGICSWORD       = (1 << 6),
    ITEM_ATTR_7                = (1 << 7),
    ITEM_ATTR_REVERTS_TRIANGLE = (1 << 8),
    ITEM_ATTR_UNREPAIRABLE     = (1 << 9),
    ITEM_ATTR_LOCK_DRAGON      = (1 << 10),
    ITEM_ATTR_LOCK_ROY         = (1 << 11),
    ITEM_ATTR_LOCK_MYRM        = (1 << 12),
    ITEM_ATTR_13               = (1 << 13),
    ITEM_ATTR_DELPHI_SHIELD    = (1 << 14),
    ITEM_ATTR_IRON_RUNE        = (1 << 15),
    ITEM_ATTR_SEALED           = (1 << 16),
    ITEM_ATTR_LUNA             = (1 << 17),
    ITEM_ATTR_LOCK_ELIWOOD     = (1 << 18),
    ITEM_ATTR_LOCK_HECTOR      = (1 << 19),
    ITEM_ATTR_LOCK_LYN         = (1 << 20),
    ITEM_ATTR_LOCK_ATHOS       = (1 << 21),

    // Helpers
    ITEM_ATTR_REQUIRES_EXP = ITEM_ATTR_WEAPON + ITEM_ATTR_STAFF,
};

enum
{
    // Unit ranges are a (sometimes) weirdly hardcoded.
    // A bitset value is used to represent the combined ranges of a unit's usable items
    // That's what those "reaches" bits are for.

    REACH_NONE   = 0,

    REACH_RANGE1 = (1 << 0),
    REACH_RANGE2 = (1 << 1),
    REACH_RANGE3 = (1 << 2),
    REACH_TO10   = (1 << 3),
    REACH_TO15   = (1 << 4),
    REACH_TOMAG  = (1 << 5),
};

enum
{
    WEAPON_EFFECT_POISON = 1,
    WEAPON_EFFECT_NOSFERATU = 2,
    WEAPON_EFFECT_ECLIPSE = 3,
    WEAPON_EFFECT_DEVIL = 4,
};

struct ItemBonuses
{
    /* 00 */ i8 hp;
    /* 01 */ i8 pow;
    /* 02 */ i8 skl;
    /* 03 */ i8 spd;
    /* 04 */ i8 def;
    /* 05 */ i8 res;
    /* 06 */ i8 lck;
    /* 07 */ i8 mov; // dummy
    /* 08 */ i8 con; // dummy
};

struct ItemInfo
{
    /* 00 */ u16 msg_name;
    /* 02 */ u16 msg_desc;
    /* 04 */ u16 msg_desc_use;
    /* 06 */ u8 id;
    /* 07 */ u8 kind;
    /* 08 */ u32 attributes;
    /* 0C */ struct ItemBonuses const * bonuses;
    /* 10 */ u8 const * effectiveness;
    /* 14 */ u8 uses;
    /* 15 */ u8 might;
    /* 16 */ u8 hit;
    /* 17 */ u8 weight;
    /* 18 */ u8 crit;
    /* 19 */ u8 encoded_range;
    /* 1A */ u16 cost_per_use;
    /* 1C */ u8 required_wexp;
    /* 1D */ u8 icon;
    /* 1E */ u8 item_effect;
    /* 1F */ u8 weapon_effect;
    /* 20 */ u8 gained_wexp;
    /* 21 */ u8 pad_21[0x24 - 0x21];
};
