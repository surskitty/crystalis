; Predef routines can be used with the "predef" and "predef_jump" macros.
; This preserves registers bc, de, hl and f.

add_predef: MACRO
\1Predef::
	dab \1
ENDM

PredefPointers:: ; 856b
	add_predef LearnMove ; $0
	add_predef HealParty ; this is both a special and a predef
	add_predef SmallFarFlagAction
	add_predef ComputeHPBarPixels
	add_predef FillPP
	add_predef TryAddMonToParty
	add_predef AddTempmonToParty
	add_predef SendGetMonIntoFromBox
	add_predef SendMonIntoBox
	add_predef AnimateHPBar
	add_predef CalcMonStats
	add_predef CalcMonStatC
	add_predef CanLearnTMHMMove
	add_predef GetTMHMMove
	add_predef LinkTextboxAtHL ; $ 10
	add_predef PrintMoveDesc
	add_predef PlaceGraphic
	add_predef CheckPlayerPartyForFitMon
	add_predef StartBattle
	add_predef FillInExpBar
	add_predef LearnLevelMoves
	add_predef FillMoves
	add_predef EvolveAfterBattle
	add_predef TradeAnimationPlayer2
	add_predef TradeAnimation
	add_predef CopyMonToTempMon
	add_predef ListMoves ; $20
	add_predef PlaceNonFaintStatus
	add_predef ListMovePP
	add_predef GetGender
	add_predef StatsScreenInit
	add_predef DrawPlayerHP
	add_predef PrintTempMonStats ; $28
	add_predef GetTypeName
	add_predef PrintMoveType
	add_predef PrintMonTypes
	add_predef GetUnownLetter
	add_predef LoadPoisonBGPals
	add_predef LoadSGBLayoutCGB
	add_predef Pokedex_GetArea
	add_predef DoBattleTransition
	add_predef PlayBattleAnim
	add_predef PartyMonItemName
	add_predef GetMonFrontpic
	add_predef GetMonBackpic
	add_predef GetAnimatedFrontpic
	add_predef DecompressGet2bpp ; $40
	add_predef CheckTypeMatchup
	add_predef NewPokedexEntry
	add_predef PlaceStatusString
	add_predef LoadMonAnimation
	add_predef AnimateFrontpic
	add_predef HOF_AnimateFrontpic
; 864c
