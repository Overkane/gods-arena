//===========================================================================
// 
// Gods' Arena v0.17.1 Alpha
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Map Author: Overkane & Frotty
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************

globals
    // Generated
    rect                    gg_rct_Arena3              = null
    rect                    gg_rct_Arena3Center        = null
    rect                    gg_rct_Arena3Spawn1        = null
    rect                    gg_rct_Arena3Spawn2        = null
    rect                    gg_rct_Arena3Spawn3        = null
    rect                    gg_rct_Arena3Spawn4        = null
    rect                    gg_rct_ArenaBarrens        = null
    rect                    gg_rct_ArenaBarrensBotSpawn = null
    rect                    gg_rct_ArenaBarrensRespawnPoint = null
    rect                    gg_rct_ArenaBarrensTopSpawn = null
    rect                    gg_rct_ArenaForest         = null
    rect                    gg_rct_ArenaForestRespawnPoint = null
    rect                    gg_rct_ArenaForestTopLeftSpawn = null
    rect                    gg_rct_ArenaForestTopRightSpawn = null
    rect                    gg_rct_ArenaPond           = null
    rect                    gg_rct_ArenaPondRespawnPoint = null
    rect                    gg_rct_ArenaVolcano        = null
    rect                    gg_rct_ArenaVolcanoTopSpawn = null
    rect                    gg_rct_ArenaVolcanoBotSpawn = null
    rect                    gg_rct_ArenaVolcanoRightSpawn = null
    rect                    gg_rct_ArenaVolcanoLeftSpawn = null
    rect                    gg_rct_ArenaVolcanoRespawnPoint = null
    rect                    gg_rct_ArenaVolcanoDecor   = null
    rect                    gg_rct_ArenaPondBreathArea = null
    trigger                 gg_trg_rect_vars           = null
endglobals

function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_Arena3 = Rect( 2944.0, -2240.0, 7296.0, 1664.0 )
    set we = AddWeatherEffect( gg_rct_Arena3, 'RLlr' )
    call EnableWeatherEffect( we, true )
    set gg_rct_Arena3Center = Rect( 4768.0, -544.0, 5472.0, 32.0 )
    set gg_rct_Arena3Spawn1 = Rect( 3104.0, 1120.0, 3392.0, 1440.0 )
    set gg_rct_Arena3Spawn2 = Rect( 6816.0, 1152.0, 7104.0, 1472.0 )
    set gg_rct_Arena3Spawn3 = Rect( 6784.0, -2144.0, 7072.0, -1824.0 )
    set gg_rct_Arena3Spawn4 = Rect( 3168.0, -2112.0, 3456.0, -1792.0 )
    set gg_rct_ArenaBarrens = Rect( 9888.0, -3168.0, 14720.0, 1696.0 )
    set we = AddWeatherEffect( gg_rct_ArenaBarrens, 'WOlw' )
    call EnableWeatherEffect( we, true )
    set gg_rct_ArenaBarrensBotSpawn = Rect( 11168.0, -3104.0, 14592.0, -2784.0 )
    set gg_rct_ArenaBarrensRespawnPoint = Rect( 12288.0, -1792.0, 13056.0, -1024.0 )
    set gg_rct_ArenaBarrensTopSpawn = Rect( 9984.0, 1376.0, 13152.0, 1696.0 )
    set gg_rct_ArenaForest = Rect( -1856.0, -1344.0, 2080.0, 1312.0 )
    set gg_rct_ArenaForestRespawnPoint = Rect( -224.0, -928.0, 352.0, -448.0 )
    set gg_rct_ArenaForestTopLeftSpawn = Rect( -1536.0, 544.0, -960.0, 1056.0 )
    set gg_rct_ArenaForestTopRightSpawn = Rect( 1056.0, 512.0, 1632.0, 1024.0 )
    set gg_rct_ArenaPond = Rect( -2272.0, -7904.0, 2496.0, -2464.0 )
    set gg_rct_ArenaPondRespawnPoint = Rect( -160.0, -5056.0, 192.0, -4672.0 )
    set gg_rct_ArenaVolcano = Rect( 9856.0, -14592.0, 14688.0, -8704.0 )
    set gg_rct_ArenaVolcanoTopSpawn = Rect( 11648.0, -9056.0, 12576.0, -8832.0 )
    set gg_rct_ArenaVolcanoBotSpawn = Rect( 11648.0, -14432.0, 12576.0, -14208.0 )
    set gg_rct_ArenaVolcanoRightSpawn = Rect( 14304.0, -11488.0, 14496.0, -10720.0 )
    set gg_rct_ArenaVolcanoLeftSpawn = Rect( 10080.0, -11488.0, 10272.0, -10720.0 )
    set gg_rct_ArenaVolcanoRespawnPoint = Rect( 12384.0, -12928.0, 13152.0, -12352.0 )
    set gg_rct_ArenaVolcanoDecor = Rect( 11520.0, -12064.0, 13088.0, -10496.0 )
    set we = AddWeatherEffect( gg_rct_ArenaVolcanoDecor, 'FDrh' )
    call EnableWeatherEffect( we, true )
    set gg_rct_ArenaPondBreathArea = Rect( -1248.0, -6208.0, 1280.0, -3456.0 )
