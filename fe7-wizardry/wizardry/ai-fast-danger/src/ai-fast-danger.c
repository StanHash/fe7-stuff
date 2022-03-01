#include "attr.h"
#include "types.h"
#include "unit.h"

int AreUnitIdsAllied(int uid_a, int uid_b) SHORTCALL CONSTFUNC;
int CanUnitUseWeapon(struct Unit* unit, int item) SHORTCALL CONSTFUNC;
int GetItemMight(int item) SHORTCALL CONSTFUNC;
int AiCouldReachByBirdsEyeDistance(struct Unit* unit, struct Unit* other, int item) SHORTCALL CONSTFUNC;
void AiMakeMoveRangeMapsForUnitAndWeapon(struct Unit* unit, int item) SHORTCALL;
int GetUnitPower(struct Unit* unit) SHORTCALL CONSTFUNC;

extern u8 gActiveUnitId;
extern struct Unit* gActiveUnit;
extern struct Vec2 gMapSize;
extern u8** gMapRange;
extern u8** gMapOther;

extern struct Unit* const UnitLut[];

OPTIMIZE(2)
void NuAiFillDangerMap(void)
{
    int i, j, ix, iy;

    int map_size_x_m1 = gMapSize.x - 1;
    int map_size_y_m1 = gMapSize.y - 1;
    int active_unit_id = gActiveUnitId;

    for (i = 1; i < 0xC0; ++i)
    {
        struct Unit* unit = UnitLut[i];

        if (unit == NULL)
            continue;

        if (unit->pinfo == NULL)
            continue;

        if (unit->flags & (UNIT_FLAG_HIDDEN | UNIT_FLAG_DEAD | UNIT_FLAG_NOT_DEPLOYED | UNIT_FLAG_BIT12))
            continue;

        if (AreUnitIdsAllied(active_unit_id, (u8) unit->id))
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
        int danger_gain = (unit_power + might) >> 1;

        for (iy = map_size_y_m1; iy >= 0; --iy)
        {
            u8* map_range_row = gMapRange[iy];
            u8* map_other_row = gMapOther[iy];

            for (ix = map_size_x_m1; ix >= 0; --ix)
            {
                if (map_range_row[ix] == 0)
                    continue;

                map_other_row[ix] += danger_gain;
            }
        }
    }
}
