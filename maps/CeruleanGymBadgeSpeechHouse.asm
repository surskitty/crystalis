const_value set 2
	const CERULEANGYMBADGESPEECHHOUSE_POKEFAN_M

CeruleanGymBadgeSpeechHouse_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

CeruleanGymBadgeSpeechHousePokefanMScript:
	jumptextfaceplayer CeruleanGymBadgeSpeechHousePokefanMText

CeruleanGymBadgeSpeechHousePokefanMText:
	text "Are you collecting"
	line "KANTO GYM BADGES?"
	done

CeruleanGymBadgeSpeechHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 1, CERULEAN_CITY
	warp_def $7, $3, 1, CERULEAN_CITY

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 1
	object_event SPRITE_POKEFAN_M, 3, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanGymBadgeSpeechHousePokefanMScript, -1
