#include "bm.h"
#include "unit.h"

extern struct PlaySt gPlaySt;
extern struct Unit * GetUnit(int id);

static struct Unit * GetFirstGoodPlayerUnit(void)
{
    int i;

    for (i = 1; i < 0x40; i++)
    {
        struct Unit * unit = GetUnit(i);

        if (unit == NULL)
            continue;

        if (unit->pinfo == NULL)
            continue;

        if (unit->state & (UNIT_FLAG_DEAD | UNIT_FLAG_NOT_DEPLOYED | UNIT_FLAG_AWAY))
            continue;

        if (unit->x < 0)
            continue;

        return unit;
    }

    return GetUnit(1);
}

struct Unit * NuggetStatusSceenLeaderUnit(void)
{
    return GetFirstGoodPlayerUnit();
}

void NuggetPlayerInitialCursorPosition(int * x_out, int * y_out)
{
    if (gPlaySt.turn == 1)
    {
        struct Unit * unit = GetFirstGoodPlayerUnit();

        gPlaySt.x_cursor = unit->x;
        gPlaySt.y_cursor = unit->y;
    }

    if (!gPlaySt.config_no_auto_cursor)
    {
        struct Unit * unit = GetFirstGoodPlayerUnit();

        *x_out = unit->x;
        *y_out = unit->y;
    }
    else
    {
        *x_out = gPlaySt.x_cursor;
        *y_out = gPlaySt.y_cursor;
    }
}
