; More overworld event handling.


WarpToSpawnPoint:: ; 97c28
	ld hl, wStatusFlags2
	res STATUSFLAGS2_SAFARI_GAME_F, [hl]
	res STATUSFLAGS2_BUG_CONTEST_TIMER_F, [hl]
	ret
; 97c30

RunMemScript:: ; 97c30
; If there is no script here, we don't need to be here.
	ld a, [wMapReentryScriptQueueFlag]
	and a
	ret z
; Execute the script at (wMapReentryScriptBank):(wMapReentryScriptAddress).
	ld hl, wMapReentryScriptAddress
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wMapReentryScriptBank]
	call CallScript
	scf
; Clear the buffer for the next script.
	push af
	xor a
	ld hl, wMapReentryScriptQueueFlag
	ld bc, 8
	call ByteFill
	pop af
	ret
; 97c4f

LoadScriptBDE:: ; 97c4f
; If there's already a script here, don't overwrite.
	ld hl, wMapReentryScriptQueueFlag
	ld a, [hl]
	and a
	ret nz
; Set the flag
	ld [hl], 1
	inc hl
; Load the script pointer b:de into (wMapReentryScriptBank):(wMapReentryScriptAddress)
	ld [hl], b
	inc hl
	ld [hl], e
	inc hl
	ld [hl], d
	scf
	ret
; 97c5f

TryTileCollisionEvent:: ; 97c5f
	call GetFacingTileCoord
	ld [wEngineBuffer1], a
	ld c, a
	farcall CheckFacingTileForStdScript
	jr c, .done

	call CheckCutTreeTile
	jr nz, .whirlpool
	farcall TryCutOW
	jr .done

.whirlpool
	ld a, [wEngineBuffer1]
	call CheckWhirlpoolTile
	jr nz, .waterfall
	farcall TryWhirlpoolOW
	jr .done

.waterfall
	ld a, [wEngineBuffer1]
	call CheckWaterfallTile
	jr nz, .headbutt
	farcall TryWaterfallOW
	jr .done

.headbutt
	ld a, [wEngineBuffer1]
	call CheckHeadbuttTreeTile
	jr nz, .surf
	farcall TryHeadbuttOW
	jr c, .done
	jr .noevent

.surf
	farcall TrySurfOW
	jr nc, .noevent
	jr .done

.noevent
	xor a
	ret

.done
	call PlayClickSFX
	ld a, $ff
	scf
	ret
; 97cc0


RandomEncounter:: ; 97cc0
; Random encounter

	call CheckWildEncounterCooldown
	jr c, .nope
	call CanUseSweetScent
	jr nc, .nope
	ld hl, wStatusFlags2
	bit STATUSFLAGS2_BUG_CONTEST_TIMER_F, [hl]
	jr nz, .bug_contest
	farcall TryWildEncounter
	jr nz, .nope
	jr .ok

.bug_contest
	call _TryWildEncounter_BugContest
	jr nc, .nope
	jr .ok_bug_contest

.nope
	ld a, 1
	and a
	ret

.ok
	ld a, BANK(WildBattleScript)
	ld hl, WildBattleScript
	jr .done

.ok_bug_contest
	ld a, BANK(BugCatchingContestBattleScript)
	ld hl, BugCatchingContestBattleScript
	jr .done

.done
	call CallScript
	scf
	ret
; 97cf9

WildBattleScript: ; 97cf9
	randomwildmon
	startbattle
	reloadmapafterbattle
	end
; 97cfd

CanUseSweetScent:: ; 97cfd
	ld hl, wStatusFlags
	bit STATUSFLAGS_NO_WILD_ENCOUNTERS_F, [hl]
	jr nz, .no
	ld a, [wEnvironment]
	cp CAVE
	jr z, .ice_check
	cp DUNGEON
	jr z, .ice_check
	farcall CheckGrassCollision
	jr nc, .no

.ice_check
	ld a, [wPlayerStandingTile]
	call CheckIceTile
	jr z, .no
	scf
	ret

.no
	and a
	ret
; 97d23

_TryWildEncounter_BugContest: ; 97d23
	call TryWildEncounter_BugContest
	ret nc
	call ChooseWildEncounter_BugContest
	farcall CheckRepelEffect
	ret
; 97d31

ChooseWildEncounter_BugContest:: ; 97d31
; Pick a random mon out of ContestMons.

.loop
	call Random
	cp 100 << 1
	jr nc, .loop
	srl a

	ld hl, ContestMons
	ld de, 4
.CheckMon:
	sub [hl]
	jr c, .GotMon
	add hl, de
	jr .CheckMon

.GotMon:
	inc hl

; Species
	ld a, [hli]
	ld [wTempWildMonSpecies], a

