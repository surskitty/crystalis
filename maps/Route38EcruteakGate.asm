const_value set 2
	const ROUTE38ECRUTEAKGATE_OFFICER

Route38EcruteakGate_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

Route38EcruteakGateOfficerScript:
	jumptextfaceplayer Route38EcruteakGateOfficerText

Route38EcruteakGateOfficerText:
	text "Where did you say"
	line "you're from?"

	para "NEW BARK TOWN?"

	para "PROF.ELM lives"
	line "over there, right?"

	para "You've come a long"
	line "way to get here."
	done

Route38EcruteakGate_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 4
	warp_def $4, $0, 1, ROUTE_38
	warp_def $5, $0, 2, ROUTE_38
	warp_def $4, $9, 14, ECRUTEAK_CITY
	warp_def $5, $9, 15, ECRUTEAK_CITY

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 1
	object_event SPRITE_OFFICER, 2, 5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route38EcruteakGateOfficerScript, -1
