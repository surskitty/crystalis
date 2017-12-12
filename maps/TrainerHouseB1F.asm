const_value set 2
	const TRAINERHOUSEB1F_RECEPTIONIST
	const TRAINERHOUSEB1F_CHRIS

TrainerHouseB1F_MapScriptHeader:
.MapTriggers:
	db 1
	maptrigger .DummyTrigger

.MapCallbacks:
	db 0

.DummyTrigger:
	end

TrainerHouseReceptionistScript:
	spriteface PLAYER, UP
	opentext
	checkflag ENGINE_FOUGHT_IN_TRAINER_HALL_TODAY
	iftrue .FoughtTooManyTimes
	writetext TrainerHouseB1FIntroText
	buttonsound
	special SpecialTrainerHouse
	iftrue .MysteryPartner
	iffalse .DailyTrainer

.DailyTrainer:
	setflag ENGINE_FOUGHT_IN_TRAINER_HALL_TODAY
	writetext TrainerHouseB1FGoRightInText
	waitbutton
	closetext
	applymovement PLAYER, Movement_EnterTrainerHouseBattleRoom
	opentext
	writetext TrainerHouseB1FCalBeforeText
	waitbutton
	closetext
	winlosstext TrainerHouseB1FCalBeatenText, 0
	checkcode VAR_WEEKDAY
	if_equal SUNDAY, .LoadCynthia
	if_equal MONDAY, .LoadCarrie1
	if_equal TUESDAY, .LoadIris
	if_equal WEDNESDAY, .LoadCarrie2
	if_equal THURSDAY, .LoadGreen
	if_equal FRIDAY, .LoadCarrie3
	if_equal SATURDAY, .LoadCal
.LoadCal:
	opentext
	writetext TrainerHouseB1FCalBeforeText
	waitbutton
	closetext
	winlosstext TrainerHouseB1FCalBeatenText, 0
	loadtrainer CAL, CAL3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CAL
	jump .End
.LoadCarrie1:
	opentext
	writetext TrainerHouseB1FCarrieBeforeText
	waitbutton
	closetext
	winlosstext TrainerHouseB1FCarrieBeatenText, 0
	loadtrainer CAL, CARRIE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CARRIE1
	jump .End
.LoadCarrie2:
	opentext
	writetext TrainerHouseB1FCarrieBeforeText
	waitbutton
	closetext
	winlosstext TrainerHouseB1FCarrieBeatenText, 0
	loadtrainer CAL, CARRIE2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CARRIE2
	jump .End
.LoadCarrie3:
	opentext
	writetext TrainerHouseB1FCarrieBeforeText
	waitbutton
	closetext
	winlosstext TrainerHouseB1FCarrieBeatenText, 0
	loadtrainer CAL, CARRIE3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CARRIE3
	jump .End
.LoadCynthia:
	opentext
	writetext TrainerHouseB1FCynthiaBeforeText
	waitbutton
	closetext
	winlosstext TrainerHouseB1FCynthiaBeatenText, 0
	loadtrainer CAL, CYNTHIA
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CYNTHIA
	jump .End
.LoadIris:
	opentext
	writetext TrainerHouseB1FIrisBeforeText
	waitbutton
	closetext
	winlosstext TrainerHouseB1FIrisBeatenText, 0
	loadtrainer CAL, CARRIE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_IRIS
	jump .End
.LoadGreen:
	opentext
	writetext TrainerHouseB1FGreenBeforeText
	waitbutton
	closetext
	winlosstext TrainerHouseB1FGreenBeatenText, 0
	loadtrainer CAL, GREEN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GREEN
	jump .End

.MysteryPartner:
	setflag ENGINE_FOUGHT_IN_TRAINER_HALL_TODAY
	writetext TrainerHouseB1FGoRightInText
	waitbutton
	closetext
	applymovement PLAYER, Movement_EnterTrainerHouseBattleRoom
	opentext
	writetext TrainerHouseB1FCalBeforeText
	waitbutton
	closetext
	winlosstext TrainerHouseB1FCalBeatenText, 0
	setlasttalked TRAINERHOUSEB1F_CHRIS
	loadtrainer CAL, CAL2
	startbattle
	reloadmapafterbattle
.End:
	applymovement PLAYER, Movement_ExitTrainerHouseBattleRoom
	end

.FoughtTooManyTimes:
	writetext TrainerHouseB1FSecondChallengeDeniedText
	waitbutton
	closetext
	applymovement PLAYER, Movement_TrainerHouseTurnBack
	end

Movement_EnterTrainerHouseBattleRoom:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	turn_head RIGHT
	step_end

Movement_ExitTrainerHouseBattleRoom:
	step UP
	step UP
	step UP
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

Movement_TrainerHouseTurnBack:
	step RIGHT
	turn_head LEFT
	step_end

TrainerHouseB1FIntroText:
	text "Hi. Welcome to our"
	line "TRAINING HALL."

	para "You may battle a"
	line "trainer once per"
	cont "day."
	done

TrainerHouseB1FGoRightInText:
	text "Please go right"
	line "through."

	para "You may begin"
	line "right away."
	done

TrainerHouseB1FPleaseComeAgainText:
	text "Sorry. Only those"
	line "trainers who will"

	para "be battling are"
	line "allowed to go in."
	done

TrainerHouseB1FSecondChallengeDeniedText:
	text "I'm sorry."
	line "This would be your"

	para "second time today."
	line "You're permitted"

	para "to enter just once"
	line "a day."
	done

TrainerHouseB1FCalBeatenText:
	text "I lost…"
	line "Darn…"
	done

TrainerHouseB1FCalBeforeText:
	text "I traveled out"
	line "here just so I"
	cont "could battle you."
	done

TrainerHouseB1FCarrieBeatenText:
	text "I still can't"
	line "beat you…!"
	done

TrainerHouseB1FCarrieBeforeText:
	text "It's been a while"
	line "since Goldenrod!"
	done

TrainerHouseB1FCynthiaBeatenText:
	text "You, too, are"
	line "a legend."
	done

TrainerHouseB1FCynthiaBeforeText:
	text "I came for the"
	line "towers' legend."
	done

TrainerHouseB1FGreenBeatenText:
	text "Still in the"
	line "sidelines…!"
	done

TrainerHouseB1FGreenBeforeText:
	text "Not everyone from"
	line "Pallet does work."
	done

TrainerHouseB1FIrisBeatenText:
	text "Don't you take"
	line "my title!"
	done

TrainerHouseB1FIrisBeforeText:
	text "Dragons only like"
	line "the strongest."
	done

TrainerHouseB1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $4, $9, 3, TRAINER_HOUSE_1F

.XYTriggers:
	db 1
	xy_trigger 0, $3, $7, $0, TrainerHouseReceptionistScript, $0, $0

.Signposts:
	db 0

.PersonEvents:
	db 2
	person_event SPRITE_RECEPTIONIST, 1, 7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	person_event SPRITE_BUGSY, 11, 6, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
