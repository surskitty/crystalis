const_value set 2
	const VERMILIONMAGNETTRAINSPEECHHOUSE_POKEFAN_F
	const VERMILIONMAGNETTRAINSPEECHHOUSE_YOUNGSTER

VermilionMagnetTrainSpeechHouse_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

VermilionMagnetTrainSpeechHousePokefanFScript:
	jumptextfaceplayer VermilionMagnetTrainSpeechHousePokefanFText

VermilionMagnetTrainSpeechHouseYoungsterScript:
	jumptextfaceplayer VermilionMagnetTrainSpeechHouseYoungsterText

VermilionMagnetTrainSpeechHouseBookshelf:
	jumpstd picturebookshelf

VermilionMagnetTrainSpeechHousePokefanFText:
	text "Do you know about"
	line "the MAGNET TRAIN?"

	para "It's a railway"
	line "that goes to GOL-"
	cont "DENROD in JOHTO."
	done

VermilionMagnetTrainSpeechHouseYoungsterText:
	text "I want to go to"
	line "SAFFRON to see"
	cont "the MAGNET TRAIN."
	done

VermilionMagnetTrainSpeechHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 4, VERMILION_CITY
	warp_def $7, $3, 4, VERMILION_CITY

.CoordEvents:
	db 0

.BGEvents:
	db 2
	bg_event 1, 0, BGEVENT_READ, VermilionMagnetTrainSpeechHouseBookshelf
	bg_event 1, 1, BGEVENT_READ, VermilionMagnetTrainSpeechHouseBookshelf

.ObjectEvents:
	db 2
	object_event SPRITE_POKEFAN_F, 3, 2, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMagnetTrainSpeechHousePokefanFScript, -1
	object_event SPRITE_YOUNGSTER, 3, 0, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionMagnetTrainSpeechHouseYoungsterScript, -1
