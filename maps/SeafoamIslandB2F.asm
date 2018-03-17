	const_def 2 ; object constants
	const SEAFOAMISLANDB2F_POKE_BALL

SeafoamIslandB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafoamIslandB2FHyperPotion:
	itemball HYPER_POTION

SeafoamIslandB2FHiddenWaterStone:
	hiddenitem WATER_STONE, EVENT_SEAFOAM_ISLAND_1F_WATER_STONE

SeafoamIslandB2F_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event  5,  3, SEAFOAM_ISLAND_B1F, 4
	warp_event 15,  7, SEAFOAM_ISLAND_B1F, 5
	warp_event 19, 15, SEAFOAM_ISLAND_B1F, 6
	warp_event 25, 11, SEAFOAM_ISLAND_B1F, 7
	warp_event  5, 13, SEAFOAM_ISLAND_B3F, 1
	warp_event 25,  3, SEAFOAM_ISLAND_B3F, 2
	warp_event 25, 13, SEAFOAM_ISLAND_B3F, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event 27, 8, BGEVENT_ITEM, SeafoamIslandB2FHiddenWaterStone

	db 2 ; object events
	object_event 26,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandB2FHyperPotion, EVENT_SEAFOAM_ISLAND_B2F_HYPER_POTION
