	const_def 2 ; object constants
	const SEAFOAMISLANDB2F_POKE_BALL

SeafoamIslandB2F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

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

	db 0 ; bg events

	db 0 ; object events

