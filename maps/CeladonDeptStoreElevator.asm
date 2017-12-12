CeladonDeptStoreElevator_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

MapCeladonDeptStoreElevatorSignpost0Script:
	opentext
	elevator Elevator_0x713be
	closetext
	iffalse UnknownScript_0x713bd
	pause 5
	playsound SFX_ELEVATOR
	earthquake 60
	waitsfx
UnknownScript_0x713bd:
	end


Elevator_0x713be:
	db 6 ; floors
	elevfloor FLOOR_1F, 4, CELADON_DEPT_STORE_1F
	elevfloor FLOOR_2F, 3, CELADON_DEPT_STORE_2F
	elevfloor FLOOR_3F, 3, CELADON_DEPT_STORE_3F
	elevfloor FLOOR_4F, 3, CELADON_DEPT_STORE_4F
	elevfloor FLOOR_5F, 3, CELADON_DEPT_STORE_5F
	elevfloor FLOOR_6F, 2, CELADON_DEPT_STORE_6F
	db $ff ; end


CeladonDeptStoreElevator_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $3, $1, 255, CELADON_DEPT_STORE_1F
	warp_def $3, $2, 255, CELADON_DEPT_STORE_1F

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 0, 3, SIGNPOST_READ, MapCeladonDeptStoreElevatorSignpost0Script

.PersonEvents:
	db 0
