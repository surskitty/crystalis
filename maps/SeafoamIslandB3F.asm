	const_def 2 ; object constants
	const SEAFOAMISLANDB3F_POKE_BALL

SeafoamIslandB3F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SeafoamIslandB3FNugget:
	itemball NUGGET

SeafoamIslandB3FBrickPiece:
	itemball BRICK_PIECE

SeafoamIslandB3FRevive:
	itemball REVIVE

SeafoamIslandB3FEscapeRope:
	itemball ESCAPE_ROPE

SeafoamIslandB3FHiddenDragonScale:
	hiddenitem DRAGON_SCALE, EVENT_SEAFOAM_ISLAND_B3F_DRAGON_SCALE

SeafoamIslandB3FHiddenElixer:
	hiddenitem ELIXER, EVENT_SEAFOAM_ISLAND_B3F_ELIXER

SeafoamIslandB3F_MapEvents:
	db 0, 0 ; filler

	db 7 ; warp events
	warp_event  3, 11, SEAFOAM_ISLAND_B2F, 5
	warp_event 27,  1, SEAFOAM_ISLAND_B2F, 6
	warp_event 25, 13, SEAFOAM_ISLAND_B2F, 7
	warp_event  5,  7, SEAFOAM_ISLAND_B4F, 1
	warp_event 25,  3, SEAFOAM_ISLAND_B4F, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event 10,  3, BGEVENT_ITEM, SeafoamIslandB3FHiddenDragonScale
	bg_event 15, 10, BGEVENT_ITEM, SeafoamIslandB3FHiddenElixer

	db 4 ; object events
	object_event 22,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandB3FNugget, EVENT_SEAFOAM_ISLAND_B3F_NUGGET
	object_event 27, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandB3FBrickPiece, EVENT_SEAFOAM_ISLAND_B3F_BRICK_PIECE
	object_event  0, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandB3FRevive, EVENT_SEAFOAM_ISLAND_B3F_REVIVE
	object_event  6, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SeafoamIslandB3FEscapeRope, EVENT_SEAFOAM_ISLAND_B3F_ESCAPE_ROPE