; Min level
	ld a, [hli]
	ld d, a

; Max level
	ld a, [hl]

	sub d
	jr nz, .RandomLevel

; If min and max are the same.
	ld a, d
	jr .GotLevel

.RandomLevel:
; Get a random level between the min and max.
	ld c, a
	inc c
	call Random
	ld a, [hRandomAdd]
	call SimpleDivide
	add d

.GotLevel:
	ld [wCurPartyLevel], a

	xor a
	ret
; 97d64

TryWildEncounter_BugContest: ; 97d64
	ld a, [wPlayerStandingTile]
	call CheckSuperTallGrassTile
	ld b, 40 percent
	jr z, .ok
	ld b, 20 percent

.ok
	farcall ApplyMusicEffectOnEncounterRate
	farcall ApplyCleanseTagEffectOnEncounterRate
	call Random
	ld a, [hRandomAdd]
	cp b
	ret c
	ld a, 1
	and a
	ret
; 97d87


INCLUDE "data/wild/bug_contest_mons.asm"


DoBikeStep:: ; 97db3
	nop
	nop
	; If the bike shop owner doesn't have our number, or
	; if we've already gotten the call, we don't have to
	; be here.
	ld hl, wStatusFlags2
	bit STATUSFLAGS2_BIKE_SHOP_CALL_F, [hl]
	jr z, .NoCall

	; If we're not on the bike, we don't have to be here.
	ld a, [wPlayerState]
	cp PLAYER_BIKE
	jr nz, .NoCall

	; If we're not in an area of phone service, we don't
	; have to be here.
	call GetMapPhoneService
	and a
	jr nz, .NoCall

	; Check the bike step count and check whether we've
	; taken 65536 of them yet.
	ld hl, wBikeStep
	ld a, [hli]
	ld d, a
	ld e, [hl]
	cp 255
	jr nz, .increment
	ld a, e
	cp 255
	jr z, .dont_increment

.increment
	inc de
	ld [hl], e
	dec hl
	ld [hl], d

.dont_increment
	; If we've taken at least 1024 steps, have the bike
	;  shop owner try to call us.
	ld a, d
	cp HIGH(1024)
	jr c, .NoCall

	; If a call has already been queued, don't overwrite
	; that call.
	ld a, [wSpecialPhoneCallID]
	and a
	jr nz, .NoCall

	; Queue the call.
	ld a, SPECIALCALL_BIKESHOP
	ld [wSpecialPhoneCallID], a
	xor a
	ld [wSpecialPhoneCallID + 1], a
	ld hl, wStatusFlags2
	res STATUSFLAGS2_BIKE_SHOP_CALL_F, [hl]
	scf
	ret

.NoCall:
	xor a
	ret
; 97df9

ClearCmdQueue:: ; 97df9
	ld hl, wCmdQueue
	ld de, 6
	ld c, 4
	xor a
.loop
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loop
	ret
; 97e08

HandleCmdQueue:: ; 97e08
	ld hl, wCmdQueue
	xor a
.loop
	ld [hMapObjectIndexBuffer], a
	ld a, [hl]
	and a
	jr z, .skip
	push hl
	ld b, h
	ld c, l
	call HandleQueuedCommand
	pop hl

.skip
	ld de, CMDQUEUE_ENTRY_SIZE
	add hl, de
	ld a, [hMapObjectIndexBuffer]
	inc a
	cp CMDQUEUE_CAPACITY
	jr nz, .loop
	ret
; 97e25

WriteCmdQueue:: ; 97e31
	push bc
	push de
	call .GetNextEmptyEntry
	ld d, h
	ld e, l
	pop hl
	pop bc
	ret c
	ld a, b
	ld bc, CMDQUEUE_ENTRY_SIZE - 1
	call FarCopyBytes
	xor a
	ld [hl], a
	ret
; 97e45

.GetNextEmptyEntry: ; 97e45
	ld hl, wCmdQueue
	ld de, CMDQUEUE_ENTRY_SIZE
	ld c, CMDQUEUE_CAPACITY
.loop
	ld a, [hl]
	and a
	jr z, .done
	add hl, de
	dec c
	jr nz, .loop
	scf
	ret

.done
	ld a, CMDQUEUE_CAPACITY
	sub c
	and a
	ret
; 97e5c

DelCmdQueue:: ; 97e5c
	ld hl, wCmdQueue
	ld de, CMDQUEUE_ENTRY_SIZE
	ld c, CMDQUEUE_CAPACITY
.loop
	ld a, [hl]
	cp b
	jr z, .done
	add hl, de
	dec c
	jr nz, .loop
	and a
	ret

.done
	xor a
	ld [hl], a
	scf
	ret
; 97e72

_DelCmdQueue: ; 97e72
	ld hl, CMDQUEUE_TYPE
	add hl, bc
	ld [hl], 0
	ret
