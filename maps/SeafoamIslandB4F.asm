	const_def 2 ; object constants
	const SEAFOAMISLANDB4F_POKE_BALL

SeafoamIslandB4F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafoamIslandB4FHyperPotion:
	itemball HYPER_POTION

SeafoamIslandB4FHiddenWaterStone:
	hiddenitem WATER_STONE, EVENT_SEAFOAM_ISLAND_1F_WATER_STONE

SeafoamIslandB4F_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 11,  7, SEAFOAM_ISLAND_B3F, 4
	warp_event 25,  3, SEAFOAM_ISLAND_B3F, 5
	warp_event  2,  0, SEAFOAM_ISLAND_B3F, 6
	warp_event 13,  0, SEAFOAM_ISLAND_B3F, 7

	db 0 ; coord events

	db 2 ; bg events
	bg_event 27, 8, BGEVENT_ITEM, SeafoamIslandB4FHiddenWaterStone

	db 2 ; object events
	object_event 26,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandB4FHyperPotion, EVENT_SEAFOAM_ISLAND_B2F_HYPER_POTION
