#pragma once

#include "types.h"

enum
{
    US_HIDDEN       = (1 << 0),
    US_TURN_ENDED   = (1 << 1),
    US_DEAD         = (1 << 2),
    US_NOT_DEPLOYED = (1 << 3),
    US_RESCUING     = (1 << 4),
    US_RESCUED      = (1 << 5),
    US_HAS_MOVED    = (1 << 6), // Bad name?
    US_UNDER_A_ROOF = (1 << 7),
    US_BIT8         = (1 << 8), // has been seen?
    US_BIT9         = (1 << 9), // hidden by fog?
    US_HAS_MOVED_AI = (1 << 10),

    US_BIT12        = 0x1000, // unk, checked by vanilla AiFillDangerMap

    US_SOLOANIM_1   = (1 << 14),
    US_SOLOANIM_2   = (1 << 15),

    // Helpers
    US_UNAVAILABLE = (US_DEAD | US_NOT_DEPLOYED),
};

struct PInfo
{
    /* 00 */ u16 msg_name;
    /* 02 */ u16 msg_desc;
    /* 04 */ u8 id;
    /* 05 */ u8 jid_default;
    /* 06 */ u16 fid;
    /* 08 */ u8 chibi_id;
    /* 09 */ u8 affinity;
    /* 0A */ u8 unk_0A;

    /* 0B */ i8 base_level;
    /* 0C */ i8 base_hp;
    /* 0D */ i8 base_pow;
    /* 0E */ i8 base_skl;
    /* 0F */ i8 base_spd;
    /* 10 */ i8 base_def;
    /* 11 */ i8 base_res;
    /* 12 */ i8 base_lck;
    /* 13 */ i8 bonus_con;

    /* 14 */ u8 wexp[8];

    /* 1C */ u8 growth_hp;
    /* 1D */ u8 growth_pow;
    /* 1E */ u8 growth_skl;
    /* 1F */ u8 growth_spd;
    /* 20 */ u8 growth_def;
    /* 21 */ u8 growth_res;
    /* 22 */ u8 growth_lck;

    /* 23 */ u8 banim_pal_a;
    /* 24 */ u8 banim_pal_b;
    /* 25 */ // pad

    /* 28 */ u32 attributes;

    /* 2C */ struct SupportInfo const* support_info;
};

struct JInfo
{
    /* 00 */ u16 msg_name;
    /* 02 */ u16 msg_desc;
    /* 04 */ u8 id;
    /* 05 */ u8 jid_promote;
    /* 06 */ u8 map_sprite;
    /* 07 */ u8 walk_speed;
    /* 08 */ u16 fid;
    /* 0A */ u8 unk_0A;

    /* 0B */ i8 base_hp;
    /* 0C */ i8 base_pow;
    /* 0D */ i8 base_skl;
    /* 0E */ i8 base_spd;
    /* 0F */ i8 base_def;
    /* 10 */ i8 base_res;
    /* 11 */ i8 base_con;
    /* 12 */ i8 base_mov;

    /* 13 */ i8 max_hp;
    /* 14 */ i8 max_pow;
    /* 15 */ i8 max_skl;
    /* 16 */ i8 max_spd;
    /* 17 */ i8 max_def;
    /* 18 */ i8 max_res;
    /* 19 */ i8 max_con;

    /* 1A */ i8 power_level;

    /* 1B */ i8 growth_hp;
    /* 1C */ i8 growth_pow;
    /* 1D */ i8 growth_skl;
    /* 1E */ i8 growth_spd;
    /* 1F */ i8 growth_def;
    /* 20 */ i8 growth_res;
    /* 21 */ i8 growth_lck;
    /* 22 */ // pad

    /* 24 */ u32 attributes;

    /* 28 */ u8 wexp[8];

    /* 30 */ void const* banim_info;

    /* 34 */ i8 const* mov_table;
    /* 38 */ i8 const* avo_terrain_table;
    /* 3C */ i8 const* def_terrain_table;
    /* 40 */ i8 const* res_terrain_table;

    /* 44 */ void const* unk_44;
};

struct Unit
{
    /* 00 */ struct PInfo const* pinfo;
    /* 04 */ struct JInfo const* jinfo;
    /* 08 */ i8 level;
    /* 09 */ u8 exp;
    /* 0A */ u8 ai_flags;
    /* 0B */ i8 id;
    /* 0C */ u32 state;
    /* 10 */ i8 x;
    /* 11 */ i8 y;
    /* 12 */ i8 max_hp;
    /* 13 */ i8 hp;
    /* 14 */ i8 pow;
    /* 15 */ i8 skl;
    /* 16 */ i8 spd;
    /* 17 */ i8 def;
    /* 18 */ i8 res;
    /* 19 */ i8 lck;
    /* 1A */ i8 bonus_con;
    /* 1B */ u8 rescue;
    /* 1C */ u8 ballista_trap;
    /* 1D */ i8 bonus_mov;
    /* 1E */ u16 items[5];
    /* 28 */ u8 wexp[8];
    /* 30 */ u8 status : 4;
    /* 30 */ u8 status_duration : 4;
    /* 31 */ u8 torch : 4;
    /* 31 */ u8 barrier : 4;
    /* 32 */ u8 supports[7];
    /* 39 */ u8 support_bits;
    /* 3A */ // pad?
    /* 3C */ struct UnitSprite* map_sprite;
    /* 40 */ u16 ai_config;
    /* 42 */ u8 ai_a;
    /* 43 */ u8 ai_a_pc;
    /* 44 */ u8 ai_b;
    /* 45 */ u8 ai_b_pc;
    /* 46 */ u8 unk_46;
    /* 47 */ // pad?
    /* 48 */ // end
};
