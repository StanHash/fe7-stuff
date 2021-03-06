.macro fun value, name
    .global \name
    .type \name, function
    .set \name, \value
.endm

.macro dat value, name
    .global \name
    .type \name, object
    .set \name, \value
.endm

fun 0x8000304, ClearOam
fun 0x80003A8, TmFillRect
fun 0x80003E0, TmCopyRect
fun 0x800043C, TmApplyTsa
fun 0x8000A51, AgbMain
fun 0x8000B1D, PutBuildInfo
fun 0x8000B59, IrqInit
fun 0x8000BBD, SetIrqFunc
fun 0x8000BE1, NextRN
fun 0x8000CA9, RandInit
fun 0x8000D75, RandSetSt
fun 0x8000DD1, RandGetSt
fun 0x8000E05, RandNext_100
fun 0x8000E31, RandNext
fun 0x8000E61, RandRoll
fun 0x8000E85, RandRoll2Rn
fun 0x8000EC1, RandInitB
fun 0x8000EDD, RandNextB
fun 0x8000F15, GetGameTime
fun 0x8000F2D, SetGameTime
fun 0x8000F49, IncGameTime
fun 0x8000F81, FormatTime
fun 0x8000FFD, EnableBgSync
fun 0x800105D, EnablePalSync
fun 0x8001085, ApplyPaletteExt
fun 0x8001399, GetBgChrOffset
fun 0x8001811, TmFill
fun 0x8001865, SetOnVBlank
fun 0x80019D5, RunMainFunc
fun 0x8001BC9, RefreshKeySt
fun 0x8001C51, InitKeySt
fun 0x8001D8D, SetBgOffset
fun 0x8002A6D, InitBgs
fun 0x8002CF5, SoftResetIfKeyCombo
fun 0x8002DC9, OnHBlankBoth
fun 0x8002DFD, RefreshOnHBlank
fun 0x8002F15, SetOnHBlankA
fun 0x8002F35, SetOnHBlankB
fun 0x80034DD, GetCurrentBgmSong
fun 0x80035B1, SetBgmVolume
fun 0x80035ED, FadeBgmOut
fun 0x8003675, FadeBgmOut_2
fun 0x80037A9, StartBgmCore
fun 0x8003815, StartOrChangeBgm
fun 0x8003891, StartBgm
fun 0x80038AD, StartBgmExt
fun 0x800397D, StartBgmFadeIn
fun 0x8003A71, OverrideBgm
fun 0x8003B8D, RestoreBgm
fun 0x8003C71, StartBgmVolumeChange
fun 0x8003EA1, PlaySongDelayed
fun 0x8003F15, PlaySongCore
fun 0x8004339, DrawGlyphRam
fun 0x8004365, DecodeStringRam
fun 0x8004389, PutOamHiRam
fun 0x80043B5, PutOamLoRam
fun 0x8004409, MapFloodCoreRam
fun 0x8004495, SpawnProc
fun 0x80044F9, SpawnProcLocking
fun 0x8004585, Proc_End
fun 0x80046A1, Proc_Break
fun 0x80046A9, Proc_Find
fun 0x8004721, Proc_Goto
fun 0x8004761, Proc_Mark
fun 0x8004795, Proc_ForEach
fun 0x80047E9, Proc_LockEachMarked
fun 0x800486D, Proc_EndEach
fun 0x8004CE9, InitIcons
fun 0x8004CF5, ClearIcons
fun 0x8004D2D, ApplyIconPalettes
fun 0x8004F71, DebugPutStr
fun 0x80053A1, GetLang
fun 0x80053A5, SetLang
fun 0x80053B1, ResetText
fun 0x80053D5, InitTextFont
fun 0x8005411, SetTextFontGlyphs
fun 0x8005439, ResetTextFont
fun 0x8005451, SetTextFont
fun 0x8005475, InitText
fun 0x80054E1, ClearText
fun 0x8005575, Text_SetCursor
fun 0x8005579, Text_Skip
fun 0x8005581, Text_SetColor
fun 0x80056A9, GetStringTextCenteredPos
fun 0x8005719, Text_DrawString
fun 0x800578D, Text_DrawNumber
fun 0x80057D9, Text_DrawNumberOrBlank
fun 0x8005815, Text_DrawCharacter
fun 0x8005A41, InitSystemTextFont
fun 0x8005B19, Text_InsertDrawString
fun 0x8005B3D, Text_InsertDrawNumberOrBlank
fun 0x8005C39, InitSpriteTextFont
fun 0x8005C75, InitSpriteText
fun 0x8005C99, SpriteText_DrawBackground
fun 0x8005D25, GetSpriteTextDrawDest
fun 0x8005D49, DrawSpriteTextGlyph
fun 0x8005FF5, StartGreenText
fun 0x8006B35, InitFaces
fun 0x8006B51, SetFaceConfig
fun 0x8006C09, StartFaceAuto
fun 0x8006C35, StartFace
fun 0x8007565, StartFaceFadeOut
fun 0x8007DF9, InitTalk
fun 0x800801D, StartTalkMsg
fun 0x8008069, EndTalk
fun 0x8008085, ResetTalkFlags
fun 0x8008095, SetTalkFlag
fun 0x80080A9, SetTalkFunc
fun 0x80080B5, ClearTalkFlag
fun 0x80080C9, CheckTalkFlag
fun 0x8008131, TalkSkipListener_OnIdle
fun 0x80084C5, IsTalkLocked
fun 0x80084DD, ResumeTalk
fun 0x8009095, TalkFaceMove_OnInit
fun 0x80090F1, TalkFaceMove_OnIdle
fun 0x800920D, TalkPause_OnIdle
fun 0x8009231, TalkWaitForInput_OnIdle
fun 0x8009755, ClearTalkBubble
fun 0x8009FA1, IsTalkActive
fun 0x8009FB9, FaceExists
fun 0x8009FD1, GetTalkResult
fun 0x800A619, LoadUnitWrapper
fun 0x800A709, FakeLoadUnit
fun 0x800ADDD, Event_FadeOutOfBackgroundTalk
fun 0x800ADF1, Event_FadeOutOfSkip
fun 0x800AEF1, EventForceSlowTextSpeed
fun 0x800AF75, StartEvent
fun 0x800B1C5, Event_IsSkipAllowed
fun 0x800B1F1, Event_DarkenThenFunc
fun 0x800B20D, EventDarkenThenFunc_OnInit
fun 0x800B221, EventDarkenThenFunc_OnLoop
fun 0x800B24D, EventDarkenThenFunc_StartDarken
fun 0x800B2C5, EventDarkenThenFunc_StepDarken
fun 0x800B309, Event_BeginSkip
fun 0x800B391, Event_MainLoop
fun 0x800B4A1, Event_WaitForFaceEnd
fun 0x800B4C9, EvtCmd_Sleep
fun 0x800B4F9, EvtCmd_SleepFast
fun 0x800B529, EvtCmd_SleepText
fun 0x800B559, EvtCmd_Background
fun 0x800B5B9, EvtCmd_BackgroundLynModeDeath
fun 0x800B63D, EvtCmd_BackgroundRandom
fun 0x800B671, EvtCmd_BackgroundMore
fun 0x800B6B5, EvtCmd_ClearTalk
fun 0x800B701, EvtCmd_ClearSkip
fun 0x800B73D, EvtCmd_ClearSkipFadeToPrep
fun 0x800B7D1, EvtCmd_FadeFromOpening
fun 0x800B7F1, DisplayBackground
fun 0x800B881, DisplayBackgroundNoClear
fun 0x800B90D, EventStartTalk
fun 0x800B975, EvtCmd_Talk
fun 0x800B9A9, EvtCmd_TalkOpaque
fun 0x800B9E5, EvtCmd_TalkByMode
fun 0x800BA3D, EvtCmd_TalkSetFuncBroken
fun 0x800BA61, EvtCmd_TalkMore
fun 0x800BA91, EvtCmd_TalkMoreByMode
fun 0x800BADD, EvtCmd_TalkAuto
fun 0x800BB05, EvtCmd_TalkContinue
fun 0x800BB35, EvtCmd_TalkGeneric
fun 0x800BB7D, EvtCmd_TalkMoreGeneric
fun 0x800BBC5, EvtCmd_TalkByTactRank
fun 0x800BC55, EvtCmd_TalkByTactGender
fun 0x800BCA1, EvtCmd_TalkMoreByTactGender
fun 0x800BCE9, EvtCmd_TalkByFlag
fun 0x800BD39, EvtCmd_TalkMoreByFlag
fun 0x800BD85, EvtCmd_TalkByFunc
fun 0x800BDD5, EvtCmd_TalkMoreByFunc
fun 0x800BE21, EvtCmd_ClearTalkBubble
fun 0x800BE2D, EventTalkWait
fun 0x800BE75, EvtCmd_CameraCenterPosition
fun 0x800BEED, EvtCmd_CameraPosition
fun 0x800BF5D, EvtCmd_CameraPid
fun 0x800BFDD, EvtCmd_CameraLeader
fun 0x800C00D, CanDisplayUnitMovement
fun 0x800C059, EvtCmd_MovePosition
fun 0x800C15D, EvtCmd_MovePositionSpeed
fun 0x800C25D, EvtCmd_MovePid
fun 0x800C305, EvtCmd_MovePidSpeed
fun 0x800C3B5, EvtCmd_MovePidOneStepSpeed
fun 0x800C465, EvtCmd_MovePidScript
fun 0x800C4ED, EvtCmd_MovePositionScript
fun 0x800C5B1, EvtCmd_MovePidNextTo
fun 0x800C63D, EvtCmd_MoveLeader
fun 0x800C6E5, EvtCmd_MovePidByFaction_Position_Script
fun 0x800C7FD, EvtCmd_MovePidByFaction_Script_Script
fun 0x800C8BD, EvtCmd_MovePositionInstant
fun 0x800C959, EvtCmd_MovePidInstant
fun 0x800C9AD, EvtCmd_SavePositionPid
fun 0x800CA1D, EvtCmd_MovePidToSavedPosition
fun 0x800CAE9, TryMoveUnit
fun 0x800CB75, TryMoveUnitDisplayed
fun 0x800CC5D, DisplayMovement
fun 0x800CD19, EventWaitForMu_OnLoop
fun 0x800CD65, EvtCmd_LoadUnits
fun 0x800CDA9, EvtCmd_LoadUnitsAlive
fun 0x800CDED, EvtCmd_LoadUnitsIfModeAndHard
fun 0x800CE59, EvtCmd_LoadUnitsParty
fun 0x800CE81, EvtCmd_LoadUnitsPartyIfMode
fun 0x800CEBD, EvtCmd_LoadUnitsByMode
fun 0x800CF45, EvtCmd_LoadUnitsPartyByMode
fun 0x800CFAD, GetNextAvailableBlueUnitId
fun 0x800CFE5, UnitInfoRequiresNoMovement
fun 0x800D01D, EventUnitLoadWait
fun 0x800D099, EventUnitLoadAliveWait
fun 0x800D135, EventLoadUnitsAsParty
fun 0x800D259, EvtCmd_LoadUnit
fun 0x800D2F5, EventMovementWait
fun 0x800D31D, EvtCmd_WaitForMovement
fun 0x800D359, EvtCmd_UnitCameraOn
fun 0x800D369, EvtCmd_UnitCameraOff
fun 0x800D37D, EvtCmd_Func
fun 0x800D3A1, EvtCmd_FuncIfnSkip
fun 0x800D3D5, EvtCmd_FuncIfnSkipTalk
fun 0x800D40D, EvtCmd_FuncUntil
fun 0x800D43D, EvtCmd_FuncWhile
fun 0x800D46D, EvtCmd_Stop
fun 0x800D471, EvtCmd_Label
fun 0x800D475, EventGotoLabel
fun 0x800D4D1, EvtCmd_Goto
fun 0x800D4E1, EvtCmd_GotoIfnAlive
fun 0x800D525, EvtCmd_GotoIfnInTeam
fun 0x800D569, EvtCmd_GotoIfyFunc
fun 0x800D591, EvtCmd_GotoIfnFunc
fun 0x800D5B9, EvtCmd_GotoIfySkip
fun 0x800D5DD, EvtCmd_GotoIfySkipText
fun 0x800D601, EvtCmd_GotoIfyFlag
fun 0x800D66D, EvtCmd_GotoIfnFlag
fun 0x800D6D9, EvtCmd_GotoIfyActive
fun 0x800D769, EvtCmd_GotoIfyEliwoodMode
fun 0x800D78D, EvtCmd_GotoIfyHectorMode
fun 0x800D7B1, EvtCmd_GotoIfyDifficulty
fun 0x800D7F5, EvtCmd_GotoIfnTalkYes
fun 0x800D815, EvtCmd_GotoIfnTalkYes2
fun 0x800D835, EvtCmd_GotoIfnTutorial
fun 0x800D869, EvtCmd_GotoIfnDeadAndFlagOnce
fun 0x800D8C1, EvtCmd_GotoIfyTurnCountReached
fun 0x800D8E5, EvtCmd_GotoIfxDeployed
fun 0x800D91D, EvtCmd_Jump
fun 0x800D929, EvtCmd_SkipNIfyFunc
fun 0x800D94D, EvtCmd_SkipNIfnFunc
fun 0x800D971, EvtCmd_GiveItem
fun 0x800D989, EvtCmd_GiveItemToPid
fun 0x800D9B1, EvtCmd_GiveItemToLeader
fun 0x800D9D1, EventGiveItem
fun 0x800D9F1, EvtCmd_MapChange
fun 0x800DA89, EvtCmd_MapChangeWithAutoWaterShadows
fun 0x800DB59, EvtCmd_MapChangeInstant
fun 0x800DB91, EvtCmd_MapChangeInstantNoRender
fun 0x800DBE9, EvtCmd_ReRenderMap
fun 0x800DC0D, EvtCmd_MapChangePosition
fun 0x800DC81, EvtCmd_SetFaction
fun 0x800DCC9, EvtCmd_FlashCursorPosition
fun 0x800DD39, EvtCmd_FlashCursorPid
fun 0x800DD89, EventFlashCursorWait
fun 0x800DDC1, EventFlashCursor_OnInit
fun 0x800DDC9, EventFlashCursor_OnLoop
fun 0x800DDFD, EvtCmd_PutCursor
fun 0x800DE65, EventCursor_OnLoop
fun 0x800DE85, EvtCmd_ClearCursors
fun 0x800DE99, EventIsBlueUnitByPidForDisable
fun 0x800DEC9, EvtCmd_RemovePosition
fun 0x800DF51, EvtCmd_RemovePid
fun 0x800DF8D, EvtCmd_RemovePositionDisplayed
fun 0x800E059, EvtCmd_RemovePidDisplayed
fun 0x800E0D5, EventRemoveDisplayedWait
fun 0x800E101, EvtCmd_HidePosition
fun 0x800E16D, EvtCmd_HidePid
fun 0x800E18D, EvtCmd_DisablePid
fun 0x800E1A9, EvtCmd_EnablePid
fun 0x800E1C5, EvtCmd_SetState
fun 0x800E1ED, EvtCmd_ClearState
fun 0x800E215, EventSetUnitAi
fun 0x800E255, EvtCmd_SetAiPid
fun 0x800E2B9, EvtCmd_SetAiPosition
fun 0x800E331, EvtCmd_SetFlag
fun 0x800E341, EvtCmd_ClearFlag
fun 0x800E351, EvtCmd_PlayBgm
fun 0x800E379, EvtCmd_PlaySongExt
fun 0x800E421, EvtCmd_OverrideBgm
fun 0x800E451, EvtCmd_RestoreBgm
fun 0x800E461, EvtCmd_FadeBgmIn
fun 0x800E485, EvtCmd_FadeBgmOut
fun 0x800E4A9, EvtCmd_LowerBgmVolume
fun 0x800E4D1, EvtCmd_RestoreBgmVolume
fun 0x800E501, EvtCmd_PlaySe
fun 0x800E531, EventEndBattleMap
fun 0x800E541, EvtCmd_NextChapter
fun 0x800E585, EvtCmd_EndGame
fun 0x800E59D, EvtCmd_EndLynCampaign
fun 0x800E5B5, EvtCmd_SetMap
fun 0x800E605, EvtCmd_SetMapId
fun 0x800E615, Event_EndSkip
fun 0x800E665, EvtCmd_NoSkip
fun 0x800E68D, EvtCmd_NoSkipTalk
fun 0x800E6B5, EvtCmd_NoSkipTalkSlow
fun 0x800E6E1, EvtCmd_YesSkip
fun 0x800E701, EvtCmd_SilentSkip
fun 0x800E71D, EvtCmd_NoSkipUnlessNewGamePlus
fun 0x800E751, EvtCmd_NoSkipTalkSlowUnlessNewGamePlus
fun 0x800E78D, EvtCmd_NoSkipSlowUnlessNewGamePlus
fun 0x800E7C9, EvtCmd_FadeToBlack
fun 0x800E7ED, EvtCmd_FadeFromBlack
fun 0x800E811, EvtCmd_LynModeDeathFadeToBlack
fun 0x800E845, EvtCmd_FadeToWhite
fun 0x800E869, EvtCmd_FadeFromWhite
fun 0x800E88D, EvtCmd_ExitMap
fun 0x800E899, EvtCmd_EnterMap
fun 0x800E8F5, EvtCmd_GiveGold
fun 0x800E949, EvtCmd_FightScript
fun 0x800EB05, EventScriptedBattleWait
fun 0x800EB39, EventScriptedBattleWaitB
fun 0x800EB4D, EvtCmd_SetNoReloadGfx
fun 0x800EB5D, EvtCmd_OnSkipFunc
fun 0x800EB69, EvtCmd_ClearOnSkipFunc
fun 0x800EB71, EvtCmd_SetWeatherWithFade
fun 0x800EB91, EvtCmd_SetWeather
fun 0x800EBC9, EventWeatherChangeWithFade_SetWeather
fun 0x800EBD9, EvtCmd_SetVision
fun 0x800EC01, EvtCmd_SetVisionInstant
fun 0x800EC11, EvtCmd_BreakItemSeal
fun 0x800EC31, EvtCmd_EnqueueEvent
fun 0x800EC41, EvtCmd_End
fun 0x800ECB1, EventClearTalkDisplayed
fun 0x800ECFD, ClearTalk
fun 0x800EE4D, StartPopup_800EE4C
fun 0x800EE91, StartPopup_800EE90
fun 0x800EEB1, StartPopup_800EEB0
fun 0x800EF55, StartGiveItem
fun 0x800EF9D, GiveItem_DoPopup
fun 0x800EFB1, GiveItem_DoGiveItem
fun 0x800F2F5, Event_SetExitMap
fun 0x800F2FD, Event_SetEnterMap
fun 0x800FB69, EvtCmd_SetKeyIgnore
fun 0x800FB79, EvtCmd_SetFightScriptOverride
fun 0x800FB89, EvtCmd_ClearMenuOverrides
fun 0x800FB95, EvtCmd_MenuOverrideHide
fun 0x800FBAD, EvtCmd_MenuOverrideDisable
fun 0x800FBD9, EvtCmd_MenuOverrideEnable
fun 0x800FBF1, EvtCmd_BoxTalk
fun 0x800FC99, EvtCmd_BoxTalkByTactGender
fun 0x800FD51, EvtCmd_TutorialCursorsTargetMove
fun 0x800FD61, EvtCmd_TutorialCursors
fun 0x800FEF1, EventStartCgTalk
fun 0x800FF95, EvtCmd_CgTalk
fun 0x8010065, EvtCmd_CgBackground
fun 0x80100E1, EvtCmd_PaletteFadeFromBlack
fun 0x8010139, EvtCmd_PaletteFadeToBlack
fun 0x8010191, Event_CgTalkOnSkip
fun 0x8011F59, EvtCmd_WarpLoadUnits
fun 0x8012B01, StartGame
fun 0x8012B39, GetGameControlProc
fun 0x8012B49, SetNextGameAction
fun 0x8012B5D, SetNextChapter
fun 0x8012C61, GetMsg
fun 0x8012C9D, GetMsgTo
fun 0x8012CBD, MsgExpand
fun 0x8013169, Decompress
fun 0x8013AC9, StartPalFadeToBlack
fun 0x8013B01, StartPalFade
fun 0x8013C5D, SetBlackPal
fun 0x8013EB9, FadeExists
fun 0x8013F01, StartFadeToBlack
fun 0x8013F1D, StartFadeFromBlack
fun 0x8013F39, StartLockingFadeToBlack
fun 0x8013F51, StartLockingFadeFromBlack
fun 0x8013F69, StartLockingFadeToWhite
fun 0x8013F81, StartLockingFadeFromWhite
fun 0x8013F99, StartMidFadeToBlack
fun 0x8013FB1, StartFastFadeToBlack
fun 0x8013FE1, StartMidLockingFadeToBlack
fun 0x8013FF1, StartSlowLockingFadeToBlack
fun 0x8014011, StartMidLockingFadeFromBlack
fun 0x8014299, WaitForFade
fun 0x8014495, StartTemporaryLock
fun 0x801524D, OnVBlank
fun 0x8015309, LockGame
fun 0x8015319, ReleaseGame
fun 0x8015329, GetGameLock
fun 0x8015591, ApplySystemObjectsGraphics
fun 0x80155CD, ApplySystemGraphics
fun 0x8015895, GetCameraAdjustedX
fun 0x80158D9, GetCameraAdjustedY
fun 0x801591D, GetCameraCenteredX
fun 0x8015945, GetCameraCenteredY
fun 0x801596D, PutMapCursor
fun 0x8015A91, SetMapCursorPosition
fun 0x8015C05, GetCameraAdjustedCenter
fun 0x8015C59, CameraMoveWatchPositionCenter
fun 0x8015CE1, CameraMoveWatchPosition
fun 0x8015E9D, GetMapBgmSong
fun 0x8015F85, StartMapSongBgm
fun 0x8016175, CreateItem
fun 0x80161A5, CanUnitUseWeapon
fun 0x8016381, CanUnitUseWeaponNow
fun 0x8016765, GetUnitEquippedItem
fun 0x8016795, GetUnitEquippedItemSlot
fun 0x80167F5, UnitEquipItemSlot
fun 0x8016DB5, GetItemReach
fun 0x8016EBD, GetUnitWeaponReach
fun 0x8017149, BreakItemSealForPid
fun 0x80171B5, GetItemIid
fun 0x801725D, GetItemKind
fun 0x801727D, GetItemAttributes
fun 0x8017295, GetItemUses
fun 0x80172E1, GetItemMight
fun 0x8017425, GetItemWeaponEffect
fun 0x8017509, ClearUnit
fun 0x80175E9, SetUnitStatus
fun 0x8017689, UnitRemoveInvalidItems
fun 0x8017789, LoadUnit
fun 0x8017C65, UnitCheckStatOverflow
fun 0x8017D35, GetUnitByPid
fun 0x8017DB5, CanUnitCarry
fun 0x8017DE5, UnitRescue
fun 0x8017E09, UnitDropRescue
fun 0x8017E5D, UnitGiveRescue
fun 0x8017E91, KillUnit
fun 0x8017EB9, UnitChangeFaction
fun 0x8017F29, UnitSyncMovement
fun 0x80180ED, UnitBeginAction
fun 0x8018165, UnitBeginReMoveAction
fun 0x80187D5, GetUnitMovementCost
fun 0x8018AB1, GetUnitMaxHp
fun 0x8018AD1, GetUnitPower
fun 0x8018AF1, GetUnitSkill
fun 0x8018B31, GetUnitSpeed
fun 0x8018B71, GetUnitDefense
fun 0x8018B91, GetUnitResistance
fun 0x8018BB9, GetUnitLuck
fun 0x8018BD9, GetUnitFid
fun 0x8018D0D, GetUnit
fun 0x8018D21, GetJobInfo
fun 0x8018D89, InitMapForChapter
fun 0x8018E85, InitChapterPreviewMap
fun 0x8018EED, ApplyAutoWaterShadows
fun 0x8019041, RefreshAutoWaterShadows
fun 0x801906D, MapInit
fun 0x80190AD, MapFill
fun 0x8019175, UnpackRawMap
fun 0x80191D5, ApplyChapterMapGraphics
fun 0x801923D, ApplyChapterMapPalettes
fun 0x801926D, InitMetatilesMap
fun 0x801932D, RefreshTerrainMap
fun 0x80193E1, PutMapMetatile
fun 0x8019455, PutLimitViewSquare
fun 0x8019505, RenderMap
fun 0x8019585, RenderMapForFade
fun 0x8019ABD, RefreshEntityMaps
fun 0x8019BA1, MapFloodUnit
fun 0x8019BE1, MapFloodUnitMovement
fun 0x8019C1D, MapFloodUnitExtended
fun 0x8019C51, MapFloodExtendedOnRangeMap
fun 0x8019C81, MapFloodExtended
fun 0x8019CB1, MapFloodOnWorkingMap
fun 0x8019CE1, SetWorkingMoveTable
fun 0x8019D01, BeginMapFlood
fun 0x801AC61, BuildUnitStandingRangeForReach
fun 0x801C195, HandlePlayerMapCursor
fun 0x801C235, PlayerPhase_IdleLoop
fun 0x801CE6D, GetPlayerSelectKind
fun 0x801D355, TrySwitchViewedUnit
fun 0x801D3AD, PlayerPhase_HandleAutoEnd
fun 0x801D609, StartMapFade
fun 0x801D635, IsMapFadeActive
fun 0x801D8B1, HandleGiveUnitItem
fun 0x801DB59, SetVisionWithFade
fun 0x801DB95, SetVision
fun 0x801DEFD, StartEquipInfoWindow
fun 0x8020849, WarpEffect_Init
fun 0x8020929, WarpEffect_Lop
fun 0x80209C5, WarpEffect_Finish
fun 0x80209F5, StartWarpEffect_080209F4
fun 0x8020A65, StartWarpEffect_08020A64
fun 0x8020AB9, WarpEffectExists
fun 0x8021A3D, UnitAttackCommandEffect
fun 0x8021A99, StartFightBallistaReview
fun 0x8021AE5, StartFightItemReview
fun 0x8021D45, GoToFightItemReview
fun 0x8021EB9, GetUnitSeizeCommandAvailability
fun 0x802357D, GetUnitAttackCommandAvailability
fun 0x80235F9, GetUnitAttackBallistaCommandAvailability
fun 0x80238B1, AreUnitIdsAllied
fun 0x8023905, GetGold
fun 0x8023911, SetGold
fun 0x8023C59, ListAttackTargetsForWeapon
fun 0x8024C99, ApplyUnitSpritePalettes
fun 0x8024CF9, ResetUnitSprites
fun 0x8025581, ForceSyncUnitSpriteSheet
fun 0x80256F5, GetUnitSpritePalette
fun 0x8025725, RefreshUnitSprites
fun 0x8026575, HideUnitSprite
fun 0x8026599, ShowUnitSprite
fun 0x8026845, ClearUnitSupports
fun 0x80281C9, BattleGenerateSimulationInternal
fun 0x8028299, BattleGenerateRealInternal
fun 0x8028381, BattleApplyGameStateUpdates
fun 0x80283A5, BattleGenerateSimulation
fun 0x80283DD, BattleGenerateReal
fun 0x80283F1, BattleGenerateBallistaSimulation
fun 0x8028411, BattleGenerateBallistaReal
fun 0x8028425, BattleGenerate
fun 0x802848D, BattleGenerateDisplayStats
fun 0x80285D5, InitBattleUnit
fun 0x8028729, SetBattleUnitTerrainBonusesAuto
fun 0x802877D, SetBattleUnitWeapon
fun 0x802896D, SetBattleUnitWeaponBallista
fun 0x80289B1, ComputeBattleUnitStats
fun 0x8028A99, ComputeBattleUnitDefense
fun 0x8028B11, ComputeBattleUnitAttack
fun 0x8028B69, ComputeBattleUnitSpeed
fun 0x8028BA1, ComputeBattleUnitHitRate
fun 0x8028C51, ComputeBattleUnitAvoidRate
fun 0x8028F85, ClearBattleHits
fun 0x802956D, BattleApplyExpGains
fun 0x8029635, CanBattleUnitGainExp
fun 0x8029A71, BattleApplyUnitUpdates
fun 0x8029AFD, GetBattleUnitUpdatedWeaponExp
fun 0x8029C25, UpdateUnitFromBattle
fun 0x8029D0D, UpdateUnitDuringBattle
fun 0x8029D39, BattleApplyBallistaUpdates
fun 0x8029D7D, GetUnitExpLevel
fun 0x8029D9D, GetUnitRoundExp
fun 0x8029E75, GetUnitKillExpBonus
fun 0x8029F11, GetBattleUnitExpGain
fun 0x802A0A5, BattleUnitTargetSetEquippedWeapon
fun 0x802A0F9, BattleUnitTargetCheckHasRealWeapon
fun 0x802A171, BattleApplyWeaponTriangleEffect
fun 0x802A1F5, BattleInitTargetCanCounter
fun 0x802A315, UpdateObstacleFromBattle
fun 0x802A3B1, BeginBattleAnimations
fun 0x802A431, GetBattleAnimKind
fun 0x802A4B5, BattleInitItemEffect
fun 0x802A561, BattleInitItemEffectTarget
fun 0x802A66D, GetOffensiveStaffAccuracy
fun 0x802AB91, BattleHitAdvance
fun 0x802ABA1, BattleHitTerminate
fun 0x802BB11, RemoveTrap
fun 0x802BC41, ApplyEnabledMapChanges
fun 0x802BD0D, GetMapChangeIdAt
fun 0x802BD69, ApplyMapChange
fun 0x802BDD5, AddMapChangeTrap
fun 0x802BDE9, RemoveMapChangeTrap
fun 0x802BE41, UpdateRoofedUnits
fun 0x802C319, GetBallistaTrapAt
fun 0x802C42D, GetRescueStaffTargetPosition
fun 0x802C655, DoItemRescueStaffAction
fun 0x802C76D, DoItemAttackStaffAction
fun 0x802D259, ApplyStatusChange
fun 0x802D3B5, LockBmDisplay
fun 0x802D3E9, UnlockBmDisplay
fun 0x802D425, AllocWeatherParticles
fun 0x802D471, WeatherInit_None
fun 0x802D489, WeatherInit_Snow
fun 0x802D5C1, WeatherInit_Rain
fun 0x802D6A5, WeatherInit_Sandstorm
fun 0x802D771, WeatherInit_Snowstorm
fun 0x802D8F9, WeatherInit_Blue
fun 0x802D941, FlamesWeatherHBlank
fun 0x802D985, ApplyFlamesWeatherGradient
fun 0x802DA05, FlamesWeatherInitGradient
fun 0x802DA95, FlamesWeatherInitParticles
fun 0x802DAF9, WeatherInit_Flames
fun 0x802DC85, WeatherInit_Clouds
fun 0x802DD61, WeatherInit
fun 0x802DEA9, SetWeather
fun 0x802DEC1, GetTextPrintDelay
fun 0x802DEED, IsFirstPlaythrough
fun 0x802DF21, InitPlayConfig
fun 0x802F219, DoAction
fun 0x803031D, GetLeaderPid
fun 0x8031575, GetChapterInfo
fun 0x8031585, GetChapterMap
fun 0x80315A1, GetChapterMapChanges
fun 0x80327AD, IsSubtitleHelpActive
fun 0x80340FD, StartFightPreview
fun 0x803523D, AiEndMuAndRefreshUnits
fun 0x8035DA5, AiCouldReachByBirdsEyeDistance
fun 0x8036651, AiMakeMoveRangeMapsForUnitAndWeapon
fun 0x8036ED9, AiGetUnitClosestValidPosition
fun 0x80393E9, AiFillDangerMap
fun 0x804A041, ClearBg0Bg1
fun 0x804A211, LoadUiFrameGraphics
fun 0x804A271, StartMenu
fun 0x804A281, StartMenuExt
fun 0x804AA35, MenuFrozenHelpBox
fun 0x804AB9D, ClearMenuOverrides
fun 0x804AC1D, SetMenuOverride
fun 0x804ACE5, BeginTargetList
fun 0x804ACFD, EnlistTarget
fun 0x804AE89, StartMapSelect
fun 0x804B175, CountTargets
fun 0x804B181, GetTarget
fun 0x806BAF1, StartMu
fun 0x806BBC5, EnableMuCamera
fun 0x806BBED, DisableMuCamera
fun 0x806BCB5, StartMuInternal
fun 0x806BFE1, SetAutoMuDefaultFacing
fun 0x806C065, MuExistsActive
fun 0x806C0CD, IsMuActive
fun 0x806C105, SetMuMoveScript
fun 0x806CCB9, EndAllMus
fun 0x806CCD1, EndMu
fun 0x806CD31, LockMus
fun 0x806CD41, ReleaseMus
fun 0x806CD51, ApplyMoveScriptToCoordinates
fun 0x806CE01, CanStartMu
fun 0x806D381, GetMuQ4MovementSpeed
fun 0x806D5AD, StartMuDeathFade
fun 0x807980D, ClearChapterFlags
fun 0x80798D1, ClearPermanentFlags
fun 0x80798E5, SetFlag
fun 0x80798F9, GetFlag
fun 0x8079911, ClearFlag
fun 0x8079CE1, UnitIsDeployedByPid
fun 0x8079D41, BlueUnitExistsByPid
fun 0x807A3C9, IsTactFemale
fun 0x807A3E9, IsTutorialDisabled
fun 0x807A6E5, StartTutorialCursors
fun 0x807EE3D, GetLynModeDeathFlag
fun 0x807EE4D, SetLynModeDeathFlag
fun 0x807FD29, DrawStatWithBar
fun 0x808149D, StartStatScreen
fun 0x8083181, BoxTalkActive
fun 0x808319D, SetBoxTalkFlags
fun 0x80831A9, GetBoxTalkFlags
fun 0x8083601, StartBoxTalk
fun 0x80846AD, StartNoBoxTalk
fun 0x8085C69, StartMapWindows
fun 0x808681D, GetStatusSceenLeaderUnit
fun 0x80868B9, CountUnitsByFaction
fun 0x8087475, SetCgFlags
fun 0x809E4F1, LoadMetaSave
fun 0x809E571, SaveMetaSave
fun 0x809EECD, MetaSave_SetMetCharacter
fun 0x809EF15, MetaSave_HasMetCharacter
fun 0x809EF59, MetaSave_HasMetAnyCharacter
fun 0x809EF95, WasGameBeatenAtLeastOnce
fun 0x809FB25, GetChapterCompletionStatsEnt
fun 0x809FB45, GetChapterCompletionStatsListCount
fun 0x809FC89, IsChapterPartOfCurrentMode
fun 0x809FCF1, GetTotalTurnCountUpUntilNow
fun 0x80A009D, PidStatsAddExpGained
fun 0x80A038D, MetaSave_CountCompletedPlaythroughs
fun 0x80A06C5, SaveNewGame
fun 0x80AA18D, PaletteFadeOutOfBlank_Lop
fun 0x80AA1D1, PaletteFadeIntoBlank_Lop
fun 0x80AA219, PaletteFadeInOut_DispDisable
fun 0x80AA29D, StartPaletteFadeOutOfBlack
fun 0x80AA2E5, StartLockingPaletteFadeFromBlack
fun 0x80AA309, StartLockingPaletteFadeToBlack
fun 0x80ADB0D, GetOptionMenuLayoutId
fun 0x80B5031, WorldMap_Init
fun 0x80B6B6D, PutCgBackground
fun 0x80BE595, PlaySong
fun 0x80BE72D, m4aMPlayFadeOut
fun 0x80BE75D, m4aMPlayFadeIn
fun 0x80BE785, m4aMPlayImmInit
fun 0x80BEDAD, m4aMPlayStop
fun 0x80BF53D, m4aMPlayVolumeControl
fun 0x80BFA0D, CpuSetFast
fun 0x80BFA11, CpuSet
fun 0x80BFA15, Div
fun 0x80BFA19, DivRem
fun 0x80BFAB5, WriteSramFast
fun 0x80BFBD9, WriteAndVerifySramFast
fun 0x80BFC51, _call_via_r1
fun 0x80BFC55, _call_via_r2
fun 0x80BFC59, _call_via_r3
fun 0x80BFC5D, _call_via_r4
fun 0x80BFC89, __divsi3
fun 0x80BFD1D, __div0
fun 0x80BFD21, __modsi3
fun 0x80BFDF1, __muldi3
fun 0x80BFE61, __udivsi3
fun 0x80BFED9, __umodsi3
fun 0x80BFF99, memcpy
fun 0x80BFFF9, memset
fun 0x80C00C9, strcpy
fun 0x80C0115, strlen
fun 0x80C0159, strstr
fun 0x80C57AD, ClearOam_t
fun 0x80C57B5, TmApplyTsa_t
fun 0x80C57BD, TmFillRect_t
fun 0x80C57CD, TmCopyRect_t

