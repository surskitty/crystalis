SelectMenu:: ; 13327

	call CheckRegisteredItem
	jr c, .NotRegistered
	jp UseRegisteredItem

.NotRegistered:
	call OpenText
	ld b, BANK(ItemMayBeRegisteredText)
	ld hl, ItemMayBeRegisteredText
	call MapTextbox
	call WaitButton
	jp CloseText
; 13340


ItemMayBeRegisteredText: ; 13340
	text_jump UnknownText_0x1c1cf3
	db "@"
; 13345


CheckRegisteredItem: ; 13345

	ld a, [wWhichRegisteredItem]
	and a
	jr z, .NoRegisteredItem
	and REGISTERED_POCKET
	rlca
	rlca
	ld hl, .Pockets
	rst JumpTable
	ret

.Pockets:
; entries correspond to *_POCKET constants
	dw .CheckItem
	dw .CheckBall
	dw .CheckKeyItem
	dw .CheckTMHM
	dw .CheckBerry

.CheckItem:
	ld hl, wNumItems
	call .CheckRegisteredNo
	jr c, .NoRegisteredItem
	inc hl
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	call .IsSameItem
	jr c, .NoRegisteredItem
	and a
	ret

.CheckKeyItem:
	ld a, [wRegisteredItem]
	ld hl, wKeyItems
	ld de, 1
	call IsInArray
	jr nc, .NoRegisteredItem
	ld a, [wRegisteredItem]
	ld [wCurItem], a
	and a
	ret

.CheckBall:
	ld hl, wNumBalls
.StandardCheck:
	call .CheckRegisteredNo
	jr nc, .NoRegisteredItem
	inc hl
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	call .IsSameItem
	jr c, .NoRegisteredItem
	ret

.CheckBerry:
	ld hl, wNumBerries
	jr .StandardCheck

.CheckTMHM:
	jr .NoRegisteredItem

.NoRegisteredItem:
	xor a
	ld [wWhichRegisteredItem], a
	ld [wRegisteredItem], a
	scf
	ret
; 133a6


.CheckRegisteredNo: ; 133a6
	ld a, [wWhichRegisteredItem]
	and REGISTERED_NUMBER
	dec a
	cp [hl]
	jr nc, .NotEnoughItems
	ld [wCurItemQuantity], a
	and a
	ret

.NotEnoughItems:
	scf
	ret
; 133b6


.IsSameItem: ; 133b6
	ld a, [wRegisteredItem]
	cp [hl]
	jr nz, .NotSameItem
	ld [wCurItem], a
	and a
	ret

.NotSameItem:
	scf
	ret
; 133c3


UseRegisteredItem: ; 133c3

	farcall CheckItemMenu
	ld a, [wItemAttributeParamBuffer]
	ld hl, .SwitchTo
	rst JumpTable
	ret

.SwitchTo:
; entries correspond to ITEMMENU_* constants
	dw .CantUse
	dw .NoFunction
	dw .NoFunction
	dw .NoFunction
	dw .Current
	dw .Party
	dw .Overworld
; 133df

.NoFunction: ; 133df
	call OpenText
	call CantUseItem
	call CloseText
	and a
	ret
; 133ea

.Current: ; 133ea
	call OpenText
	call DoItemEffect
	call CloseText
	and a
	ret
; 133f5

.Party: ; 133f5
	call RefreshScreen
	call FadeToMenu
	call DoItemEffect
	call CloseSubmenu
	call CloseText
	and a
	ret
; 13406

.Overworld: ; 13406
	call RefreshScreen
	ld a, 1
	ld [wUsingItemWithSelect], a
	call DoItemEffect
	xor a
	ld [wUsingItemWithSelect], a
	ld a, [wItemEffectSucceeded]
	cp 1
	jr nz, ._cantuse
	scf
	ld a, HMENURETURN_SCRIPT
	ld [hMenuReturn], a
	ret
; 13422

.CantUse: ; 13422
	call RefreshScreen

._cantuse
	call CantUseItem
	call CloseText
	and a
	ret
; 1342d
