; Replaces the functionality of sgb.asm to work with CGB hardware.

LoadSGBLayoutCGB: ; 8d59
	ld a, b
	cp SCGB_RAM
	jr nz, .not_ram
	ld a, [wSGBPredef]
.not_ram
	cp SCGB_PARTY_MENU_HP_PALS
	jp z, CGB_ApplyPartyMenuHPPals
	call ResetBGPals
	ld l, a
	ld h, 0
	add hl, hl
	ld de, .dw
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, .ReturnFromJumpTable
	push de
	jp hl
; 8d79

.ReturnFromJumpTable: ; 8d79
	ret
; 8d7a

.dw ; 8d7a
	dw _CGB_BattleGrayscale
	dw _CGB_BattleColors
	dw _CGB_PokegearPals
	dw _CGB_StatsScreenHPPals
	dw _CGB_Pokedex
	dw _CGB_SlotMachine
	dw _CGB_Diploma
	dw _CGB_MapPals
	dw _CGB_PartyMenu
	dw _CGB_Evolution
	dw _CGB_MoveList
	dw _CGB_PokedexSearchOption
	dw _CGB_Pokepic
	dw _CGB_PackPals
	dw _CGB_TrainerCard
	dw _CGB_PokedexUnownMode
	dw _CGB_BillsPC
	dw _CGB_UnownPuzzle
	dw _CGB_GamefreakLogo
	dw _CGB_PlayerOrMonFrontpicPals
	dw _CGB_TradeTube
	dw _CGB_TrainerOrMonFrontpicPals
	dw _CGB_MysteryGift
; 8db8

_CGB_BattleGrayscale: ; 8db8
	ld hl, PalPacket_BattleGrayscale + 1
	ld de, wBGPals1
	ld c, 4
	call CopyPalettes
	ld hl, PalPacket_BattleGrayscale + 1
	ld de, wBGPals1 palette PAL_BATTLE_BG_EXP
	ld c, 4
	call CopyPalettes
	ld hl, PalPacket_BattleGrayscale + 1
	ld de, wOBPals1
	ld c, 2
	call CopyPalettes
	jr _CGB_FinishBattleScreenLayout

_CGB_BattleColors: ; 8ddb
	ld de, wBGPals1
	call GetBattlemonBackpicPalettePointer
	push hl
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_BG_PLAYER
	call GetEnemyFrontpicPalettePointer
	push hl
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_BG_ENEMY
	ld a, [wEnemyHPPal]
	ld l, a
	ld h, $0
	add hl, hl
	add hl, hl
	ld bc, HPBarPals
	add hl, bc
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_BG_ENEMY_HP
	ld a, [wPlayerHPPal]
	ld l, a
	ld h, $0
	add hl, hl
	add hl, hl
	ld bc, HPBarPals
	add hl, bc
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_BG_PLAYER_HP
	ld hl, ExpBarPalette
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_BG_EXP
	ld de, wOBPals1
	pop hl
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_OB_ENEMY
	pop hl
	call LoadPalette_White_Col1_Col2_Black ; PAL_BATTLE_OB_PLAYER
	ld a, SCGB_BATTLE_COLORS
	ld [wSGBPredef], a
	call ApplyPals
_CGB_FinishBattleScreenLayout: ; 8e23
	call InitPartyMenuBGPal7
	hlcoord 0, 0, wAttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, PAL_BATTLE_BG_ENEMY_HP
	call ByteFill
	hlcoord 0, 4, wAttrMap
	lb bc, 8, 10
	ld a, PAL_BATTLE_BG_PLAYER
	call FillBoxCGB
	hlcoord 10, 0, wAttrMap
	lb bc, 7, 10
	ld a, PAL_BATTLE_BG_ENEMY
	call FillBoxCGB
	hlcoord 0, 0, wAttrMap
	lb bc, 4, 10
	ld a, PAL_BATTLE_BG_ENEMY_HP
	call FillBoxCGB
	hlcoord 10, 7, wAttrMap
	lb bc, 5, 10
	ld a, PAL_BATTLE_BG_PLAYER_HP
	call FillBoxCGB
	hlcoord 10, 11, wAttrMap
	lb bc, 1, 9
	ld a, PAL_BATTLE_BG_EXP
	call FillBoxCGB
	hlcoord 0, 12, wAttrMap
	ld bc, 6 * SCREEN_WIDTH
	ld a, PAL_BATTLE_BG_TEXT
	call ByteFill
	ld hl, BattleObjectPals
	ld de, wOBPals1 palette PAL_BATTLE_OB_GRAY
	ld bc, 6 palettes
	ld a, BANK(wOBPals1)
	call FarCopyWRAM
	call ApplyAttrMap
	ret