dat 0x20027DC, gWeatherEffect
dat 0x2002ADC, gWeatherGradient
dat 0x2022860, gPal
dat 0x2022C60, gBg0Tm
dat 0x2023460, gBg1Tm
dat 0x2023C60, gBg2Tm
dat 0x2024460, gBg3Tm
dat 0x2024C70, MainFunc
dat 0x2028D70, gActiveFont
dat 0x2028D78, gSpecialCharStList
dat 0x202A5B4, gCurrentMsgBuf
dat 0x202B5B4, gCurrentMsgId
dat 0x202B5B8, gPalFadeBuf
dat 0x202BBB8, gBmSt
dat 0x202BBF8, gPlaySt
dat 0x202BD48, gActiveUnitId
dat 0x202E3D8, gMapSize
dat 0x202E3DC, gMapUnit
dat 0x202E3E0, gMapTerrain
dat 0x202E3E4, gMapMovement
dat 0x202E3E8, gMapRange
dat 0x202E3EC, gMapFog
dat 0x202E3F0, gMapHidden
dat 0x202E3F4, gMapOther
dat 0x2030A90, gTilesetInfo
dat 0x203A3D8, gBattleSt
dat 0x203A3F0, gBattleUnitA
dat 0x203A470, gBattleUnitB
dat 0x203A50C, gBattleHitIt
dat 0x203A518, gTraps
dat 0x203A85C, gAction
dat 0x203E7A0, gPidStats
dat 0x203EC00, gChapterCompletionStats
dat 0x3000000, gRandStA
dat 0x3000008, gRandStB
dat 0x3000010, gGameTime
dat 0x3002870, gDispIo
dat 0x3002918, MapFloodCoreRamFunc
dat 0x3002920, PutOamHiRamFunc
dat 0x3002924, gOnHBlankA
dat 0x3002F30, DrawGlyphRamFunc
dat 0x3002F38, gOnHBlankB
dat 0x3003940, DecodeStringFunc
dat 0x3003944, PutOamLoRamFunc
dat 0x3004150, MapFloodCoreStepRamFunc
dat 0x30041E0, gWorkingMap
dat 0x3004690, gActiveUnit
dat 0x3005E70, ReadSramFast
dat 0x3005E74, VerifySramFast
dat 0x819431C, Pal_SystemObjects
dat 0x8194594, Pal_UnitSprites
dat 0x8194614, Pal_UnitSpritesPurple
dat 0x8194634, Pal_UnitSpritesExtra
dat 0x8199578, Img_FlamesParticles
dat 0x81995B8, Pal_FlamesParticles
dat 0x819C848, Img_WarpEffect
dat 0x819CF90, Pal_WarpEffect
dat 0x81C3FCC, gWeatherParticleTemplates
dat 0x83FD764, Img_BoxTalk_Bubble
dat 0x83FD884, Img_BoxTalk_Scroll
dat 0x841E3B8, Pal_TutorialCursors
dat 0x8421C78, Img_WmObjects
dat 0x84221D4, Pal_WmBox
dat 0x8424CD8, Pal_WmObjects
dat 0x85E9AA0, FaceConfig_WorldMap
dat 0x8B808AC, MsgTable
dat 0x8B857F8, gKeySt
dat 0x8B90658, gDefaultFaceConfig
dat 0x8B907C0, ProcScr_Face
dat 0x8B90870, ProcScr_08B90870
dat 0x8B909B8, gTalkSt
dat 0x8B909BC, ProcScr_TalkSkipListener
dat 0x8B909D4, ProcScr_Talk
dat 0x8B90A04, ProcScr_TalkLock
dat 0x8B90A0C, ProcScr_TalkMoveFace
dat 0x8B90A2C, ProcScr_TalkPause
dat 0x8B90A4C, ProcScr_TalkWaitForInput
dat 0x8B90D08, ProcScr_SceneReturnFromBackgroundTalk
dat 0x8B90D68, ProcScr_SceneEndFade
dat 0x8B90D88, ProcScr_Event
dat 0x8B90E28, ProcScr_EventDarkenThenFunc
dat 0x8B90E48, EventCmdInfoTable
dat 0x8B91588, BackgroundTable
dat 0x8B91A08, ProcScr_EventWaitForMu
dat 0x8B91A38, ProcScr_FlashCursor
dat 0x8B91A50, ProcScr_EventCursor
dat 0x8B91A78, ProcScr_EventWeatherChangeWithFade
dat 0x8B91DC4, ProcScr_GiveItem
dat 0x8B92414, ProcScr_WarpLoader
dat 0x8B924BC, ProcScr_GameControl
dat 0x8B92914, ProcScr_PalFade
dat 0x8B9292C, ProcScr_FadeToBlack
dat 0x8B9294C, ProcScr_FadeFromBlack
dat 0x8B9296C, ProcScr_FadeToWhite
dat 0x8B9298C, ProcScr_FadeFromWhite
dat 0x8B929DC, ProcScr_TemporaryLock
dat 0x8B92A28, Pal_AllBlack
dat 0x8B92A48, Pal_AllWhite
dat 0x8B92E38, ProcScr_CamMove
dat 0x8B92EB0, UnitLut
dat 0x8B932B4, gMapBaseTiles
dat 0x8B93374, ProcScr_PlayerPhase
dat 0x8B9362C, ProcScr_8B9362C
dat 0x8B93C54, ProcScr_WarpEffect
dat 0x8B93DDC, ProcScr_BackToUnitMenu
dat 0x8B93E0C, ProcScr_BackToFightItemReview
dat 0x8B959D4, MenuInfo_ItemSubMenu
dat 0x8B959F8, MenuInfo_ItemAction
dat 0x8B95A1C, MenuInfo_Staff
dat 0x8B95A40, MenuInfo_Item
dat 0x8B95A64, MenuInfo_FightBallistaReview
dat 0x8B95A88, MenuInfo_FightItemReview
dat 0x8B95AAC, MenuInfo_Unit
dat 0x8B95AF4, MenuInfo_Map
dat 0x8B95C98, MapSelectInfo_Fight
dat 0x8B969E4, ProcScr_SubtitleHelpDarkener
dat 0x8B96A14, ProcScr_8B96A14
dat 0x8B96D5C, ProcScr_FightPreview
dat 0x8B9A8A0, ProcScr_Menu
dat 0x8BE222C, ItemInfoTable
dat 0x8BE3888, MoveTable_PromotedInfantry
dat 0x8C9A200, ChapterInfoTable
dat 0x8C9C9C8, ChapterAssetLut
dat 0x8CA7518, Sprite_TutorialTargetCursor
dat 0x8CA7534, ProcScr_TutorialCursors
dat 0x8CA7554, ProcScr_TutorialCursorsCancelTimer
dat 0x8CC1C5C, ProcScr_08CC1C5C
dat 0x8CC1F6C, ProcScr_StatScreen
dat 0x8CC2A4C, ProcScr_BoxTalk
dat 0x8CC2AAC, ProcScr_08CC2AAC
dat 0x8CC2B84, ProcScr_BoxTalkMarker
dat 0x8CC2C00, ProcScr_MapWindowTerrain
dat 0x8CC2C60, ProcScr_MapWindowUnitPanel
dat 0x8CC2CE8, ProcScr_MapWindowUnitBurst
dat 0x8CC2D18, ProcScr_MapWindowStarter
dat 0x8CC2D38, ProcScr_MapWindowGoal
dat 0x8CC2D98, ProcScr_MapWindowSelectMenu
dat 0x8CC306C, ProcScr_08CC306C
dat 0x8CE4C50, ProcScr_PaletteFadeOutOfBlank
dat 0x8CE4C80, ProcScr_PaletteFadeIntoBlank
dat 0x8CE5DE4, ProcScr_08CE5DE4
dat 0x8CE76E8, ProcScr_WorldMap
dat 0x8CED888, CgBackgroundTable
