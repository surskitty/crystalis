; Kanto Pokémon in grass

KantoGrassWildMons: ; 0x2b274

	map DIGLETTS_CAVE
	db 4 percent, 2 percent, 8 percent ; encounter rates: morn/day/nite
	; morn
	db 33, DIGLETT
	db 36, DIGLETT
	db 42, DIGLETT
	db 44, DIGLETT
	db 44, DUGTRIO
	db 44, DUGTRIO
	db 44, DUGTRIO
	; day
	db 32, DIGLETT
	db 34, DIGLETT
	db 38, DIGLETT
	db 46, DIGLETT
	db 46, DUGTRIO
	db 46, DUGTRIO
	db 46, DUGTRIO
	; nite
	db 34, DIGLETT
	db 38, DIGLETT
	db 46, DIGLETT
	db 52, DIGLETT
	db 52, DUGTRIO
	db 52, DUGTRIO
	db 52, DUGTRIO

	map MOUNT_MOON
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 36, ZUBAT
	db 38, GEODUDE
	db 38, SANDSHREW
	db 42, PARAS
	db 40, GEODUDE
	db 38, CLEFAIRY
	db 38, CLEFAIRY
	; day
	db 36, ZUBAT
	db 38, GEODUDE
	db 38, SANDSHREW
	db 42, PARAS
	db 40, GEODUDE
	db 38, CLEFAIRY
	db 38, CLEFAIRY
	; nite
	db 36, ZUBAT
	db 38, GEODUDE
	db 38, CLEFAIRY
	db 42, PARAS
	db 40, GEODUDE
	db 42, CLEFAIRY
	db 42, CLEFAIRY

	map ROCK_TUNNEL_1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 40, CUBONE
	db 41, GEODUDE
	db 42, MACHOP
	db 42, ZUBAT
	db 45, MACHOKE
	db 42, MAROWAK
	db 42, MAROWAK
	; day
	db 40, CUBONE
	db 41, GEODUDE
	db 42, MACHOP
	db 42, ZUBAT
	db 45, MACHOKE
	db 42, MAROWAK
	db 42, MAROWAK
	; nite
	db 42, ZUBAT
	db 41, GEODUDE
	db 42, GEODUDE
	db 47, HAUNTER
	db 45, ZUBAT
	db 45, ZUBAT
	db 45, ZUBAT

	map ROCK_TUNNEL_B1F
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 42, CUBONE
	db 44, GEODUDE
	db 46, STEELIX
	db 42, ZUBAT
	db 45, MAROWAK
	db 45, KANGASKHAN
	db 45, KANGASKHAN
	; day
	db 42, CUBONE
	db 44, GEODUDE
	db 46, STEELIX
	db 42, ZUBAT
	db 45, MAROWAK
	db 45, KANGASKHAN
	db 45, KANGASKHAN
	; nite
	db 42, ZUBAT
	db 44, GEODUDE
	db 46, STEELIX
	db 45, ZUBAT
	db 45, HAUNTER
	db 45, GOLBAT
	db 45, GOLBAT

	map VICTORY_ROAD
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 34, GRAVELER
	db 32, RHYHORN
	db 33, ONIX
	db 34, GOLBAT
	db 35, SANDSLASH
	db 35, RHYDON
	db 35, RHYDON
	; day
	db 34, GRAVELER
	db 32, RHYHORN
	db 33, ONIX
	db 34, GOLBAT
	db 35, SANDSLASH
	db 35, RHYDON
	db 35, RHYDON
	; nite
	db 34, GOLBAT
	db 34, GRAVELER
	db 32, ONIX
	db 36, GRAVELER
	db 38, GRAVELER
	db 40, GRAVELER
	db 40, GRAVELER

	map TOHJO_FALLS
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 22, ZUBAT
	db 22, RATICATE
	db 24, GOLBAT
	db 21, SLOWPOKE
	db 20, RATTATA
	db 23, SLOWPOKE
	db 23, SLOWPOKE
	; day
	db 22, ZUBAT
	db 22, RATICATE
	db 24, GOLBAT
	db 21, SLOWPOKE
	db 20, RATTATA
	db 23, SLOWPOKE
	db 23, SLOWPOKE
	; nite
	db 22, ZUBAT
	db 22, RATICATE
	db 24, GOLBAT
	db 21, SLOWPOKE
	db 20, RATTATA
	db 23, SLOWPOKE
	db 23, SLOWPOKE

	map ROUTE_1
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 42, PIDGEY
	db 42, RATTATA
	db 43, SENTRET
	db 43, PIDGEY
	db 46, FURRET
	db 44, PIDGEY
	db 44, PIDGEY
	; day
	db 42, PIDGEY
	db 42, RATTATA
	db 43, SENTRET
	db 43, PIDGEY
	db 46, FURRET
	db 44, PIDGEY
	db 44, PIDGEY
	; nite
	db 42, HOOTHOOT
	db 42, RATTATA
	db 43, RATTATA
	db 43, HOOTHOOT
	db 46, RATICATE
	db 44, HOOTHOOT
	db 44, HOOTHOOT

	map ROUTE_2
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 43, CATERPIE
	db 43, LEDYBA
	db 45, PIDGEY
	db 47, BUTTERFREE
	db 47, LEDIAN
	db 44, PIKACHU
	db 44, PIKACHU
	; day
	db 43, CATERPIE
	db 43, PIDGEY
	db 45, PIDGEY
	db 47, BUTTERFREE
	db 47, PIDGEOTTO
	db 44, PIKACHU
	db 44, PIKACHU
	; nite
	db 43, HOOTHOOT
	db 43, SPINARAK
	db 45, HOOTHOOT
	db 47, NOCTOWL
	db 47, ARIADOS
	db 44, NOCTOWL
	db 44, NOCTOWL

	map ROUTE_3
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 35, SPEAROW
	db 35, RATTATA
	db 38, EKANS
	db 40, RATICATE
	db 40, ARBOK
	db 40, SANDSHREW
	db 40, SANDSHREW
	; day
	db 35, SPEAROW
	db 35, RATTATA
	db 38, EKANS
	db 40, RATICATE
	db 40, ARBOK
	db 40, SANDSHREW
	db 40, SANDSHREW
	; nite
	db 35, RATTATA
	db 40, RATTATA
	db 40, RATICATE
	db 36, ZUBAT
	db 35, RATTATA
	db 36, CLEFAIRY
	db 36, CLEFAIRY

	map ROUTE_4
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 35, SPEAROW
	db 35, RATTATA
	db 38, EKANS
	db 40, RATICATE
	db 40, ARBOK
	db 40, SANDSHREW
	db 40, SANDSHREW
	; day
	db 35, SPEAROW
	db 35, RATTATA
	db 38, EKANS
	db 40, RATICATE
	db 40, ARBOK
	db 40, SANDSHREW
	db 40, SANDSHREW
	; nite
	db 35, RATTATA
	db 40, RATTATA
	db 40, RATICATE
	db 36, ZUBAT
	db 35, RATTATA
	db 36, CLEFAIRY
	db 36, CLEFAIRY

	map ROUTE_5
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 43, PIDGEY
	db 43, SNUBBULL
	db 45, PIDGEOTTO
	db 42, ABRA
	db 44, JIGGLYPUFF
	db 44, ABRA
	db 44, ABRA
	; day
	db 43, PIDGEY
	db 43, SNUBBULL
	db 45, PIDGEOTTO
	db 42, ABRA
	db 44, JIGGLYPUFF
	db 44, ABRA
	db 44, ABRA
	; nite
	db 43, HOOTHOOT
	db 43, MEOWTH
	db 45, NOCTOWL
	db 42, ABRA
	db 44, JIGGLYPUFF
	db 44, ABRA
	db 44, ABRA

	map ROUTE_6
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 33, RATTATA
	db 33, SNUBBULL
	db 34, MAGNEMITE
	db 35, RATICATE
	db 32, JIGGLYPUFF
	db 45, GRANBULL
	db 45, GRANBULL
	; day
	db 33, RATTATA
	db 33, SNUBBULL
	db 34, MAGNEMITE
	db 35, RATICATE
	db 42, JIGGLYPUFF
	db 45, GRANBULL
	db 45, GRANBULL
	; nite
	db 33, MEOWTH
	db 33, DROWZEE
	db 34, MAGNEMITE
	db 35, PSYDUCK
	db 42, JIGGLYPUFF
	db 35, RATICATE
	db 35, RATICATE

	map ROUTE_7
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 37, RATTATA
	db 37, SPEAROW
	db 38, SNUBBULL
	db 38, RATICATE
	db 38, JIGGLYPUFF
	db 36, ABRA
	db 36, ABRA
	; day
	db 37, RATTATA
	db 37, SPEAROW
	db 38, SNUBBULL
	db 38, RATICATE
	db 38, JIGGLYPUFF
	db 36, ABRA
	db 36, ABRA
	; nite
	db 37, MEOWTH
	db 37, MURKROW
	db 38, HOUNDOUR
	db 38, PERSIAN
	db 38, JIGGLYPUFF
	db 36, ABRA
	db 36, ABRA

	map ROUTE_8
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 37, SNUBBULL
	db 39, PIDGEOTTO
	db 36, ABRA
	db 37, GROWLITHE
	db 36, JIGGLYPUFF
	db 38, KADABRA
	db 38, KADABRA
	; day
	db 37, SNUBBULL
	db 39, PIDGEOTTO
	db 36, ABRA
	db 37, GROWLITHE
	db 36, JIGGLYPUFF
	db 38, KADABRA
	db 38, KADABRA
	; nite
	db 37, MEOWTH
	db 40, NOCTOWL
	db 36, ABRA
	db 37, HAUNTER
	db 36, JIGGLYPUFF
	db 38, KADABRA
	db 38, KADABRA

	map ROUTE_9
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 35, RATTATA
	db 35, MANKEY
	db 35, RATICATE
	db 35, FEAROW
	db 35, PRIMEAPE
	db 38, MAROWAK
	db 38, MAROWAK
	; day
	db 35, RATTATA
	db 35, MANKEY
	db 35, RATICATE
	db 35, FEAROW
	db 35, PRIMEAPE
	db 38, MAROWAK
	db 38, MAROWAK
	; nite
	db 35, RATTATA
	db 35, VENONAT
	db 35, MANKEY
	db 35, VENOMOTH
	db 35, ZUBAT
	db 38, RATICATE
	db 38, RATICATE

	map ROUTE_10_NORTH
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 35, ELEKID
	db 37, VOLTORB
	db 35, RATICATE
	db 35, FEAROW
	db 35, MAROWAK
	db 36, ELECTABUZZ
	db 36, ELECTABUZZ
	; day
	db 35, ELEKID
	db 37, VOLTORB
	db 35, RATICATE
	db 35, FEAROW
	db 35, MAROWAK
	db 38, ELECTABUZZ
	db 38, ELECTABUZZ
	; nite
	db 35, VENONAT
	db 37, VOLTORB
	db 35, RATICATE
	db 35, VENOMOTH
	db 35, ZUBAT
	db 36, ELECTABUZZ
	db 36, ELECTABUZZ

	map ROUTE_11
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 34, HOPPIP
	db 33, EKANS
	db 35, MAGNEMITE
	db 36, PIDGEOTTO
	db 36, SANDSHREW
	db 36, SKIPLOOM
	db 36, JUMPLUFF
	; day
	db 34, HOPPIP
	db 33, SANDSHREW
	db 35, MAGNEMITE
	db 36, PIDGEOTTO
	db 36, EKANS
	db 36, SKIPLOOM
	db 36, JUMPLUFF
	; nite
	db 34, DROWZEE
	db 33, MEOWTH
	db 35, MAGNEMITE
	db 36, NOCTOWL
	db 36, RATICATE
	db 36, HYPNO
	db 36, HYPNO

	map ROUTE_13
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 33, NIDORINO
	db 33, NIDORINA
	db 35, PIDGEOTTO
	db 35, HOPPIP
	db 37, HOPPIP
	db 35, CHANSEY
	db 35, CHANSEY
	; day
	db 33, NIDORINO
	db 33, NIDORINA
	db 35, PIDGEOTTO
	db 35, HOPPIP
	db 37, HOPPIP
	db 35, CHANSEY
	db 35, CHANSEY
	; nite
	db 33, VENONAT
	db 33, QUAGSIRE
	db 35, NOCTOWL
	db 35, VENOMOTH
	db 35, QUAGSIRE
	db 35, CHANSEY
	db 35, CHANSEY

	map ROUTE_14
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 36, NIDORINO
	db 36, NIDORINA
	db 38, PIDGEOTTO
	db 38, HOPPIP
	db 40, SKIPLOOM
	db 38, CHANSEY
	db 38, CHANSEY
	; day
	db 36, NIDORINO
	db 36, NIDORINA
	db 38, PIDGEOTTO
	db 38, HOPPIP
	db 40, SKIPLOOM
	db 38, CHANSEY
	db 38, CHANSEY
	; nite
	db 36, VENONAT
	db 36, QUAGSIRE
	db 38, NOCTOWL
	db 38, VENOMOTH
	db 38, QUAGSIRE
	db 38, CHANSEY
	db 38, CHANSEY

	map ROUTE_15
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 33, NIDORINO
	db 33, NIDORINA
	db 35, PIDGEOTTO
	db 35, HOPPIP
	db 37, HOPPIP
	db 35, CHANSEY
	db 35, CHANSEY
	; day
	db 33, NIDORINO
	db 33, NIDORINA
	db 35, PIDGEOTTO
	db 35, HOPPIP
	db 37, HOPPIP
	db 35, CHANSEY
	db 35, CHANSEY
	; nite
	db 33, VENONAT
	db 33, QUAGSIRE
	db 35, NOCTOWL
	db 35, VENOMOTH
	db 35, QUAGSIRE
	db 35, CHANSEY
	db 35, CHANSEY

	map ROUTE_16
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 36, GRIMER
	db 37, DODUO
	db 38, GRIMER
	db 39, FEAROW
	db 39, FEAROW
	db 30, MUK
	db 30, MUK
	; day
	db 36, GRIMER
	db 37, DODUO
	db 38, GRIMER
	db 39, SLUGMA
	db 39, FEAROW
	db 40, MUK
	db 40, MUK
	; nite
	db 36, GRIMER
	db 37, GRIMER
	db 38, GRIMER
	db 39, MURKROW
	db 39, MURKROW
	db 40, MUK
	db 40, MUK

	map ROUTE_17
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 40, FEAROW
	db 39, GRIMER
	db 41, GRIMER
	db 42, PONYTA
	db 43, RAPIDASH
	db 43, MUK
	db 43, MUK
	; day
	db 40, FEAROW
	db 39, SLUGMA
	db 39, GRIMER
	db 42, PONYTA
	db 42, SLUGMA
	db 43, MUK
	db 43, MUK
	; nite
	db 40, GRIMER
	db 39, GRIMER
	db 41, GRIMER
	db 42, MAGNETON
	db 43, ELECTRODE
	db 43, MUK
	db 43, MUK

	map ROUTE_18
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 36, GRIMER
	db 37, FEAROW
	db 38, GRIMER
	db 39, PONYTA
	db 39, RAPIDASH
	db 40, MUK
	db 40, MUK
	; day
	db 36, GRIMER
	db 37, FEAROW
	db 38, GRIMER
	db 39, SLUGMA
	db 39, MAGCARGO
	db 40, MUK
	db 40, MUK
	; nite
	db 36, GRIMER
	db 37, GRIMER
	db 38, GRIMER
	db 39, MAGNETON
	db 39, ELECTRODE
	db 40, MUK
	db 40, MUK

	map ROUTE_21
	db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; morn
	db 40, TANGELA
	db 35, RATTATA
	db 35, TANGELA
	db 40, IVYSAUR
	db 40, MR__MIME
	db 38, MR__MIME
	db 38, MR__MIME
	; day
	db 40, TANGELA
	db 35, RATTATA
	db 35, TANGELA
	db 40, IVYSAUR
	db 38, MR__MIME
	db 40, MR__MIME
	db 40, MR__MIME
	; nite
	db 40, TANGELA
	db 35, RATTATA
	db 35, TANGELA
	db 40, RATICATE
	db 40, TANGELA
	db 38, TANGELA
	db 38, TANGELA

	map ROUTE_22
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 33, RATTATA
	db 33, SPEAROW
	db 35, SPEAROW
	db 34, DODUO
	db 36, PONYTA
	db 37, FEAROW
	db 37, FEAROW
	; day
	db 33, RATTATA
	db 33, SPEAROW
	db 35, SPEAROW
	db 34, DODUO
	db 36, PONYTA
	db 37, FEAROW
	db 37, FEAROW
	; nite
	db 33, RATTATA
	db 33, POLIWAG
	db 35, RATTATA
	db 34, POLIWAG
	db 36, RATTATA
	db 37, RATTATA
	db 37, RATTATA

	map ROUTE_24
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 38, CATERPIE
	db 42, WEEDLE
	db 40, LEDYBA
	db 42, ABRA
	db 40, BELLSPROUT
	db 44, BUTTERFREE
	db 44, BUTTERFREE
	; day
	db 38, CATERPIE
	db 40, WEEDLE
	db 42, SUNKERN
	db 42, ABRA
	db 40, BELLSPROUT
	db 44, BUTTERFREE
	db 44, BUTTERFREE
	; nite
	db 40, VENONAT
	db 40, ODDISH
	db 42, SPINARAK
	db 42, ABRA
	db 40, BELLSPROUT
	db 44, GLOOM
	db 44, GLOOM

	map ROUTE_25
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 40, BELLSPROUT
	db 40, PIDGEOTTO
	db 40, KADABRA
	db 42, WEEPINBELL
	db 34, BEEDRILL
	db 34, BUTTERFREE
	db 34, BUTTERFREE
	; day
	db 40, BELLSPROUT
	db 40, PIDGEOTTO
	db 40, KADABRA
	db 42, WEEPINBELL
	db 34, BEEDRILL
	db 34, BUTTERFREE
	db 34, BUTTERFREE
	; nite
	db 40, ODDISH
	db 40, CHARMANDER
	db 40, VENONAT
	db 42, NOCTOWL
	db 40, BELLSPROUT
	db 34, CHARMELEON
	db 34, CHARMELEON

	map ROUTE_26
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 28, DODUO
	db 28, SANDSLASH
	db 32, PONYTA
	db 30, RATICATE
	db 30, DODUO
	db 30, ARBOK
	db 30, ARBOK
	; day
	db 28, DODUO
	db 28, SANDSLASH
	db 32, PONYTA
	db 30, RATICATE
	db 30, DODUO
	db 30, ARBOK
	db 30, ARBOK
	; nite
	db 28, NOCTOWL
	db 28, RATICATE
	db 32, NOCTOWL
	db 30, RATICATE
	db 30, QUAGSIRE
	db 30, QUAGSIRE
	db 30, QUAGSIRE

	map ROUTE_27
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 28, DODUO
	db 28, ARBOK
	db 30, RATICATE
	db 30, DODUO
	db 32, PONYTA
	db 30, DODRIO
	db 30, DODRIO
	; day
	db 28, DODUO
	db 28, ARBOK
	db 30, RATICATE
	db 30, DODUO
	db 32, PONYTA
	db 30, DODRIO
	db 30, DODRIO
	; nite
	db 28, QUAGSIRE
	db 28, NOCTOWL
	db 30, RATICATE
	db 30, QUAGSIRE
	db 32, NOCTOWL
	db 32, NOCTOWL
	db 32, NOCTOWL

	map ROUTE_28
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db 49, TANGELA
	db 50, PONYTA
	db 50, RAPIDASH
	db 52, ARBOK
	db 51, DODUO
	db 53, DODRIO
	db 53, DODRIO
	; day
	db 49, TANGELA
	db 50, PONYTA
	db 50, RAPIDASH
	db 52, ARBOK
	db 51, DODUO
	db 53, DODRIO
	db 53, DODRIO
	; nite
	db 49, TANGELA
	db 50, POLIWHIRL
	db 50, QUILAVA
	db 50, POLIWHIRL
	db 52, GOLBAT
	db 52, GOLBAT
	db 52, GOLBAT

	db -1 ; end