; 8e85


InitPartyMenuBGPal7: ; 8e85
	ld hl, PartyMenuBGPalette
	ld de, wBGPals1 palette 7
	ld bc, 1 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	ret
; 8e9f

InitPartyMenuBGPal0: ; 8e9f
	ld hl, PartyMenuBGPalette
	ld de, wBGPals1 palette 0
	ld bc, 1 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	ret
; 8eb9

_CGB_PokegearPals: ; 8eb9
	ld a, [wPlayerGender]
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .male
	ld hl, FemalePokegearPals
	jr .got_pals

.male
	ld hl, MalePokegearPals
.got_pals
	ld de, wBGPals1
	ld bc, 6 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	call ApplyPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ret
; 8edb

_CGB_StatsScreenHPPals: ; 8edb
	ld de, wBGPals1
	ld a, [wCurHPPal]
	ld l, a
	ld h, $0
	add hl, hl
	add hl, hl
	ld bc, HPBarPals
	add hl, bc
	call LoadPalette_White_Col1_Col2_Black ; hp palette
	ld a, [wCurPartySpecies]
	ld bc, wTempMonDVs
	call GetPlayerOrMonPalettePointer
	call LoadPalette_White_Col1_Col2_Black ; mon palette
	ld hl, ExpBarPalette
	call LoadPalette_White_Col1_Col2_Black ; exp palette
	ld hl, StatsScreenPagePals
	ld de, wBGPals1 palette 3
	ld bc, 3 palettes ; pink, green, and blue page palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	call WipeAttrMap

	hlcoord 0, 0, wAttrMap
	lb bc, 8, SCREEN_WIDTH
	ld a, $1 ; mon palette
	call FillBoxCGB

	hlcoord 10, 16, wAttrMap
	ld bc, 10
	ld a, $2 ; exp palette
	call ByteFill

	hlcoord 13, 5, wAttrMap
	lb bc, 2, 2
	ld a, $3 ; pink page palette
	call FillBoxCGB

	hlcoord 15, 5, wAttrMap
	lb bc, 2, 2
	ld a, $4 ; green page palette
	call FillBoxCGB

	hlcoord 17, 5, wAttrMap
	lb bc, 2, 2
	ld a, $5 ; blue page palette
	call FillBoxCGB

	call ApplyAttrMap
	call ApplyPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ret
; 8f52

StatsScreenPagePals: ; 8f52
INCLUDE "gfx/stats/pages.pal"
; 8f6a

StatsScreenPals: ; 8f6a
INCLUDE "gfx/stats/stats.pal"
; 8f70

_CGB_Pokedex: ; 8f70
	ld de, wBGPals1
	ld a, PREDEFPAL_POKEDEX
	call GetPredefPal
	call LoadHLPaletteIntoDE ; dex interface palette
	ld a, [wCurPartySpecies]
	cp $ff
	jr nz, .is_pokemon
	ld hl, .PokedexQuestionMarkPalette
	call LoadHLPaletteIntoDE ; green question mark palette
	jr .got_palette

.is_pokemon
	call GetMonPalettePointer_
	call LoadPalette_White_Col1_Col2_Black ; mon palette
.got_palette
	call WipeAttrMap
	hlcoord 1, 1, wAttrMap
	lb bc, 7, 7
	ld a, $1 ; green question mark palette
	call FillBoxCGB
	call InitPartyMenuOBPals
	ld hl, .PokedexCursorPalette
	ld de, wOBPals1 palette 7 ; green cursor palette
	ld bc, 1 palettes
	ld a, BANK(wOBPals1)
	call FarCopyWRAM
	call ApplyAttrMap
	call ApplyPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ret
; 8fba

.PokedexQuestionMarkPalette: ; 8fba
INCLUDE "gfx/pokedex/question_mark.pal"
; 8fc2

.PokedexCursorPalette: ; 8fc2
INCLUDE "gfx/pokedex/cursor.pal"
; 8fca

_CGB_BillsPC: ; 8fca
	ld de, wBGPals1
	ld a, PREDEFPAL_POKEDEX
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, [wCurPartySpecies]
	cp $ff
	jr nz, .GetMonPalette
	ld hl, .BillsPCOrangePalette
	call LoadHLPaletteIntoDE
	jr .Resume

