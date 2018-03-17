	const_def 2 ; object constants
	const SEAFOAMISLANDB3F_POKE_BALL

SeafoamIslandB3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafoamIslandB3FHyperPotion:
	itemball HYPER_POTION

SeafoamIslandB3FHiddenWaterStone:
	hiddenitem WATER_STONE, EVENT_SEAFOAM_ISLAND_1F_WATER_STONE

SeafoamIslandB3F_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event  3, 11, SEAFOAM_ISLAND_B2F, 5
	warp_event 27,  1, SEAFOAM_ISLAND_B2F, 6
	warp_event 25, 13, SEAFOAM_ISLAND_B2F, 7
	warp_event  5,  7, SEAFOAM_ISLAND_B4F, 1
	warp_event 25,  3, SEAFOAM_ISLAND_B4F, 2
	warp_event 20, 17, SEAFOAM_ISLAND_B4F, 3
	warp_event 21, 17, SEAFOAM_ISLAND_B4F, 4

	db 0 ; coord events

	db 2 ; bg events
	bg_event 27, 8, BGEVENT_ITEM, SeafoamIslandB3FHiddenWaterStone

	db 2 ; object events
	object_event 26,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandB3FHyperPotion, EVENT_SEAFOAM_ISLAND_B2F_HYPER_POTION
