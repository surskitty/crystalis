	const_def 2 ; object constants
	const SEAFOAMISLANDB1F_POKE_BALL

SeafoamIslandB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafoamIslandB1FFullHeal:
	itemball FULL_HEAL

SeafoamIslandB1FHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_SEAFOAM_ISLAND_B1F_RARE_CANDY

SeafoamIslandB1F_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event  7,  5, SEAFOAM_ISLAND_1F, 3
	warp_event 25,  3, SEAFOAM_ISLAND_1F, 4
	warp_event 23, 15, SEAFOAM_ISLAND_1F, 5
	warp_event  3,  3, SEAFOAM_ISLAND_B2F, 1
	warp_event 13,  7, SEAFOAM_ISLAND_B2F, 2
	warp_event 19, 15, SEAFOAM_ISLAND_B2F, 3
	warp_event 25, 11, SEAFOAM_ISLAND_B2F, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 27, 8, BGEVENT_ITEM, SeafoamIslandB1FHiddenRareCandy

	db 1 ; object events
	object_event  3, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandB1FFullHeal, EVENT_SEAFOAM_ISLAND_B1F_FULL_HEAL
