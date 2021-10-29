#pragma once

#include "types.h"
#include "fwd.h"

struct BmSt
{
    /* 00 */ bool main_loop_ended;
    /* 01 */ i8 lock;
    /* 02 */ i8 lock_display;
    /* 03 */ u8 pad_03;
    /* 04 */ u8 flags;
    /* 05 */ // pad
    /* 06 */ u16 main_loop_end_scanline;
    /* 08 */ int pad_08;
    /* 0C */ struct Vec2 camera;
    /* 10 */ struct Vec2 camera_previous;
    /* 14 */ struct Vec2 cursor;
    /* 18 */ struct Vec2 cursor_previous;
    /* 1C */ struct Vec2 cursor_sprite_target;
    /* 20 */ struct Vec2 cursor_sprite;
    /* 24 */ struct Vec2 map_render_anchor;
    /* 28 */ struct Vec2 camera_max;
    /* 2C */ u16 inventory_item_overflow;
    /* 2E */ u16 convoy_item_overflow;
    /* 30 */ bool unk_30;
    /* 31 */ bool unk_31;
    /* 32 */ short unk_32;
    /* 34 */ short unk_34;
    /* 36 */ i8 unk_36;
    /* 37 */ i8 unk_37;
    /* 38 */ u8 alt_blend_a_ca;
    /* 39 */ u8 alt_blend_a_cb;
    /* 3A */ u8 alt_blend_b_ca;
    /* 3B */ u8 alt_blend_b_cb;
    /* 3C */ u8 unk_3C;
    /* 3D */ u8 partial_actions_taken;
    /* 3E */ u8 unk_3E;
    /* 3F */ i8 unk_3F;
};

struct PlaySt
{
    // TODO: this is fe6 layout. update.

    /* 00 */ u32 saved_time;
    /* 04 */ u32 chapter_start_time;
    /* 08 */ int gold;
    /* 0C */ u8 save_slot;
    /* 0D */ u8 vision;
    /* 0E */ i8 chapter;
    /* 0F */ u8 faction;
    /* 10 */ u16 turn;
    /* 12 */ u8 x_cursor, y_cursor;
    /* 14 */ u8 flags;
    /* 15 */ u8 weather;
    /* 16 */ u16 support_gain;
    /* 18 */ u8 playthrough_id;
    /* 19 */ u8 ending_id:4;
    /* 1A */ u8 last_sort_id;
    /* 1B */ u8 unk_1B;

    /* 1C */ // option bits
    u32 unk_1C_1:1;
    u32 unk_1C_2:1;
    u32 unk_1C_3:2;
    u32 config_no_auto_cursor:1;
    u32 config_talk_speed:2;
    u32 config_walk_speed:1;
    u32 config_bgm_disable:1;
    u32 config_se_disable:1;
    u32 config_window_color:2;
    u32 unk_1D_5:1;
    u32 unk_1D_6:1;
    u32 config_no_auto_end_turn:1;
    u32 config_no_subtitle_help:1;
    u32 config_battle_anim:2;
    u32 config_battle_preview_kind:2;
    u32 unk_1E_5:1;
    u32 unk_1E_6:1;
    u32 debug_control_red:2;
    u32 debug_control_green:2;
    u32 unk_1F_3:6;
};
