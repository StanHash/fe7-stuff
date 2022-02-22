#include "unit.h"

struct Unit * GetUnitByPid(int id);

extern u8 const lBaylorPid;

void AsmcHostileBaylor(void)
{
    GetUnitByPid(lBaylorPid)->ai_config |= 0x0200;
}

void AsmcFriendlyBaylor(void)
{
    GetUnitByPid(lBaylorPid)->ai_config &= ~0x0200;
}
