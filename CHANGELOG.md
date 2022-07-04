--------------------- SUPER MARIO 64 PORT ~ CATALAN TRANSLATION ---------------------
--------------------------------------CHANGELOG--------------------------------------
Versió actual / Current version: 0.5 (beta) ~ [2022-07-04]
-------------------------------------------------------------------------------------

<CAT> Aquest registre de versions (changelog) està tant en català com en anglès, en
aquest ordre. Per a més informació de cada versió si us plau referiu-vos al
responsable de la qual.

<ENG> This changelog is in Catalan and English, in this exact order. For more
information please refer to it's responsible.

-------------------------------------------------------------------------------------
2022-07-04  v0.5(beta)  Nilcm01 <@Nilcm01>

    <CAT> Traducció completa dels diàlegs:

        * text/us/courses.h: Alguns noms de nivells corregits.
        * text/us/dialogs.h: Tots els diàlegs restants traduïts i corregits.
    
    <ENG> Dialogs fully translated:

        * text/us/courses.h: Some course names corrected.
        * text/us/dialogs.h: All left dialogs translated and corrected.

    

2021-12-13  v0.4(beta)  Nilcm01 <@Nilcm01>

    <CAT> Tots els menús traduïts i afegit sistema d'accents:

        * actors/power_meter: Afegides textures en català de la força/vida.
        * bin/segment2.c: Afegits els caràcters japonesos a la font de la
        versió US que mostra les textures modificades dels accents.
        * include/text_strings.h.in: Modificats alguns textos de menús i
        el diàleg del final del joc.
        * levels/ending: Afegida textura del pastís de "gràcies" de
        l'escena final del joc.
        * levels/intro: Afegit logotip de Nintendo amb el missatge de
        "Traducció: Ce Trencada".
        * levels/menu: Afegides textures de cararàcters del menú principal.
        * sm64-cat-tools/sm64-cat-tools.md: Actualitzades les instruccions
        dels scripts de suport de la traducció catalana.
        * sm64-cat-tools/sm64-cat_script-AtJ.sh: Script que canvia els
        caràcters amb accents (i altres) pels caràcters japonesos equivalents.
        * sm64-cat-tools/sm64-cat_script-NSC.sh: Corregit un error de final
        de línia que impedia l'execució a versions noves.
        * src/game/area.c: Traduïts els textos de la pantalla d'inici de
        "PREM START" i "SENSE COMANDAMENT".
        * src/game/hud.c: Traduït el text "TEMPS" del cronòmetre de curses.
        * src/game/ingame_menu.c: Ajustada la posició d'un text del menú.
        * src/menu/file_select: Ajustada la posició d'un text del menú de
        selecció de partida.
        * src/menu/title_screen.c: Traduïts textos de la pantalla de títol.
        * textures/segment2: Afegides les textures dels caràcters catalans
        que apareixen al lloc dels caràcters japonesos.
    
    <ENG> All menus translated and accent system added:

        * actors/power_meter: Textures in Catalan for the power meter
        added.
        * bin/segment2.c: Japanese characters added to the US font
        that shows on screen accents for custom-made textures.
        * include/text_strings.h.in: Menus and ending dialog translated.
        * levels/ending: 'Thank You' cake texture added in Catalan.
        * levels/intro: Nintendi logo added with 'Traducció: Ce Trencada'
        added.
        * levels/menu: Main menu custom characters added.
        * sm64-cat-tools/sm64-cat-tools.md: Instructions for the Catalan
        scripts updated.
        * sm64-cat-tools/sm64-cat_script-AtJ.sh: Script that changes
        accented characters for the equivalent Japanese character.
        * sm64-cat-tools/sm64-cat_script-NSC.sh: Solved end-of-line bug
        that prevented the script from being executed.
        * src/game/area.c: Main screen texts "PREM START" i "SENSE
        COMANDAMENT" translated.
        * src/game/hud.c: Race crono text "TEMPS" translated.
        * src/game/ingame_menu.c: Menu texts adjusted.
        * src/menu/file_select: File select menu text adjusted.
        * src/menu/title_screen.c: Title screen texts translated.
        * textures/segment2: Catalan characters which appear on
        Japanese characters added.

