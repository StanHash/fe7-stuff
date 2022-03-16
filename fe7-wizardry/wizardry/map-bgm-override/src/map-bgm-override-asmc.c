#include "types.h"

extern void SetFlag(int flag);
extern void ClearFlag(int flag);

extern u8 const lMapBgmOverrideEnableFlag;
extern u16 const MapBgmOverrideCycleList[];
extern u16 * const lMapBgmOverrideSongAddr;

enum { CYCLE_LIST_TERMINATOR = (u16) -1 };

static int FindCycleIdx(int current_song)
{
    // we need to find where in the cycle we are
    // so we look for the current song id in the list
    // and return its index

    for (int i = 0; MapBgmOverrideCycleList[i] != CYCLE_LIST_TERMINATOR; ++i)
    {
        if (MapBgmOverrideCycleList[i] == current_song)
            return i;
    }

    // if we didn't find the song, return -1
    // conveniently, it is one before the first index (0)
    // so when we increment it we will effectively restart the cycle

    return -1;
}

void AsmcMapBgmOverrideDisable(void)
{
    ClearFlag(lMapBgmOverrideEnableFlag);

    // set this to a dummy value so the cycle restarts next time
    // also in case the addr value was corrupted (because it is used by something else)

    *lMapBgmOverrideSongAddr = (u16) -1;
}

void AsmcMapBgmOverrideCycle(void)
{
    SetFlag(lMapBgmOverrideEnableFlag);

    int next_song = MapBgmOverrideCycleList[FindCycleIdx(*lMapBgmOverrideSongAddr) + 1];

    if (next_song == CYCLE_LIST_TERMINATOR)
        next_song = MapBgmOverrideCycleList[0];

    *lMapBgmOverrideSongAddr = next_song;
}
