MG_Mobile_Layout_FillBox: ; 49336
.row
	push bc
	push hl
.col
	ld [hli], a
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .row
	ret
; 49346

LoadOW_BGPal7:: ; 49409
	ld hl, Palette_TextBG7
	ld de, wBGPals1 palette PAL_BG_TEXT
	ld bc, 1 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	ret
; 49418

Palette_TextBG7: ; 49418
INCLUDE "gfx/font/bg_text.pal"
; 49420

INCLUDE "engine/tileset_palettes.asm"

_InitMG_Mobile_LinkTradePalMap: ; 49797
	hlcoord 0, 0, wAttrMap
	lb bc, 16, 2
	ld a, $4
	call MG_Mobile_Layout_FillBox
	ld a, $3
	ldcoord_a 0, 1, wAttrMap
	ldcoord_a 0, 14, wAttrMap
	hlcoord 2, 0, wAttrMap
	lb bc, 8, 18
	ld a, $5
	call MG_Mobile_Layout_FillBox
	hlcoord 2, 8, wAttrMap
	lb bc, 8, 18
	ld a, $6
	call MG_Mobile_Layout_FillBox
	hlcoord 0, 16, wAttrMap
	lb bc, 2, SCREEN_WIDTH
	ld a, $4
	call MG_Mobile_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 6, 1, wAttrMap
	call MG_Mobile_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 17, 1, wAttrMap
	call MG_Mobile_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 6, 9, wAttrMap
	call MG_Mobile_Layout_FillBox
	ld a, $3
	lb bc, 6, 1
	hlcoord 17, 9, wAttrMap
	call MG_Mobile_Layout_FillBox
	ld a, $2
	hlcoord 2, 16, wAttrMap
	ld [hli], a
	ld a, $7
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld a, $2
	ld [hl], a
	hlcoord 2, 17, wAttrMap
	ld a, $3
	ld bc, 6
	call ByteFill
	ret
; 49811

LoadTradeRoomBGPals: ; 49811
	ld hl, TradeRoomPalette
	ld de, wBGPals1 palette PAL_BG_GREEN
	ld bc, 6 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	farcall ApplyPals
	ret
; 49826

TradeRoomPalette: ; 49826
INCLUDE "gfx/trade/border.pal"
; 49856

InitMG_Mobile_LinkTradePalMap: ; 49856
	call _InitMG_Mobile_LinkTradePalMap
	ret
; 4985a
