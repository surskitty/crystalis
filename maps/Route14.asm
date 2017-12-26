const_value set 2
	const ROUTE14_POKEFAN_M1
	const ROUTE14_YOUNGSTER
	const ROUTE14_POKEFAN_M2
	const ROUTE14_KIM

Route14_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

Kim:
	faceplayer
	opentext
	trade NPCTRADE_KIM
	waitbutton
	closetext
	end

TrainerPokefanmCarter:
	trainer EVENT_BEAT_POKEFANM_CARTER, POKEFANM, CARTER, PokefanmCarterSeenText, PokefanmCarterBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext PokefanmCarterAfterBattleText
	waitbutton
	closetext
	end

TrainerBird_keeperRoy:
	trainer EVENT_BEAT_BIRD_KEEPER_ROY, BIRD_KEEPER, ROY, Bird_keeperRoySeenText, Bird_keeperRoyBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext Bird_keeperRoyAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmTrevor:
	trainer EVENT_BEAT_POKEFANM_TREVOR, POKEFANM, TREVOR, PokefanmTrevorSeenText, PokefanmTrevorBeatenText, 0, .Script

.Script:
	end_if_just_battled
	opentext
	writetext PokefanmTrevorAfterBattleText
	waitbutton
	closetext
	end

PokefanmCarterSeenText:
	text "Let me tell you,"
	line "I had a hard time"

	para "catching my prized"
	line "#MON."
	done

PokefanmCarterBeatenText:
	text "Awaaah!"
	done

PokefanmCarterAfterBattleText:
	text "SQUIRTLE, CHARMAN-"
	line "DER and BULBASAUR…"

	para "I think that's a"
	line "well-balanced mix."
	done

Bird_keeperRoySeenText:
	text "My dream is to fly"
	line "with my beloved"
	cont "bird #MON."
	done

Bird_keeperRoyBeatenText:
	text "I can dream, but I"
	line "can't ever fly…"
	done

Bird_keeperRoyAfterBattleText:
	text "You have #MON"
	line "that know the HM"

	para "move FLY, don't"
	line "you? I envy you."
	done

PokefanmTrevorSeenText:
	text "Hi. Did you know…?"

	para "#MON get more"
	line "friendly if you"

	para "train them in a"
	line "place that they"
	cont "remember."
	done

PokefanmTrevorBeatenText:
	text "Where did I meet"
	line "this PSYDUCK?"
	done

PokefanmTrevorAfterBattleText:
	text "If only there were"
	line "an easy way to"

	para "identify where I"
	line "got my #MON…"
	done

Route14_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 0

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 4
	object_event SPRITE_POKEFAN_M, 15, 11, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmCarter, -1
	object_event SPRITE_YOUNGSTER, 27, 11, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBird_keeperRoy, -1
	object_event SPRITE_POKEFAN_M, 11, 6, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmTrevor, -1
	object_event SPRITE_TEACHER, 5, 7, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 4, Kim, -1
