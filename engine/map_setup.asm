RunMapSetupScript:: ; 15363
	ld a, [hMapEntryMethod]
	and $f
	dec a
	ld c, a
	ld b, 0
	ld hl, MapSetupScripts
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call ReadMapSetupScript
	ret
; 15377

INCLUDE "data/maps/setup_scripts.asm"

ReadMapSetupScript: ; 1541d
.loop
	ld a, [hli]
	cp -1
	ret z

	push hl

	ld c, a
	ld b, 0
	ld hl, MapSetupCommands
	add hl, bc
	add hl, bc
	add hl, bc

	; bank
	ld b, [hl]
	inc hl

	; address
	ld a, [hli]
	ld h, [hl]
	ld l, a

	; Bit 7 of the bank indicates a parameter.
	; This is left unused.
	bit 7, b
	jr z, .go

	pop de
	ld a, [de]
	ld c, a
	inc de
	push de

.go
	ld a, b
	and $7f
	rst FarCall

	pop hl
	jr .loop
; 15440

MapSetupCommands: ; 15440
; entries correspond to command indexes in constants/map_setup_constants.asm
	dba EnableLCD ; 00
	dba DisableLCD ; 01
	dba MapSetup_Sound_Off ; 02
	dba PlayMapMusic ; 03
	dba RestartMapMusic ; 04
	dba FadeToMapMusic ; 05
	dba RotatePalettesRightMapAndMusic ; 06
	dba EnterMapMusic ; 07
	dba ForceMapMusic ; 08
	dba FadeInMusic ; 09
	dba LoadBlockData ; 0a (callback 1)
	dba LoadNeighboringBlockData ; 0b
	dba SaveScreen ; 0c
	dba BufferScreen ; 0d
	dba LoadGraphics ; 0e
	dba LoadTileset ; 0f
	dba LoadMapTimeOfDay ; 10
	dba Special_LoadMapPalettes ; 11
	dba LoadWildMonData ; 12
	dba RefreshMapSprites ; 13
	dba HandleNewMap ; 14
	dba InitCommandQueue ; 15
	dba LoadObjectsRunCallback_02 ; 16
	dba LoadSpawnPoint ; 17
	dba EnterMapConnection ; 18
	dba LoadWarpData ; 19
	dba LoadMapAttributes ; 1a
	dba LoadMapAttributes_SkipPeople ; 1b
	dba ClearBGPalettes ; 1c
	dba Special_FadeOutPalettes ; 1d
	dba Special_FadeInPalettes ; 1e
	dba GetCoordOfUpperLeftCorner ; 1f
	dba RestoreFacingAfterWarp ; 20
	dba SpawnInFacingDown ; 21
	dba SpawnPlayer ; 22
	dba RefreshPlayerCoords ; 23
	dba DelayClearingOldSprites ; 24
	dba DelayLoadingNewSprites ; 25
	dba UpdateRoamMons ; 26
	dba JumpRoamMons ; 27
	dba FadeOldMapMusic ; 28
	dba ActivateMapAnims ; 29
	dba SuspendMapAnims ; 2a
	dba RetainOldPalettes ; 2b
	dba DontScrollText ; 2c
	dba ReturnFromMapSetupScript ; 2d
; 154ca


DontScrollText: ; 154ca
	xor a
	ld [wDisableTextAcceleration], a
	ret
; 154cf

ActivateMapAnims: ; 154cf
	ld a, $1
	ld [hMapAnims], a
	ret
; 154d3

SuspendMapAnims: ; 154d3
	xor a
	ld [hMapAnims], a
	ret
; 154d7

LoadObjectsRunCallback_02: ; 154d7
	ld a, MAPCALLBACK_OBJECTS
	call RunMapCallback
	farcall LoadObjectMasks
	farcall InitializeVisibleSprites
	ret
; 154ea (5:54ea)

; unused
	ret
; 154eb

DelayClearingOldSprites: ; 154eb
	ld hl, wPlayerSpriteSetupFlags
	set 7, [hl]
	ret
; 154f1

DelayLoadingNewSprites: ; 154f1
	ld hl, wPlayerSpriteSetupFlags
	set 6, [hl]
	ret

CheckReplaceKrisSprite: ; 154f7
	nop
	call .CheckBiking
	jr c, .ok
	call .CheckSurfing
	jr c, .ok
	call .CheckSurfing2
	jr c, .ok
	ret

.ok
	call ReplaceKrisSprite
	ret

.CheckBiking: ; 1550c (5:550c)
	and a
	ld hl, wBikeFlags
	bit 1, [hl]
	ret z
	ld a, PLAYER_BIKE
	ld [PlayerState], a
	scf
	ret

.CheckSurfing2: ; 1551a (5:551a)
	ld a, [PlayerState]
	cp PLAYER_NORMAL
	jr z, .nope
	cp PLAYER_SKATE
	jr z, .nope
	cp PLAYER_SURF
	jr z, .surfing
	cp PLAYER_SURF_PIKA
	jr z, .surfing
	call GetMapEnvironment
	cp INDOOR
	jr z, .checkbiking
	cp ENVIRONMENT_5
	jr z, .checkbiking
	cp DUNGEON
	jr z, .checkbiking
	jr .nope
.checkbiking
	ld a, [PlayerState]
	cp PLAYER_BIKE
	jr nz, .nope
.surfing
	ld a, PLAYER_NORMAL
	ld [PlayerState], a
	scf
	ret

.nope
	and a
	ret

.CheckSurfing: ; 1554e (5:554e)
	call CheckOnWater
	jr nz, .ret_nc
	ld a, [PlayerState]
	cp PLAYER_SURF
	jr z, ._surfing
	cp PLAYER_SURF_PIKA
	jr z, ._surfing
	ld a, PLAYER_SURF
	ld [PlayerState], a
._surfing
	scf
	ret
.ret_nc
	and a
	ret
; 15567

FadeOldMapMusic: ; 15567
	ld a, 6
	call SkipMusic
	ret
; 1556d

RetainOldPalettes: ; 1556d
	farcall _UpdateTimePals
	ret

RotatePalettesRightMapAndMusic: ; 15574
	ld e, 0
	ld a, [MusicFadeID]
	ld d, 0
	ld a, [MusicFadeID + 1]
	ld a, $4
	ld [MusicFade], a
	call RotateThreePalettesRight
	ret
; 15587

ForceMapMusic: ; 15587
	ld a, [PlayerState]
	cp PLAYER_BIKE
	jr nz, .notbiking
	call VolumeOff
	ld a, $88
	ld [MusicFade], a
.notbiking
	call TryRestartMapMusic
	ret
; 1559a
