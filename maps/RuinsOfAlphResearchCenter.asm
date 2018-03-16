	const_def 2 ; object constants
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST1
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST2
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST3

RuinsOfAlphResearchCenter_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING
	scene_script .GetUnownDex ; SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .ScientistCallback

.DummyScene0:
	end

.GetUnownDex:
	priorityjump .GetUnownDexScript
	end

.ScientistCallback:
	checkscene
	ifequal SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX, .ShowScientist
	return

.ShowScientist:
	moveobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, 3, 7
	appear RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	return

.GetUnownDexScript:
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, MovementData_0x5926f
	playsound SFX_BOOT_PC
	pause 60
	playsound SFX_SWITCH_POKEMON
	pause 30
	playsound SFX_TALLY
	pause 30
	playsound SFX_TRANSACTION
	pause 30
	turnobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, DOWN
	opentext
	writetext UnknownText_0x59278
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, MovementData_0x59274
	opentext
	writetext UnknownText_0x592fa
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_UNOWN_DEX
	writetext UnknownText_0x59311
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, MovementData_0x59276
	setscene SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING
	special RestartMapMusic
	end

ScientistScript_0x591d1:
	faceplayer
	opentext
	checkcode VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
	writetext UnknownText_0x59311
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext UnknownText_0x5935f
	waitbutton
	closetext
	end

ScientistScript_0x591e5:
	faceplayer
	opentext
	checkcode VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkflag ENGINE_UNOWN_DEX
	iftrue .GotUnownDex
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext UnknownText_0x593ed
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext UnknownText_0x59478
	waitbutton
	closetext
	end

.GotUnownDex:
	writetext UnknownText_0x59445
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext UnknownText_0x594cb
	waitbutton
	closetext
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	end

ScientistScript_0x59214:
	faceplayer
	opentext
	checkcode VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext UnknownText_0x5954f
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext UnknownText_0x595cb
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext UnknownText_0x59769
	waitbutton
	closetext
	end

MapRuinsOfAlphResearchCenterSignpost1Script:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	checkcode VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
.SkipChecking:
	writetext UnknownText_0x597b6
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext UnknownText_0x597d9
	waitbutton
	closetext
	end

MapRuinsOfAlphResearchCenterSignpost2Script:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	checkcode VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
.SkipChecking:
	writetext UnknownText_0x5980e
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext UnknownText_0x5982d
	waitbutton
	special UnownPrinter
	closetext
	end

MapRuinsOfAlphResearchCenterSignpost0Script:
	jumptext UnknownText_0x59886

MovementData_0x5926f:
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end

MovementData_0x59274:
	step DOWN
	step_end

MovementData_0x59276:
	step UP
	step_end

UnknownText_0x59278:
	text "Done!"

	para "I modified your"
	line "#DEX."

	para "I added an"
	line "optional #DEX"

	para "to store UNOWN"
	line "data."

	para "It records them in"
	line "the sequence that"
	cont "they were caught."
	done

UnknownText_0x592fa:
	text "<PLAYER>'s #DEX"
	line "was upgraded."
	done

UnknownText_0x59311:
	text "The UNOWN you"
	line "catch will all be"
	cont "recorded."

	para "Check to see how"
	line "many kinds exist."
	done

UnknownText_0x5935f:
	text "You caught all the"
	line "UNOWN variations?"

	para "That's a great"
	line "achievement!"

	para "I've set up the"
	line "printer here for"
	cont "handling UNOWN."

	para "Feel free to use"
	line "it anytime."
	done

UnknownText_0x593ed:
	text "The RUINS are"
	line "about 1500 years"
	cont "old."

	para "But it's not known"
	line "why they were"
	cont "built--or by whom."
	done

UnknownText_0x59445:
	text "I wonder how many"
	line "kinds of #MON"
	cont "are in the RUINS?"
	done

UnknownText_0x59478:
	text "#MON appeared"
	line "in the RUINS?"

	para "That's incredible"
	line "news!"

	para "We'll need to"
	line "investigate this."
	done

UnknownText_0x594cb:
	text "Our investigation,"
	line "with your help, is"

	para "giving us insight"
	line "into the RUINS."

	para "The RUINS appear"
	line "to have been built"

	para "as a habitat for"
	line "#MON."
	done

UnknownText_0x5954f:
	text "There are odd pat-"
	line "terns drawn on the"

	para "walls of the"
	line "RUINS."

	para "They must be the"
	line "keys for unravel-"
	cont "ing the mystery"
	cont "of the RUINS."
	done

UnknownText_0x595cb:
	text "The strange #-"
	line "MON you saw in the"
	cont "RUINS?"

	para "They appear to be"
	line "very much like the"

	para "drawings on the"
	line "walls there."

	para "Hmm…"

	para "That must mean"
	line "there are many"
	cont "kinds of them…"
	done

UnknownText_0x59769:
	text "Why did those"
	line "ancient patterns"

	para "appear on the wall"
	line "now?"

	para "The mystery"
	line "deepens…"
	done

UnknownText_0x597b6:
	text "RUINS OF ALPH"

	para "Exploration"
	line "Year 10"
	done

UnknownText_0x597d9:
	text "Mystery #MON"
	line "Name: UNOWN"

	para "A total of 26"
	line "kinds found."
	done

UnknownText_0x5980e:
	text "This doesn't seem"
	line "to work yet."
	done

UnknownText_0x5982d:
	text "UNOWN may be"
	line "printed out."
	done

UnknownText_0x59886:
	text "There are many"
	line "academic books."

	para "Ancient Ruins…"
	line "Mysteries of the"
	cont "Ancients…"
	done

RuinsOfAlphResearchCenter_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 6

	db 0 ; coord events

	db 3 ; bg events
	bg_event  6,  5, BGEVENT_READ, MapRuinsOfAlphResearchCenterSignpost0Script
	bg_event  3,  4, BGEVENT_READ, MapRuinsOfAlphResearchCenterSignpost1Script
	bg_event  7,  1, BGEVENT_READ, MapRuinsOfAlphResearchCenterSignpost2Script

	db 3 ; object events
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ScientistScript_0x591e5, -1
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ScientistScript_0x59214, -1
	object_event  2,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ScientistScript_0x591d1, EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