.GetMonPalette:
	ld bc, wTempMonDVs
	call GetPlayerOrMonPalettePointer
	call LoadPalette_White_Col1_Col2_Black
.Resume:
	call WipeAttrMap
	hlcoord 1, 4, wAttrMap
	lb bc, 7, 7
	ld a, $1
	call FillBoxCGB
	call InitPartyMenuOBPals
	call ApplyAttrMap
	call ApplyPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ret
; 9009

.BillsPCOrangePalette: ; 9036
INCLUDE "gfx/pc/orange.pal"
; 903e

_CGB_PokedexUnownMode: ; 903e
	ld de, wBGPals1
	ld a, PREDEFPAL_POKEDEX
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, [wCurPartySpecies]
	call GetMonPalettePointer_
	call LoadPalette_White_Col1_Col2_Black
	call WipeAttrMap
	hlcoord 7, 5, wAttrMap
	lb bc, 7, 7
	ld a, $1
	call FillBoxCGB
	call InitPartyMenuOBPals
	call ApplyAttrMap
	call ApplyPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ret
; 906e

_CGB_SlotMachine: ; 906e
	ld hl, SlotMachinePals
	ld de, wBGPals1
	ld bc, 16 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	call WipeAttrMap
	hlcoord 0, 2, wAttrMap
	lb bc, 10, 3
	ld a, $2
	call FillBoxCGB
	hlcoord 17, 2, wAttrMap
	lb bc, 10, 3
	ld a, $2
	call FillBoxCGB
	hlcoord 0, 4, wAttrMap
	lb bc, 6, 3
	ld a, $3
	call FillBoxCGB
	hlcoord 17, 4, wAttrMap
	lb bc, 6, 3
	ld a, $3
	call FillBoxCGB
	hlcoord 0, 6, wAttrMap
	lb bc, 2, 3
	ld a, $4
	call FillBoxCGB
	hlcoord 17, 6, wAttrMap
	lb bc, 2, 3
	ld a, $4
	call FillBoxCGB
	hlcoord 4, 2, wAttrMap
	lb bc, 2, 12
	ld a, $1
	call FillBoxCGB
	hlcoord 3, 2, wAttrMap
	lb bc, 10, 1
	ld a, $1
	call FillBoxCGB
	hlcoord 16, 2, wAttrMap
	lb bc, 10, 1
	ld a, $1
	call FillBoxCGB
	hlcoord 0, 12, wAttrMap
	ld bc, $78
	ld a, $7
	call ByteFill
	call ApplyAttrMap
	call ApplyPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ret
; 90f8

_CGB_Diploma: ; 91ad
	ld hl, DiplomaPalettes
	ld de, wBGPals1
	ld bc, 16 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM

	ld hl, PalPacket_Diploma + 1
	call CopyFourPalettes
	call WipeAttrMap
	call ApplyAttrMap
	ret
; 91c8

_CGB_MapPals: ; 91c8
	call LoadMapPals
	ld a, SCGB_MAPPALS
	ld [wSGBPredef], a
	ret
; 91d1

_CGB_PartyMenu: ; 91d1
	ld hl, PalPacket_PartyMenu + 1
	call CopyFourPalettes
	call InitPartyMenuBGPal0
	call InitPartyMenuBGPal7
	call InitPartyMenuOBPals
	call ApplyAttrMap
	ret
; 91e4

_CGB_Evolution: ; 91e4
	ld de, wBGPals1
	ld a, c
	and a
	jr z, .pokemon
	ld a, PREDEFPAL_BLACKOUT
	call GetPredefPal
	call LoadHLPaletteIntoDE
	jr .got_palette

.pokemon
	ld hl, wPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	call AddNTimes
	ld c, l
	ld b, h
	ld a, [wPlayerHPPal]
	call GetPlayerOrMonPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld hl, BattleObjectPals
	ld de, wOBPals1 palette PAL_BATTLE_OB_GRAY
	ld bc, 6 palettes
	ld a, BANK(wOBPals1)
	call FarCopyWRAM

.got_palette
	call WipeAttrMap
	call ApplyAttrMap
	call ApplyPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ret
; 9228

