TinTower2F_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

TinTower2F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $e, $a, 1, TIN_TOWER_3F
	warp_def $2, $a, 3, TIN_TOWER_1F

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 0
