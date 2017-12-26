const_value set 2
	const ROUTE4_YOUNGSTER
	const ROUTE4_LASS1
	const ROUTE4_LASS2
	const ROUTE4_POKE_BALL

Route4_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

TrainerBird_keeperHank:
	trainer EVENT_BEAT_BIRD_KEEPER_HANK, BIRD_KEEPER, HANK, Bird_keeperHankSeenText, Bird_keeperHankBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext Bird_keeperHankAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerHope:
	trainer EVENT_BEAT_PICNICKER_HOPE, PICNICKER, HOPE, PicnickerHopeSeenText, PicnickerHopeBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext PicnickerHopeAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerSharon:
	trainer EVENT_BEAT_PICNICKER_SHARON, PICNICKER, SHARON, PicnickerSharonSeenText, PicnickerSharonBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext PicnickerSharonAfterBattleText
	waitbutton
	closetext
	end

MtMoonSquareSign:
	jumptext MtMoonSquareSignText

Route4HPUp:
	itemball HP_UP

Route4HiddenUltraBall:
	dwb EVENT_ROUTE_4_HIDDEN_ULTRA_BALL, ULTRA_BALL


Bird_keeperHankSeenText:
	text "I'm raising my"
	line "#MON. Want to"
	cont "battle with me?"
	done

Bird_keeperHankBeatenText:
	text "Ack! I lost that"
	line "one…"
	done

Bird_keeperHankAfterBattleText:
	text "If you have a"
	line "specific #MON"

	para "that you want to"
	line "raise, put it out"

	para "first, then switch"
	line "it right away."

	para "That's how to do"
	line "it."
	done

PicnickerHopeSeenText:
	text "I have a feeling"
	line "that I can win."

	para "Let's see if I'm"
	line "right!"
	done

PicnickerHopeBeatenText:
	text "Aww, you are too"
	line "strong."
	done

PicnickerHopeAfterBattleText:
	text "I heard CLEFAIRY"
	line "appear at MT.MOON."

	para "But where could"
	line "they be?"
	done

PicnickerSharonSeenText:
	text "Um…"
	line "I…"
	done

PicnickerSharonBeatenText:
	text "…"
	done

PicnickerSharonAfterBattleText:
	text "……I'll go train"
	line "some more…"
	done

MtMoonSquareSignText:
	text "MT.MOON SQUARE"

	para "Just go up the"
	line "stairs."
	done

Route4_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $5, $2, 2, MOUNT_MOON

.CoordEvents:
	db 0

.BGEvents:
	db 2
	bg_event 7, 3, BGEVENT_READ, MtMoonSquareSign
	bg_event 3, 10, BGEVENT_ITEM, Route4HiddenUltraBall

.ObjectEvents:
	db 4
	object_event SPRITE_YOUNGSTER, 9, 17, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBird_keeperHank, -1
	object_event SPRITE_LASS, 8, 9, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerHope, -1
	object_event SPRITE_LASS, 6, 21, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerSharon, -1
	object_event SPRITE_POKE_BALL, 3, 26, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4HPUp, EVENT_ROUTE_4_HP_UP