; 97e79

HandleQueuedCommand: ; 97e79
	ld hl, CMDQUEUE_TYPE
	add hl, bc
	ld a, [hl]
	cp 5
	jr c, .okay
	xor a

.okay
	ld e, a
	ld d, 0
	ld hl, .Jumptable
	add hl, de
	add hl, de
	add hl, de
	ld a, [hli]
	push af
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	rst FarCall
	ret
; 97e94

.Jumptable: ; 97e94
	dba CmdQueue_Null
	dba CmdQueue_Null2
	dba CmdQueue_StoneTable
	dba CmdQueue_Type3
	dba CmdQueue_Type4
; 97ea3

CmdQueueAnonymousJumptable: ; 97ea3
	ld hl, CMDQUEUE_05
	add hl, bc
	ld a, [hl]
	pop hl
	rst JumpTable
	ret
; 97eab

CmdQueueAnonJT_Increment: ; 97eab
	ld hl, CMDQUEUE_05
	add hl, bc
	inc [hl]
	ret
; 97eb1

CmdQueueAnonJT_Decrement: ; 97eb1
	ld hl, CMDQUEUE_05
	add hl, bc
	dec [hl]
	ret
; 97eb7

CmdQueue_Null: ; 97eb7
	ret
; 97eb8

CmdQueue_Null2: ; 97eb8
	call ret_2f3e
	ret
; 97ebc

CmdQueue_Type4: ; 97ebc
	call CmdQueueAnonymousJumptable
	; anonymous dw
	dw .zero
	dw .one
; 97ec3

.zero ; 97ec3
	ld a, [hSCY]
	ld hl, 4
	add hl, bc
	ld [hl], a
	call CmdQueueAnonJT_Increment
.one ; 97ecd
	ld hl, 1
	add hl, bc
	ld a, [hl]
	dec a
	ld [hl], a
	jr z, .finish
	and $1
	jr z, .add
	ld hl, 2
	add hl, bc
	ld a, [hSCY]
	sub [hl]
	ld [hSCY], a
	ret

.add
	ld hl, 2
	add hl, bc
	ld a, [hSCY]
	add [hl]
	ld [hSCY], a
	ret

.finish
	ld hl, 4
	add hl, bc
	ld a, [hl]
	ld [hSCY], a
	call _DelCmdQueue
	ret
; 97ef9

CmdQueue_Type3: ; 97ef9
	call CmdQueueAnonymousJumptable
	; anonymous dw
	dw .zero
	dw .one
	dw .two
; 97f02

.zero ; 97f02
	call .IsPlayerFacingDown
	jr z, .PlayerNotFacingDown
	call CmdQueueAnonJT_Increment
.one ; 97f0a
	call .IsPlayerFacingDown
	jr z, .PlayerNotFacingDown
	call CmdQueueAnonJT_Increment

	ld hl, 2
	add hl, bc
	ld a, [hl]
	ld [wd173], a
	ret
; 97f1b

.two ; 97f1b
	call .IsPlayerFacingDown
	jr z, .PlayerNotFacingDown
	call CmdQueueAnonJT_Decrement

	ld hl, 3
	add hl, bc
	ld a, [hl]
	ld [wd173], a
	ret
; 97f2c

.PlayerNotFacingDown: ; 97f2c
	ld a, $7f
	ld [wd173], a
	ld hl, 5
	add hl, bc
	ld [hl], 0
	ret
; 97f38

.IsPlayerFacingDown: ; 97f38
	push bc
	ld bc, wPlayerStruct
	call GetSpriteDirection
	and a
	pop bc
	ret
; 97f42

CmdQueue_StoneTable: ; 97f42
	ld de, wPlayerStruct
	ld a, NUM_OBJECT_STRUCTS
.loop
	push af

	ld hl, OBJECT_SPRITE
	add hl, de
	ld a, [hl]
	and a
	jr z, .next

	ld hl, OBJECT_MOVEMENTTYPE
	add hl, de
	ld a, [hl]
	cp SPRITEMOVEDATA_STRENGTH_BOULDER
	jr nz, .next

	ld hl, OBJECT_NEXT_TILE
	add hl, de
	ld a, [hl]
	call CheckPitTile
	jr nz, .next

	ld hl, OBJECT_DIRECTION_WALKING
	add hl, de
	ld a, [hl]
	cp STANDING
	jr nz, .next
	call HandleStoneQueue
	jr c, .fall_down_hole

.next
	ld hl, OBJECT_STRUCT_LENGTH
	add hl, de
	ld d, h
	ld e, l

	pop af
	dec a
	jr nz, .loop
	ret

.fall_down_hole
	pop af
	ret
; 97f7e
