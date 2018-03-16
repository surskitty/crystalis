LoadBattleMenu: ; 24ef2
	ld hl, BattleMenuHeader
	call LoadMenuHeader
	ld a, [wBattleMenuCursorBuffer]
	ld [wMenuCursorBuffer], a
	call InterpretBattleMenu
	ld a, [wMenuCursorBuffer]
	ld [wBattleMenuCursorBuffer], a
	call ExitMenu
	ret
; 24f0b

ContestBattleMenu: ; 24f13
	ld hl, MenuHeader_0x24f89
	call LoadMenuHeader
; 24f19

Function24f19: ; 24f19
	ld a, [wBattleMenuCursorBuffer]
	ld [wMenuCursorBuffer], a
	call _2DMenu
	ld a, [wMenuCursorBuffer]
	ld [wBattleMenuCursorBuffer], a
	call ExitMenu
	ret
; 24f2c

BattleMenuHeader: ; 24f2c
	db MENU_BACKUP_TILES ; flags
	menu_coords 8, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw MenuData_0x24f34
	db 1 ; default option
; 24f34

MenuData_0x24f34: ; 0x24f34
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	dn 2, 2 ; rows, columns
	db 6 ; spacing
	dba Strings24f3d
	dbw BANK(MenuData_0x24f34), 0
; 0x24f3d

Strings24f3d: ; 0x24f3d
	db "FIGHT@"
	db "<PKMN>@"
	db "PACK@"
	db "RUN@"
; 24f4e

MenuHeader_0x24f89: ; 24f89
	db MENU_BACKUP_TILES ; flags
	menu_coords 2, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw MenuData_0x24f91
	db 1 ; default option
; 24f91

MenuData_0x24f91: ; 24f91
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	dn 2, 2 ; rows, columns
	db 12 ; spacing
	dba Strings24f9a
	dba Function24fb2
; 24f9a

Strings24f9a: ; 24f9a
	db "FIGHT@"
	db "<PKMN>", "@"
	db "PARKBALL×  @"
	db "RUN@"
; 24fb2

Function24fb2: ; 24fb2
	hlcoord 13, 16
	ld de, wParkBallsRemaining
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ret
; 24fbf