2021-11-08  v0.3.1(beta)  Nilcm01 <@Nilcm01>

    <CAT> Aplicades actualitzacions del repositori original i solució d'errors:

        * Per veure un llistat detallat de les actualitzacions veieu el registre de
        versions (changelog) del repositori original.

        * text/us/dialogs.h (texts): Solucionat un error del diàleg 000 que impedia
        la compilació de l'executable.
    
    <ENG> Applied updates from original repository and bug-fixes:

        * To see a full detailed list on the updates check the original repo's
        changelog.

        * text/us/dialogs.h (texts): Solved a bug from dialog 000 that prevented
        the executable to be compiled.

2021-11-04  v0.3(beta)  Nilcm01 <@Nilcm01>

    <CAT> Traducció d'alguns diàlegs del joc i correccions diverses:

        * text/us/dialogs.h (texts): Traduïts alguns dels quadres de diàleg que
        restaven per fer i corretgits alguns dels ja fets.
        * text/us/courses.h (noms de nivells): Nom del nivell "Shifting Sand Lands"
        canviat de "Terra de la Sorra Movedissa" a "Terra de les Arenes Movedisses".

    <ENG> Some dialogs translated and various corrections:

        * text/us/dialogs.h (texts): Translation of some of the remaining dialogs
        and corrections to some of the already translated dialogs.
        * text/us/courses.h (noms de nivells): Level "Shifting Sand Lands" name
        changed from "Terra de la Sorra Movedissa" to "Terra de les Arenes
        Movedisses".

2020-09-25  v0.2(beta)  Nilcm01  <@Nilcm01>

    <CAT> Traducció íntegra del menú principal:

        * include/text_strings.h.in (texts de menus): Traduïts els texts que tenen
        a veure amb el menú principal, alguns del menú de pausa i alguns del menú
        de desat.
        * src/menu/file_select.c (codi del menu principal): Ajustat el format i
        posició de tot el text del menú principal.
        * text/us/dialogs.h (texts): Noves traduccions, correcció d'altres i
        adaptació del format al joc.

    <ENG> Main menu fully translated:

        * include/text_strings.h.in (menu texts): Translations of all
        the text related to the main menu, some text from the pause menu and
        some from the save menu.
        * src/menu/file_select.c (main menu code): Format and position of all
        main menu texts.
        * text/us/dialogs.h (texts): New translations, error fixes and adaptation
        of other texts.


2020-09-22  v0.1.1(beta)  Nilcm01  <@Nilcm01>  

    <CAT> Correcció de diversos errors amb la construcció i noves traduccions:

        * text/us/courses.h (noms de nivells): Traduïts tots els noms dels nivells
        i missions, solventat error de construcció degut als accents gràfics
        (ex. À) canviant-los per lletres simples (ex: À > A).
        * text/us/dialogs.h (texts): Traduïts alguns textos principals com la carta
        de la Princesa Peach.
        * README.MD: Adaptades les instruccions al procediment actual testat.

    <ENG> Various build-based bugfixes and new translations:

        * text/us/courses.h (level names): Level and mission names fully
        translated, fixed building bug caused by graphical accents (ex. À), solved
        by changing them for simple letters (ex: À > A).
        * text/us/dialogs.h (texts): Translated some main texts such as Princess
        Peach letter.
        * README.MD: Instructions fully adapted to current tested procedure.


2020-09-21  v0.1(beta)  Nilcm01  <@Nilcm01>

    <CAT> Primeres traduccions:

        * text/us/courses.h (noms de nivells): Traduïts els noms dels nivells i
        d'algunes missions.
        * README.MD: Traduït íntegrament al català, sense adaptar les instruccions.

    <ENG> Firsts translations:

        * text/us/courses.h (level names): Translated all level names and some
        acts.
        * README.MD: Fully translated to Catalan, without instructions adaptation.
