RuinsOfAlphKabutoWordRoom_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

RuinsOfAlphKabutoWordRoom_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $5, $9, 3, RUINS_OF_ALPH_KABUTO_ITEM_ROOM
	warp_def $5, $a, 4, RUINS_OF_ALPH_KABUTO_ITEM_ROOM
	warp_def $b, $11, 4, RUINS_OF_ALPH_INNER_CHAMBER

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 0
