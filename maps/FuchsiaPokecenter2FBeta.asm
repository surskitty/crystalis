FuchsiaPokecenter2FBeta_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

FuchsiaPokecenter2FBeta_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $7, $0, 3, FUCHSIA_POKECENTER_1F

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 0