_CGB_UnownPuzzle: ; 925e
	ld hl, PalPacket_UnownPuzzle + 1
	call CopyFourPalettes
	ld de, wOBPals1
	ld a, PREDEFPAL_UNOWN_PUZZLE
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, [rSVBK]
	push af
	ld a, BANK(wOBPals1)
	ld [rSVBK], a
	ld hl, wOBPals1
	ld a, LOW(palred 31 + palgreen 0 + palblue 0)
	ld [hli], a
	ld a, HIGH(palred 31 + palgreen 0 + palblue 0)
	ld [hl], a
	pop af
	ld [rSVBK], a
	call WipeAttrMap
	call ApplyAttrMap
	ret
; 9289

_CGB_TrainerCard: ; 9289
	ld de, wBGPals1
	xor a ; CHRIS
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld a, FALKNER ; KRIS
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld a, BUGSY
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld a, WHITNEY
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld a, MORTY
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld a, CHUCK
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld a, JASMINE
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld a, PRYCE
	call GetTrainerPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	ld a, PREDEFPAL_CGB_BADGE
	call GetPredefPal
	call LoadHLPaletteIntoDE

	; fill screen with opposite-gender palette for the card border
	hlcoord 0, 0, wAttrMap
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, [wPlayerGender]
	and a
	ld a, $1 ; kris
	jr z, .got_gender
	ld a, $0 ; chris
.got_gender
	call ByteFill
	; fill trainer sprite area with same-gender palette
	hlcoord 14, 1, wAttrMap
	lb bc, 7, 5
	ld a, [wPlayerGender]
	and a
	ld a, $0 ; chris
	jr z, .got_gender2
	ld a, $1 ; kris
.got_gender2
	call FillBoxCGB
	; top-right corner still uses the border's palette
	hlcoord 18, 1, wAttrMap
	ld [hl], $1
	hlcoord 2, 11, wAttrMap
	lb bc, 2, 4
	ld a, $1 ; falkner
	call FillBoxCGB
	hlcoord 6, 11, wAttrMap
	lb bc, 2, 4
	ld a, $2 ; bugsy
	call FillBoxCGB
	hlcoord 10, 11, wAttrMap
	lb bc, 2, 4
	ld a, $3 ; whitney
	call FillBoxCGB
	hlcoord 14, 11, wAttrMap
	lb bc, 2, 4
	ld a, $4 ; morty
	call FillBoxCGB
	hlcoord 2, 14, wAttrMap
	lb bc, 2, 4
	ld a, $5 ; chuck
	call FillBoxCGB
	hlcoord 6, 14, wAttrMap
	lb bc, 2, 4
	ld a, $6 ; jasmine
	call FillBoxCGB
	hlcoord 10, 14, wAttrMap
	lb bc, 2, 4
	ld a, $7 ; pryce
	call FillBoxCGB
	; clair uses kris's palette
	ld a, [wPlayerGender]
	and a
	push af
	jr z, .got_gender3
	hlcoord 14, 14, wAttrMap
	lb bc, 2, 4
	ld a, $1
	call FillBoxCGB
.got_gender3
	pop af
	ld c, $0
	jr nz, .got_gender4
	inc c
.got_gender4
	ld a, c
	hlcoord 18, 1, wAttrMap
	ld [hl], a
	call ApplyAttrMap
	call ApplyPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ret
; 9373

_CGB_MoveList: ; 9373
	ld de, wBGPals1
	ld a, PREDEFPAL_GOLDENROD
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld a, [wPlayerHPPal]
	ld l, a
	ld h, 0
	add hl, hl
	add hl, hl
	ld bc, HPBarPals
	add hl, bc
	call LoadPalette_White_Col1_Col2_Black
	call WipeAttrMap
	hlcoord 11, 1, wAttrMap
	lb bc, 2, 9
	ld a, $1
	call FillBoxCGB
	call ApplyAttrMap
	call ApplyPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ret
; 93a6

_CGB_PokedexSearchOption: ; 93ba
	ld de, wBGPals1
	ld a, PREDEFPAL_POKEDEX
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrMap
	call ApplyAttrMap
	call ApplyPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ret
; 93d3

_CGB_PackPals: ; 93d3
; pack pals
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	jr z, .tutorial_male

	ld a, [wPlayerGender]
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .tutorial_male

	ld hl, .KrisPackPals
	jr .got_gender

.tutorial_male
	ld hl, .ChrisPackPals

