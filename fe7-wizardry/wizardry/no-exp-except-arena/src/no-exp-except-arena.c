#include "battle.h"

extern int CanBattleUnitGainExp(struct BattleUnit * bu);
extern int GetUnitRoundExp(struct Unit * unit, struct Unit * opponent);
extern int GetUnitKillExpBonus(struct Unit * unit, struct Unit * opponent);

extern struct BattleSt gBattleSt;

int GetBattleUnitExpGain(struct BattleUnit * bu, struct BattleUnit * opponent)
{
    if (!(gBattleSt.flags & BATTLE_FLAG_ARENA))
        return 0;

    if (!CanBattleUnitGainExp(bu) || bu->unit.hp == 0 || UNIT_ATTRIBUTES(&opponent->unit) & UNIT_ATTR_FINAL_BOSS)
        return 0;

    if (!bu->dealt_damage)
        return 1;

    int result = GetUnitRoundExp(&bu->unit, &opponent->unit) + GetUnitKillExpBonus(&bu->unit, &opponent->unit);

    if (result > 100)
        result = 100;

    if (result < 0)
        result = 0;

    return result;
}
