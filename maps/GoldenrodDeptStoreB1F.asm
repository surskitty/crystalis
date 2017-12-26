const_value set 2
	const GOLDENRODDEPTSTOREB1F_POKE_BALL1
	const GOLDENRODDEPTSTOREB1F_POKE_BALL2
	const GOLDENRODDEPTSTOREB1F_POKE_BALL3
	const GOLDENRODDEPTSTOREB1F_POKE_BALL4
	const GOLDENRODDEPTSTOREB1F_BLACK_BELT1
	const GOLDENRODDEPTSTOREB1F_BLACK_BELT2
	const GOLDENRODDEPTSTOREB1F_BLACK_BELT3
	const GOLDENRODDEPTSTOREB1F_MACHOP

GoldenrodDeptStoreB1F_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 2
	dbw MAPCALLBACK_TILES, UnknownScript_0x7d781
	dbw MAPCALLBACK_NEWMAP, UnknownScript_0x7d7ac

UnknownScript_0x7d781:
	checkevent EVENT_RECEIVED_CARD_KEY
	iftrue UnknownScript_0x7d78a
	jump UnknownScript_0x7d791

UnknownScript_0x7d78a:
	changeblock $10, $4, $d
	jump UnknownScript_0x7d791

UnknownScript_0x7d791:
	checkevent EVENT_GOLDENROD_DEPT_STORE_B1F_LAYOUT_2
	iftrue .Layout2
	checkevent EVENT_GOLDENROD_DEPT_STORE_B1F_LAYOUT_3
	iftrue .Layout3
	changeblock $a, $8, $d
	return

.Layout2:
	changeblock $4, $a, $d
	return

.Layout3:
	changeblock $a, $c, $d
	return

UnknownScript_0x7d7ac:
	clearevent EVENT_GOLDENROD_UNDERGROUND_WAREHOUSE_BLOCKED_OFF
	return

GoldenrodDeptStoreB1FBlackBelt1Script:
	jumptextfaceplayer GoldenrodDeptStoreB1FBlackBelt1Text

GoldenrodDeptStoreB1FBlackBelt2Script:
	jumptextfaceplayer GoldenrodDeptStoreB1FBlackBelt2Text

GoldenrodDeptStoreB1FBlackBelt3Script:
	jumptextfaceplayer GoldenrodDeptStoreB1FBlackBelt3Text

MachopScript_0x7d7b9:
	opentext
	writetext UnknownText_0x7d8bb
	cry MACHOKE
	waitbutton
	closetext
	end

GoldenrodDeptStoreB1FEther:
	itemball ETHER

GoldenrodDeptStoreB1FAmuletCoin:
	itemball AMULET_COIN

GoldenrodDeptStoreB1FBurnHeal:
	itemball THICK_CLUB

GoldenrodDeptStoreB1FUltraBall:
	itemball ULTRA_BALL

GoldenrodDeptStoreB1FBlackBelt1Text:
	text "Hey, kid! You're"
	line "holding us up!"

	para "Our policy is to"
	line "work behind the"

	para "scenes where no"
	line "one can see us!"
	done

GoldenrodDeptStoreB1FBlackBelt2Text:
	text "I lose my passion"
	line "for work if some-"
	cont "one's watching."

	para "Come on, kid,"
	line "scoot!"
	done

GoldenrodDeptStoreB1FBlackBelt3Text:
	text "Oohah! Oohah!"

	para "The stuff on the"
	line "ground's junk."

	para "Take it if you"
	line "want it!"
	done

UnknownText_0x7d8bb:
	text "MACHOKE: Maaacho!"
	done

GoldenrodDeptStoreB1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $2, $11, 3, GOLDENROD_UNDERGROUND_WAREHOUSE
	warp_def $4, $9, 1, GOLDENROD_DEPT_STORE_ELEVATOR
	warp_def $4, $a, 2, GOLDENROD_DEPT_STORE_ELEVATOR

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 8
	object_event SPRITE_POKE_BALL, 15, 10, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodDeptStoreB1FEther, EVENT_GOLDENROD_DEPT_STORE_B1F_ETHER
	object_event SPRITE_POKE_BALL, 2, 14, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodDeptStoreB1FAmuletCoin, EVENT_GOLDENROD_DEPT_STORE_B1F_AMULET_COIN
	object_event SPRITE_POKE_BALL, 3, 6, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodDeptStoreB1FBurnHeal, EVENT_GOLDENROD_DEPT_STORE_B1F_BURN_HEAL
	object_event SPRITE_POKE_BALL, 15, 15, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodDeptStoreB1FUltraBall, EVENT_GOLDENROD_DEPT_STORE_B1F_ULTRA_BALL
	object_event SPRITE_BLACK_BELT, 10, 9, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreB1FBlackBelt1Script, -1
	object_event SPRITE_BLACK_BELT, 8, 4, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreB1FBlackBelt2Script, -1
	object_event SPRITE_BLACK_BELT, 13, 6, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreB1FBlackBelt3Script, -1
	object_event SPRITE_MACHOP, 7, 7, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MachopScript_0x7d7b9, -1