.got_gender
	ld de, wBGPals1
	ld bc, 8 palettes ; 6 palettes?
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	call WipeAttrMap
	hlcoord 0, 0, wAttrMap
	lb bc, 1, 10
	ld a, $1
	call FillBoxCGB
	hlcoord 10, 0, wAttrMap
	lb bc, 1, 10
	ld a, $2
	call FillBoxCGB
	hlcoord 7, 2, wAttrMap
	lb bc, 9, 1
	ld a, $3
	call FillBoxCGB
	hlcoord 0, 7, wAttrMap
	lb bc, 3, 5
	ld a, $4
	call FillBoxCGB
	hlcoord 0, 3, wAttrMap
	lb bc, 3, 5
	ld a, $5
	call FillBoxCGB
	call ApplyAttrMap
	call ApplyPals
	ld a, $1
	ld [hCGBPalUpdate], a
	ret
; 9439

.ChrisPackPals: ; 9439
INCLUDE "gfx/pack/pack.pal"
; 9469

.KrisPackPals: ; 9469
INCLUDE "gfx/pack/pack_f.pal"
; 9499

_CGB_Pokepic: ; 9499
	call _CGB_MapPals
	ld de, SCREEN_WIDTH
	hlcoord 0, 0, wAttrMap
	ld a, [wMenuBorderTopCoord]
.loop
	and a
	jr z, .found_top
	dec a
	add hl, de
	jr .loop

.found_top
	ld a, [wMenuBorderLeftCoord]
	ld e, a
	ld d, $0
	add hl, de
	ld a, [wMenuBorderTopCoord]
	ld b, a
	ld a, [wMenuBorderBottomCoord]
	inc a
	sub b
	ld b, a
	ld a, [wMenuBorderLeftCoord]
	ld c, a
	ld a, [wMenuBorderRightCoord]
	sub c
	inc a
	ld c, a
	ld a, $0
	call FillBoxCGB
	call ApplyAttrMap
	ret
; 94d0

_CGB_GamefreakLogo: ; 94fa
	ld de, wBGPals1
	ld a, PREDEFPAL_GAMEFREAK_LOGO
	call GetPredefPal
	call LoadHLPaletteIntoDE
	ld hl, .Palette
	ld de, wOBPals1
	call LoadHLPaletteIntoDE
	ld hl, .Palette
	ld de, wOBPals1 palette 1
	call LoadHLPaletteIntoDE
	call WipeAttrMap
	call ApplyAttrMap
	call ApplyPals
	ret
; 9521

.Palette: ; 9521
INCLUDE "gfx/splash/logo.pal"
; 9529

_CGB_PlayerOrMonFrontpicPals: ; 9529
	ld de, wBGPals1
	ld a, [wCurPartySpecies]
	ld bc, wTempMonDVs
	call GetPlayerOrMonPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	call WipeAttrMap
	call ApplyAttrMap
	call ApplyPals
	ret
; 9542

_CGB_TradeTube: ; 9555
	ld hl, PalPacket_TradeTube + 1
	call CopyFourPalettes
	ld hl, PartyMenuOBPals
	ld de, wOBPals1
	ld bc, 1 palettes
	ld a, BANK(wOBPals1)
	call FarCopyWRAM
	ld de, wOBPals1 palette 7
	ld a, PREDEFPAL_TRADE_TUBE
	call GetPredefPal
	call LoadHLPaletteIntoDE
	call WipeAttrMap
	ret
; 9578

_CGB_TrainerOrMonFrontpicPals: ; 9578
	ld de, wBGPals1
	ld a, [wCurPartySpecies]
	ld bc, wTempMonDVs
	call GetFrontpicPalettePointer
	call LoadPalette_White_Col1_Col2_Black
	call WipeAttrMap
	call ApplyAttrMap
	call ApplyPals
	ret
; 9591

_CGB_MysteryGift: ; 9591
	ld hl, .Palettes
	ld de, wBGPals1
	ld bc, 2 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	call ApplyPals
	call WipeAttrMap
	hlcoord 3, 7, wAttrMap
	lb bc, 8, 14
	ld a, $1
	call FillBoxCGB
	hlcoord 1, 5, wAttrMap
	lb bc, 1, 18
	ld a, $1
	call FillBoxCGB
	hlcoord 1, 16, wAttrMap
	lb bc, 1, 18
	ld a, $1
	call FillBoxCGB
	hlcoord 0, 0, wAttrMap
	lb bc, 17, 2
	ld a, $1
	call FillBoxCGB
	hlcoord 18, 5, wAttrMap
	lb bc, 12, 1
	ld a, $1
	call FillBoxCGB
	call ApplyAttrMap
	ret
; 95e0

.Palettes: ; 95e0
INCLUDE "gfx/mystery_gift/mystery_gift.pal"
; 95f0
