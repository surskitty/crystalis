RuinsOfAlphAerodactylChamber_MapScriptHeader:
.MapTriggers:
	db 2
	maptrigger .CheckWall
	maptrigger .DummyTrigger

.MapCallbacks:
	db 1
	dbw MAPCALLBACK_TILES, .HiddenDoors

.CheckWall:
	checkevent EVENT_WALL_OPENED_IN_AERODACTYL_CHAMBER
	iftrue .OpenWall
	end

.OpenWall:
	priorityjump .WallOpenScript
	end

.DummyTrigger:
	end

.HiddenDoors:
	checkevent EVENT_WALL_OPENED_IN_AERODACTYL_CHAMBER
	iftrue .WallOpen
	changeblock $4, $0, $2e
.WallOpen:
	checkevent EVENT_SOLVED_AERODACTYL_PUZZLE
	iffalse .FloorClosed
	return

.FloorClosed:
	changeblock $2, $2, $1
	changeblock $4, $2, $2
	return

.WallOpenScript:
	pause 30
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	playsound SFX_STRENGTH
	changeblock $4, $0, $30
	reloadmappart
	earthquake 50
	dotrigger $1
	closetext
	end

MapRuinsOfAlphAerodactylChamberSignpost2Script:
	refreshscreen $0
	writebyte $2
	special Special_UnownPuzzle
	closetext
	iftrue UnknownScript_0x58df7
	end

UnknownScript_0x58df7:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_AERODACTYL_PUZZLE
	setflag ENGINE_UNLOCKED_UNOWNS_3
	domaptrigger RUINS_OF_ALPH_INNER_CHAMBER, $1
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock $2, $2, $18
	changeblock $4, $2, $19
	reloadmappart
	playsound SFX_STRENGTH
	earthquake 80
	applymovement PLAYER, MovementData_0x58e4d
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

MapRuinsOfAlphAerodactylChamberSignpost1Script:
	jumptext UnknownText_0x58ec2

MapRuinsOfAlphAerodactylChamberSignpost3Script:
	jumptext UnknownText_0x58ee7

MapRuinsOfAlphAerodactylChamberSignpost4Script:
	opentext
	writetext UnknownText_0x58e4f
	writebyte $1
	special Special_DisplayUnownWords
	closetext
	end

MapRuinsOfAlphAerodactylChamberSignpost5Script:
	checkevent EVENT_WALL_OPENED_IN_AERODACTYL_CHAMBER
	iftrue UnknownScript_0x58e46
	opentext
	writetext UnknownText_0x58e81
	writebyte $1
	special Special_DisplayUnownWords
	closetext
	end

UnknownScript_0x58e46:
	opentext
	writetext UnknownText_0x58ea2
	waitbutton
	closetext
	end

MovementData_0x58e4d:
	db $59 ; movement
	step_end

UnknownText_0x58e4f:
	text "Patterns appeared"
	line "on the walls…"
	done

; possibly unused.. again?
UnknownText_0x58e70:
	text "It's UNOWN text!"
	done

UnknownText_0x58e81:
	text "Patterns appeared"
	line "on the walls…"
	done

UnknownText_0x58ea2:
	text "There's a big hole"
	line "in the wall!"
	done

UnknownText_0x58ec2:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

UnknownText_0x58ee7:
	text "This flying #-"
	line "MON attacked its"

	para "prey with saw-like"
	line "fangs."
	done

RuinsOfAlphAerodactylChamber_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 5
	warp_def $9, $3, 4, RUINS_OF_ALPH_OUTSIDE
	warp_def $9, $4, 4, RUINS_OF_ALPH_OUTSIDE
	warp_def $3, $3, 8, RUINS_OF_ALPH_INNER_CHAMBER
	warp_def $3, $4, 9, RUINS_OF_ALPH_INNER_CHAMBER
	warp_def $0, $4, 1, RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM

.XYTriggers:
	db 0

.Signposts:
	db 6
	signpost 3, 2, SIGNPOST_READ, MapRuinsOfAlphAerodactylChamberSignpost1Script
	signpost 3, 5, SIGNPOST_READ, MapRuinsOfAlphAerodactylChamberSignpost1Script
	signpost 2, 3, SIGNPOST_UP, MapRuinsOfAlphAerodactylChamberSignpost2Script
	signpost 2, 4, SIGNPOST_UP, MapRuinsOfAlphAerodactylChamberSignpost3Script
	signpost 0, 3, SIGNPOST_UP, MapRuinsOfAlphAerodactylChamberSignpost4Script
	signpost 0, 4, SIGNPOST_UP, MapRuinsOfAlphAerodactylChamberSignpost5Script

.PersonEvents:
	db 0
