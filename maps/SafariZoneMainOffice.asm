SafariZoneMainOffice_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

SafariZoneMainOffice_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 2, FUCHSIA_CITY
	warp_def $7, $3, 2, FUCHSIA_CITY

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 0
