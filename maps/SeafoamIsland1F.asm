	const_def 2 ; object constants
	const SEAFOAMISLAND1F_GYM_GUY
	const SEAFOAMISLAND1F_POKE_BALL

SeafoamIsland1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafoamIsland1FHyperPotion:
	itemball HYPER_POTION

SeafoamIsland1FHiddenWaterStone:
	hiddenitem WATER_STONE, EVENT_SEAFOAM_ISLAND_1F_WATER_STONE

SeafoamGymGuyScript:
	faceplayer
	checkflag ENGINE_VOLCANOBADGE
	iftrue .GotBadge
	opentext
	writetext SeafoamGymGuyText
	waitbutton
	closetext
	end

.GotBadge:
	opentext
	writetext SeafoamGymGuyWinText
	waitbutton
	closetext
	end

SeafoamGymGuyText:
	text "Hey, trainer!"

	para "After the volcano,"
	line "BLAINE came from"
	cont "CINNABAR ISLAND."

	para "His fire #MON"
	line "have real trouble"
	cont "with water #MON."

	para "I hope he's doing"
	line "okay down there."
	done

SeafoamGymGuyWinText:
	text "Wow, he's still"
	line "training there?"

	para "I guess even"
	line "ARTICUNO can't"
	cont "stand his hot head."

	para "I heard it flew "
	line "off to JOHTO"
	cont "not long ago."
	done

SeafoamIsland1F_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  5, 16, ROUTE_20, 1
	warp_event 27, 16, ROUTE_20, 2
	warp_event  7,  5, SEAFOAM_ISLAND_B1F, 1
	warp_event 25,  3, SEAFOAM_ISLAND_B1F, 2
	warp_event 27, 16, SEAFOAM_ISLAND_B1F, 3

	db 0 ; coord events

	db 1 ; bg events
	bg_event 13, 7, BGEVENT_ITEM, SeafoamIsland1FHiddenWaterStone

	db 2 ; object events
	object_event  3, 12, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SeafoamGymGuyScript, -1
	object_event  21,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIsland1FHyperPotion, EVENT_SEAFOAM_ISLAND_1F_HYPER_POTION
