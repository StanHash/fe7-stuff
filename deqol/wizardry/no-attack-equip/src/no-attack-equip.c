#include "unit.h"
#include "item.h"
#include "menu.h"
#include "map-select.h"
#include "action.h"

extern int GetUnitEquippedItem(struct Unit * unit);
extern u32 GetItemAttributes(int item);
extern int CanUnitUseWeaponNow(struct Unit * unit, int item);
extern void ListAttackTargetsForWeapon(struct Unit * unit, int item);
extern int CountTargets(void);
extern void ClearBg0Bg1(void);
extern int GetUnitEquippedItemSlot(struct Unit * unit);
extern void UnitEquipItemSlot(struct Unit * unit, int slot);
extern void StartMapSelect(struct MapSelectInfo const * info);

extern struct Unit * gActiveUnit;
extern struct Action gAction;

extern struct MapSelectInfo const MapSelectInfo_Fight;

int NuggetUnitAttackCommandAvailability(struct MenuEntInfo const * info, int id)
{
    struct Unit * unit = gActiveUnit;

    if (unit->flags & UNIT_FLAG_HAS_MOVED)
        return MENU_NOTSHOWN;

    int item = GetUnitEquippedItem(unit);

    if (!(GetItemAttributes(item) & ITEM_ATTR_WEAPON))
        return MENU_NOTSHOWN;

    if (!(CanUnitUseWeaponNow(unit, item)))
        return MENU_NOTSHOWN;

    ListAttackTargetsForWeapon(unit, item);
    return CountTargets() != 0 ? MENU_ENABLED : MENU_NOTSHOWN;
}

int NuStartFightItemReview(struct MenuProc * menu, struct MenuEntProc * ent)
{
    struct Unit * unit = gActiveUnit;

    ClearBg0Bg1();

    gAction.id = ACTION_NONE;

    UnitEquipItemSlot(unit, GetUnitEquippedItemSlot(unit));
    ListAttackTargetsForWeapon(unit, unit->items[0]);
    StartMapSelect(&MapSelectInfo_Fight);

    return MENU_ACT_SKIPCURSOR | MENU_ACT_END | MENU_ACT_SE_BEEP | MENU_ACT_CLEAR;
}

int NuStartFightBallistaReview(struct MenuProc * menu, struct MenuEntProc * ent)
{
    return MENU_ACT_SKIPCURSOR | MENU_ACT_END | MENU_ACT_SE_BEEP | MENU_ACT_CLEAR;
}