endfunction

//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: rect vars
//===========================================================================
function Trig_rect_vars_Actions takes nothing returns nothing
    call MoveRectToLoc( gg_rct_ArenaForestTopRightSpawn, GetRectCenter(GetPlayableMapRect()) )
endfunction

//===========================================================================
function InitTrig_rect_vars takes nothing returns nothing
    set gg_trg_rect_vars = CreateTrigger(  )
    call TriggerAddAction( gg_trg_rect_vars, function Trig_rect_vars_Actions )
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_rect_vars(  )
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation( Player(0), 0 )
    call SetPlayerColor( Player(0), ConvertPlayerColor(0) )
    call SetPlayerRacePreference( Player(0), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(0), false )
    call SetPlayerController( Player(0), MAP_CONTROL_USER )

    // Player 1
    call SetPlayerStartLocation( Player(1), 1 )
    call SetPlayerColor( Player(1), ConvertPlayerColor(1) )
    call SetPlayerRacePreference( Player(1), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(1), false )
    call SetPlayerController( Player(1), MAP_CONTROL_USER )

    // Player 2
    call SetPlayerStartLocation( Player(2), 2 )
    call SetPlayerColor( Player(2), ConvertPlayerColor(2) )
    call SetPlayerRacePreference( Player(2), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(2), false )
    call SetPlayerController( Player(2), MAP_CONTROL_USER )

    // Player 3
    call SetPlayerStartLocation( Player(3), 3 )
    call SetPlayerColor( Player(3), ConvertPlayerColor(3) )
    call SetPlayerRacePreference( Player(3), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(3), false )
    call SetPlayerController( Player(3), MAP_CONTROL_USER )

    // Player 4
    call SetPlayerStartLocation( Player(4), 4 )
    call SetPlayerColor( Player(4), ConvertPlayerColor(4) )
    call SetPlayerRacePreference( Player(4), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(4), false )
    call SetPlayerController( Player(4), MAP_CONTROL_USER )

    // Player 5
    call SetPlayerStartLocation( Player(5), 5 )
    call SetPlayerColor( Player(5), ConvertPlayerColor(5) )
    call SetPlayerRacePreference( Player(5), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(5), false )
    call SetPlayerController( Player(5), MAP_CONTROL_USER )

    // Player 6
    call SetPlayerStartLocation( Player(6), 6 )
    call SetPlayerColor( Player(6), ConvertPlayerColor(6) )
    call SetPlayerRacePreference( Player(6), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(6), false )
    call SetPlayerController( Player(6), MAP_CONTROL_USER )

    // Player 7
    call SetPlayerStartLocation( Player(7), 7 )
    call SetPlayerColor( Player(7), ConvertPlayerColor(7) )
    call SetPlayerRacePreference( Player(7), RACE_PREF_HUMAN )
    call SetPlayerRaceSelectable( Player(7), false )
    call SetPlayerController( Player(7), MAP_CONTROL_USER )

    // Player 8
    call SetPlayerStartLocation( Player(8), 8 )
    call SetPlayerColor( Player(8), ConvertPlayerColor(8) )
    call SetPlayerRacePreference( Player(8), RACE_PREF_UNDEAD )
    call SetPlayerRaceSelectable( Player(8), false )
    call SetPlayerController( Player(8), MAP_CONTROL_COMPUTER )

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_021
    call SetPlayerTeam( Player(0), 0 )
    call SetPlayerState( Player(0), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(1), 0 )
    call SetPlayerState( Player(1), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(2), 0 )
    call SetPlayerState( Player(2), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(3), 0 )
    call SetPlayerState( Player(3), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(4), 0 )
    call SetPlayerState( Player(4), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(5), 0 )
    call SetPlayerState( Player(5), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(6), 0 )
    call SetPlayerState( Player(6), PLAYER_STATE_ALLIED_VICTORY, 1 )
    call SetPlayerTeam( Player(7), 0 )
    call SetPlayerState( Player(7), PLAYER_STATE_ALLIED_VICTORY, 1 )

    //   Allied
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(0), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(1), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(2), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(3), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(4), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(6), true )
    call SetPlayerAllianceStateAllyBJ( Player(5), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(6), Player(7), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(0), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(1), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(2), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(3), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(4), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(5), true )
    call SetPlayerAllianceStateAllyBJ( Player(7), Player(6), true )

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(0), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(1), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(2), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(3), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(4), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(6), true )
    call SetPlayerAllianceStateVisionBJ( Player(5), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(6), Player(7), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(0), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(1), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(2), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(3), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(4), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(5), true )
    call SetPlayerAllianceStateVisionBJ( Player(7), Player(6), true )

    // Force: TRIGSTR_022
    call SetPlayerTeam( Player(8), 1 )
    call SetPlayerState( Player(8), PLAYER_STATE_ALLIED_VICTORY, 1 )

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount( 0, 7 )
    call SetStartLocPrio( 0, 0, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 0, 1, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 0, 2, 3, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 0, 3, 4, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 0, 4, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 0, 5, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 0, 6, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 1, 7 )
    call SetStartLocPrio( 1, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 1, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 2, 3, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 3, 4, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 4, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 5, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 1, 6, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 2, 7 )
    call SetStartLocPrio( 2, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 1, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 2, 3, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 3, 4, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 4, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 5, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 2, 6, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 3, 7 )
    call SetStartLocPrio( 3, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 3, 1, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 3, 2, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 3, 3, 4, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 3, 4, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 3, 5, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 3, 6, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 4, 7 )
    call SetStartLocPrio( 4, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 4, 1, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 4, 2, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 4, 3, 3, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 4, 4, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 4, 5, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 4, 6, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 5, 7 )
    call SetStartLocPrio( 5, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 1, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 2, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 3, 3, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 4, 4, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 5, 6, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 5, 6, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 6, 7 )
    call SetStartLocPrio( 6, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 1, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 2, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 3, 3, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 4, 4, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 5, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 6, 6, 7, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 7, 7 )
    call SetStartLocPrio( 7, 0, 0, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 1, 1, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 2, 2, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 3, 3, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 4, 4, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 5, 5, MAP_LOC_PRIO_HIGH )
    call SetStartLocPrio( 7, 6, 6, MAP_LOC_PRIO_HIGH )

    call SetStartLocPrioCount( 8, 3 )
    call SetStartLocPrio( 8, 0, 0, MAP_LOC_PRIO_LOW )
    call SetStartLocPrio( 8, 1, 1, MAP_LOC_PRIO_LOW )
    call SetStartLocPrio( 8, 2, 3, MAP_LOC_PRIO_LOW )

    call SetEnemyStartLocPrioCount( 8, 3 )
    call SetEnemyStartLocPrio( 8, 0, 1, MAP_LOC_PRIO_HIGH )
    call SetEnemyStartLocPrio( 8, 1, 2, MAP_LOC_PRIO_LOW )
    call SetEnemyStartLocPrio( 8, 2, 3, MAP_LOC_PRIO_HIGH )
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds( -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM) )
    call SetDayNightModels( "Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl" )
    call NewSoundEnvironment( "Default" )
    call SetAmbientDaySound( "LordaeronSummerDay" )
    call SetAmbientNightSound( "LordaeronSummerNight" )
    call SetMapMusic( "Music", true, 0 )
    call CreateRegions(  )
    call InitBlizzard(  )
    call InitGlobals(  )
    call InitCustomTriggers(  )

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName( "TRIGSTR_2326" )
    call SetMapDescription( "TRIGSTR_2328" )
    call SetPlayers( 9 )
    call SetTeams( 9 )
    call SetGamePlacement( MAP_PLACEMENT_TEAMS_TOGETHER )

    call DefineStartLocation( 0, -4032.0, 4032.0 )
    call DefineStartLocation( 1, -4032.0, 4032.0 )
    call DefineStartLocation( 2, -4032.0, 4032.0 )
    call DefineStartLocation( 3, -4032.0, 4032.0 )
    call DefineStartLocation( 4, -4032.0, 4032.0 )
    call DefineStartLocation( 5, -4032.0, 4032.0 )
    call DefineStartLocation( 6, -4032.0, 4032.0 )
    call DefineStartLocation( 7, -4032.0, 4032.0 )
    call DefineStartLocation( 8, -4032.0, 4032.0 )

    // Player setup
    call InitCustomPlayerSlots(  )
    call InitCustomTeams(  )
    call InitAllyPriorities(  )
endfunction

