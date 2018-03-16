_CheckForBattleTowerRules: ; 8b201
	ld hl, wStringBuffer2
	ld [hl], "3"
	inc hl
	ld [hl], "@"
	ld de, .PointerTables
	call BattleTower_ExecuteJumptable
	ret z
	call BattleTower_PleaseReturnWhenReady
	scf
	ret
; 8b215

.PointerTables: ; 8b215
	db 4
	dw .Functions
	dw .TextPointers

.Functions: ; 8b21a
	dw Function_PartyCountEq3
	dw Function_PartySpeciesAreUnique
	dw Function_PartyItemsAreUnique
	dw Function_HasPartyAnEgg
; 8b222

.TextPointers: ; 8b222
	dw JumpText_ExcuseMeYoureNotReady
	dw JumpText_OnlyThreeMonMayBeEntered
	dw JumpText_TheMonMustAllBeDifferentKinds
	dw JumpText_TheMonMustNotHoldTheSameItems
	dw JumpText_YouCantTakeAnEgg
; 8b22c

JumpText_ExcuseMeYoureNotReady: ; 0x8b22c
	; Excuse me. You're not ready.
	text_jump Text_ExcuseMeYoureNotReady
	db "@"
; 0x8b231

BattleTower_PleaseReturnWhenReady: ; 8b231
	ld hl, .PleaseReturnWhenReady
	call PrintText
	ret
; 8b238

.PleaseReturnWhenReady: ; 0x8b238
	; Please return when you're ready.
	text_jump UnknownText_0x1c5962
	db "@"
; 0x8b23d

JumpText_OnlyThreeMonMayBeEntered: ; 0x8b247
	; Only three #MON may be entered.
	text_jump Text_OnlyThreeMonMayBeEntered
	db "@"
; 0x8b24c

JumpText_TheMonMustAllBeDifferentKinds: ; 0x8b24c
	; The @  #MON must all be different kinds.
	text_jump Text_TheMonMustAllBeDifferentKinds
	db "@"
; 0x8b251

JumpText_TheMonMustNotHoldTheSameItems: ; 0x8b251
	; The @  #MON must not hold the same items.
	text_jump Text_TheMonMustNotHoldTheSameItems
	db "@"
; 0x8b256

JumpText_YouCantTakeAnEgg: ; 0x8b256
	; You can't take an EGG!
	text_jump Text_YouCantTakeAnEgg
	db "@"
; 0x8b25b

BattleTower_ExecuteJumptable: ; 8b25b
	ld bc, 0
.loop
	call .DoJumptableFunction
	call c, .PrintFailureText
	call .Next_CheckReachedEnd
	jr nz, .loop
	ld a, b
	and a
	ret
; 8b26c

.DoJumptableFunction: ; 8b26c
	push de
	push bc
	call .GetFunctionPointer
	ld a, c
	rst JumpTable
	pop bc
	pop de
	ret
; 8b276

.Next_CheckReachedEnd: ; 8b276
	inc c
	ld a, [de]
	cp c
	ret
; 8b27a

.GetFunctionPointer: ; 8b27a
	inc de
	ld a, [de]
	ld l, a
	inc de
	ld a, [de]
	ld h, a
	ret
; 8b281

.GetTextPointers: ; 8b281
	inc de
	inc de
	inc de
	ld a, [de]
	ld l, a
	inc de
	ld a, [de]
	ld h, a
	ret
; 8b28a

.LoadTextPointer: ; 8b28a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret
; 8b28e

.PrintFailureText: ; 8b28e
	push de
	push bc
	ld a, b
	and a
	call z, .PrintFirstText
	pop bc
	call .PrintNthText
	ld b, $1
	pop de
	ret
; 8b29d

.PrintFirstText: ; 8b29d
	push de
	call .GetTextPointers
	call .LoadTextPointer
	call PrintText
	pop de
	ret
; 8b2a9

.PrintNthText: ; 8b2a9
	push bc
	call .GetTextPointers
	inc hl
	inc hl
	ld b, $0
	add hl, bc
	add hl, bc
	call .LoadTextPointer
	call PrintText
	pop bc
	ret
; 8b2bb

Function_PartyCountEq3: ; 8b2da
	ld a, [wPartyCount]
	cp BATTLETOWER_PARTY_LENGTH
	ret z
	scf
	ret
; 8b2e2

Function_PartySpeciesAreUnique: ; 8b2e2
	ld hl, wPartyMon1Species
	call VerifyUniqueness
	ret
; 8b2e9

VerifyUniqueness: ; 8b2e9
	ld de, wPartyCount
	ld a, [de]
	inc de
	dec a
	jr z, .done
	ld b, a
.loop
	push hl
	push de
	ld c, b
	call .isegg
	jr z, .next
	ld a, [hl]
	and a
	jr z, .next
.loop2
	call .nextmon
	call .isegg
	jr z, .next2
	cp [hl]
	jr z, .gotcha

.next2
	dec c
	jr nz, .loop2

.next
	pop de
	pop hl
	call .nextmon
	dec b
	jr nz, .loop

.done
	and a
	ret

.gotcha
	pop de
	pop hl
	scf
	ret
; 8b31a

.nextmon ; 8b31a
	push bc
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	inc de
	pop bc
	ret
; 8b322

.isegg ; 8b322
	push bc
	ld b, a
	ld a, [de]
	cp EGG
	ld a, b
	pop bc
	ret
; 8b32a

Function_PartyItemsAreUnique: ; 8b32a
	ld hl, wPartyMon1Item
	call VerifyUniqueness
	ret
; 8b331

Function_HasPartyAnEgg: ; 8b331
	ld hl, wPartyCount
	ld a, [hli]
	ld c, a
.loop
	ld a, [hli]
	cp EGG
	jr z, .found
	dec c
	jr nz, .loop
	and a
	ret

.found
	scf
	ret
; 8b342
