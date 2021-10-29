#include "types.h"
#include "proc.h"
#include "text.h"
#include "bm.h"

struct GoalWindowProc
{
    /* 00 */ PROC_HEADER;
    /* 29 */ u8 pad_29[0x2C - 0x29];
    /* 2C */ struct Text text_a;
    /* 34 */ struct Text text_b;
    /* 3C */ u8 pad_3C[0x44 - 0x3C];
    /* 44 */ i16 line_display;
    /* 46 */ u8 pad_46[0x4C - 0x46];
    /* 4C */ i8 unk_4C;
    /* 4D */ i8 unk_4D;
    /* 4E */ i8 unk_4E;
    /* 4F */ i8 unk_4F;
    /* 50 */ i8 unk_50;
    /* 51 */ u8 pad_51[0x55 - 0x51];
    /* 55 */ i8 unk_55;
    /* 56 */ i8 unk_56;
    /* 57 */ i8 unk_57;
    /* 58 */ int clock;
};

enum
{
    GOAL_WINDOW_DISPLAY_1_LINE,
    GOAL_WINDOW_DISPLAY_2_LINE,
};

extern u32 GetGameTime(void);
extern bool FormatTime(u32 time, u16* hours, u16* minutes, u16* seconds);
extern ProcPtr SpawnProc(struct ProcScr const* scr, ProcPtr parent);
extern void ClearText(struct Text* text);
extern void Text_SetCursor(struct Text* text, int x);
extern void Text_DrawNumber(struct Text* text, int number);
extern char const* Text_DrawCharacter(struct Text* text, char const* str);
extern int __umodsi3(int a, int b);
extern int __udivsi3(int a, int b);

extern struct PlaySt gPlaySt;

struct UpdateTimeTextProc
{
    /* 00 */ PROC_HEADER;
    /* 29 */ u8 x;
    /* 2A */ u16 clock;
    /* 2C */ struct Text* text;
};

static void DrawNumber2Chars(struct Text* text, unsigned int number)
{
    char digit_a = '0' + __umodsi3(number, 10);
    char digit_b = '0' + __udivsi3(number, 10);

    Text_DrawCharacter(text, &digit_a);
    text->x -= 15;
    Text_DrawCharacter(text, &digit_b);
    text->x -= 15;
}

void RS_UpdateTimeText_Redraw(struct UpdateTimeTextProc* proc)
{
    int x = proc->x;
    struct Text* text = proc->text;

    ClearText(text);

    u16 hours;
    u16 minutes;
    u16 seconds;

    FormatTime(GetGameTime() - gPlaySt.chapter_start_time, &hours, &minutes, &seconds);

    Text_SetCursor(text, x +  0); Text_DrawNumber(text, hours);
    Text_SetCursor(text, x +  9); Text_DrawCharacter(text, ":");
    Text_SetCursor(text, x + 21); DrawNumber2Chars(text, minutes);
    Text_SetCursor(text, x + 30); Text_DrawCharacter(text, ":");
    Text_SetCursor(text, x + 42); DrawNumber2Chars(text, seconds);
}

void RS_UpdateTimeText_OnLoop(struct UpdateTimeTextProc* proc)
{
    proc->clock += 1;

    if (proc->clock == 60)
    {
        proc->clock = 0;
        RS_UpdateTimeText_Redraw(proc);
    }
}

struct ProcScr const ProcScr_RS_UpdateTimeText[] =
{
    PROC_REPEAT(RS_UpdateTimeText_OnLoop),
};

void RS_StartUpdateTimeText(struct Text* text, int x, ProcPtr parent)
{
    struct UpdateTimeTextProc* proc = SpawnProc(ProcScr_RS_UpdateTimeText, parent);

    proc->x = x;
    proc->clock = 0;
    proc->text = text;

    RS_UpdateTimeText_Redraw(proc);
}

void RS_NuChapterGoalWindowDraw(struct GoalWindowProc* proc)
{
    proc->line_display = GOAL_WINDOW_DISPLAY_1_LINE;
    RS_StartUpdateTimeText(&proc->text_a, 20, proc);
}
