#include "types.h"
#include "unit.h"

struct Unit* GetUnit(int uid);
int AreUnitIdsAllied(int uid_a, int uid_b);
int CanUnitUseWeapon(struct Unit* unit, int item);
int GetItemMight(int item);
int AiCouldReachByBirdsEyeDistance(struct Unit* unit, struct Unit* other, int item);
void AiMakeMoveRangeMapsForUnitAndWeapon(struct Unit* unit, int item);
int GetUnitPower(struct Unit* unit);

extern u8 gActiveUnitId;
extern struct Unit* gActiveUnit;
extern struct Vec2 gMapSize;
extern u8** gMapRange;
extern u8** gMapOther;

void NuAiFillDangerMap(void)
{
    int i, j, ix, iy;

    for (i = 1; i < 0xC0; ++i)
    {
        struct Unit* unit = GetUnit(i);

        if (unit == NULL)
            continue;

        if (unit->pinfo == NULL)
            continue;

        if (unit->state & (US_HIDDEN | US_DEAD | US_NOT_DEPLOYED | US_BIT12))
            continue;

        if (AreUnitIdsAllied(gActiveUnitId, unit->id))
            continue;

        int item = 0;
        int might = 0;
        int item_tmp;

        for (j = 0; j < 5 && (item_tmp = unit->items[j]); ++j)
        {
            if (!CanUnitUseWeapon(unit, item_tmp))
                continue;

            int might_tmp = GetItemMight(item_tmp);

            if (might_tmp > might)
            {
                item = item_tmp;
                might = might_tmp;
            }
        }

        if (item == 0)
            continue;

        if (!AiCouldReachByBirdsEyeDistance(gActiveUnit, unit, item))
            continue;

        AiMakeMoveRangeMapsForUnitAndWeapon(unit, item);

        int unit_power = GetUnitPower(unit);

        for (iy = gMapSize.y-1; iy >= 0; --iy)
        {
            for (ix = gMapSize.x-1; ix >= 0; --ix)
            {
                if (gMapRange[iy][ix] == 0)
                    continue;

                gMapOther[iy][ix] += (unit_power + might) >> 1;
            }
        }
    }
}
