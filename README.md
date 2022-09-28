# Super Mario 64 en Català (Rom N64)

La traducció catalana de Super Mario 64 ha estat duta a terme per **Nil CM** amb **Projecte 'Ce Trencada'** per gaudir el joc en la nostra llengua.
Ha estat traduït en tres versions diferents: **PC (Windows/Linux)**, ROM de Nintendo 64 i Android; cadascun partint dels repositoris base indicats.

La versió del Port a PC pren com a basa el [Projecte de Decompilació de la ROM de N64](https://github.com/n64decomp/sm64).
Aquest projecte **no** està relacionat, de cap manera, amb els equips responsables d'aquest projecte o amb Nintendo.

Aquest repositori no inclou totes les llibreries necessàries per a compilar el joc.
Es requereix una còpia prèvia del joc (ROM) per a extreure'n les llibreries. Aquesta ROM ha de ser del següent tipus:

- Regió: **U** o **US** (Estats Units).
- Extensió: .z64
- *Exemple: Super Mario 64 (U).z64*

## Versions

Podeu gaudir de Super Mario 64 a diferents plataformes amb les versions que han estat desenvolupades:

- **PC (Windows / Linux)**: [Llançaments PC](https://github.com/Nilcm01/sm64-port-catalan-translation/releases)
- **ROM Nintendo 64**: [Llançaments N64](https://github.com/Nilcm01/sm64-rom-catalan-translation/releases)
- **Android**: [Llançaments Android](https://github.com/Nilcm01/sm64-android-catalan-translation/releases)

Per a més informació sobre els llançaments consulteu aquesta pàgina: [SM64-CAT](https://ja.cat/SM64CAT)

## Inici ràpid (per a Ubuntu)

1. Instal·leu els prerequisits: `sudo apt install -y build-essential git binutils-mips-linux-gnu python3`
2. Cloneu el repositori: `git clone https://github.com/Nilcm01/sm64-rom-catalan-translation.git`, el qual crearà el directori `sm64-rom-catalan-translation`, llavors moveu-vos-hi amb `cd sm64-rom-catalan-translation`
3. Col·loqueu una ROM de Super Mario 64 anomenada `baserom.us.z64` al directori arrel del repositori.
6. Empreu `make VERSION=us COMPARE=0` per a construir-lo. Afegiu-hi `-j4` per a millorar la velocitat de construcció (essent el '4' el nombre de nuclis del processador disponibles).
5. L'executable es trobarà a `build/us_pc/sm64.us`.

## Instal·lació

### Windows

Instal·leu WSL amb la distribució de Linux que volgueu seguint el següent:
[Windows Subsystem for Linux, Guia d'Instal·lació per a Windows 10 (Anglès).](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
Recomanem Debian o Ubuntu 18.04 Linux per al WSL.
Nota: WSL1 no suporta Ubuntu 20.04.

Un cop fet, clonem el repositori des de la consola de Linux:
`git clone https://github.com/Nilcm01/sm64-rom-catalan-translation.git`

A continuació, continueu amb les instruccions llistades a [Linux](#linux).

### Linux

Hi ha tres passos per construir una versió funcional.

#### Pas 1: Instal·lar requeriments

El sistema de construcció té els següents requeriments:
 * binutils-mips
 * capstone
 * pkgconf
 * python3 >= 3.6

Les instruccions per instal·lar aquests requeriments per a les versions més comuns de Linux es troben a sota:

##### Debian / Ubuntu
Per instal·lar els requeriments:
```
sudo apt install -y binutils-mips-linux-gnu build-essential git libcapstone-dev pkgconf python3
```

##### Arch Linux
Per instal·lar els requeriments:
```
sudo pacman -S base-devel capstone python
```
Instal·leu els següents paquets AUR:
* [mips64-elf-binutils](https://aur.archlinux.org/packages/mips64-elf-binutils) (AUR)

##### Altres distribucions de Linux

La majoria de les distribucions modernes de Linux haurien de tenir paquets equivalents als altres dos llistats més amunt. És possible que hàgiu d'utilitzar una versió diferent de GNU binutils. A continuació, s'indiquen les distribucions binutils totalment compatibles amb la implementació al makefile, i exemples de distribucions que els ofereixen:

* `mips64-elf-` (Arch AUR)
* `mips-linux-gnu-` (Ubuntu i altres distribucions basades en Debian)
* `mips64-linux-gnu-` (RHEL/CentOS/Fedora)

També pots fer servir [Docker](#docker-installation) per instal·lar una imatge amb els requeriments mínims.

#### Pas 2: Copia la ROM base per a extreure'n els recursos necessaris

Per a construir una ROM amb la traducció cal que al directori arrel del repositori hi hagi una ROM original del joc amb el nom `baserom.us.z64` per a extreure'n els recursos necessaris.

##### Pas 3: Construir la ROM

Empreu `make VERSION=us COMPARE=0` per a construir la rom. Afegiu-hi `-j4` per a millorar la velocitat de construcció (essent el '4' el nombre de nuclis del processador disponibles).
```
VERSION=us      # Indica que la versió de la ROM base és la d'Estats Units (U)
COMPARE=0 		# Evita comparar la ROM resultant amb la base (són diferents)
-j4				# Millorar el rendiment (el número és el nombre de nuclis de processament disponibles)
```

La ROM construïda serà al directori `build`.

Llistat complet d'opcions de compilació per a la ROM (en cas de dubte, es recomana no fer-ne servir cap i al seu lloc emprar la comanda indicada anteriorment):

* ``VERSION``: ``us``, ``jp``, ``eu``, ``sh``
* ``GRUCODE``: ``f3d_old``, ``f3d_new``, ``f3dex``, ``f3dex2``, ``f3dzex``
* ``COMPARE``: ``1`` (compara el hash de la ROM), ``0`` (no compara el hash de la ROM)
* ``NON_MATCHING``: Sense ús.
* ``CROSS``: *Cross-compiler tool prefix* (Exemple: ``mips64-elf-``).

### MacOS

Per a cosntruir una ROM amb MacOS es recomana fer servir una imatge de [Docker](#docker-installation).

## Arbre de directoris general
	
```
sm64-port-catalan-translation
├── actors: comportament d'ojectes, disposició dels terrenys, les llistes de visualització
├── asm: codi assembly escrit a mà, capçalera (header) de la rom
│   └── non_matchings: asm per a seccions no coincidents
├── assets: animacions i dades de prova
│   ├── anims: dades d'animacions
│   └── demos: dades de prova
├── bin: arxius en C per a endreçar llistes de visualització i textures
├── build: directori de sortida
├── data: scripts de comportament, dades miscel·lànies
├── doxygen: documentació de la infraestructura
├── enhancements: exemples de modificacions del codi font
├── include: arxius de capçalera
├── levels: scripts de nivells, disposició dels terrenys, llistes de visualització
├── lib: codi de la lliberira SDK
├── rsp: codi assembly de l'àudio i de Fast3D RSP
├── sm64-cat-tools: eines específiques de la traducció al català
├── sound: sequüències, mostres (samples) de so, i bancs de sons
├── src: codi font en C del joc
│   ├── audio: codi de l'àudio
│   ├── buffers: "stacks", "heaps", i buffers de tasques
│   ├── engine: motors de processament d'scripts i útils
│   ├── game: font dels comportaments de la resta del joc
│   ├── goddard: pantalla intrductoria de Mario
│   └── menu: pantalla de títol i arxius, missions, i menus de sel·lecció de nivells de debug
├── text: diàlegs, noms de nivells, noms de missions
├── textures: caixa del cel (skybox) i dades de textures genèriques
└── tools: eines de construcció
```

## Arbre de directoris de fitxers gràfics inclosos
*Nota: tots els fitxers gràfics inclosos són elaborats per 'Ce Trencada'.*

```
sm64-port-catalan-translation
├── actors
│   └── power_meter
│       ├── power_meter_left_side.rgba16.png: Mesurador de força, part dreta
│       └── power_meter_right_side.rgba16.png: Mesurador de força, part dreta
├── bin
│   └── segment2.c: Sistema de caràcters "ingame"
├── include
│   └── text_strings.h.in: Texts de menús
├── levels
│   ├── ending
│   │   └── cake.png: Imatge del pastís de final del joc
│   ├── intro
│   │   └── 2_copyright.rgba16.png: Imatge del copyright i traducció
│   └── menu
│       ├── leveldata.c: Sistema de caràcters del manú principal
│       ├── main_menu_seg7.0D1A8.rgba16.png: Marc del número del món, part superior
│       ├── main_menu_seg7.0E1A8.rgba16.png: Marc del número del món, part inferior
│       ├── main_menu_seg7_us.0AF48.ia8.png: Lletra 'À' del menú principal
│       ├── main_menu_seg7_us.0AF88.ia8.png: Lletra 'É' del menú principal
│       ├── main_menu_seg7_us.0AFC8.ia8.png: Lletra 'Í' del menú principal
│       ├── main_menu_seg7_us.0B008.ia8.png: Lletra 'Ó' del menú principal
│       ├── main_menu_seg7_us.0B048.ia8.png: Lletra 'Ú' del menú principal
│       ├── main_menu_seg7_us.0B088.ia8.png: Lletra 'Ü' del menú principal
│       ├── main_menu_seg7_us.0B0C8.ia8.png: Lletra 'Ç' del menú principal
│       ├── main_menu_seg7_us.0B5C8.ia8.png: Lletra 'È' del menú principal
│       ├── main_menu_seg7_us.0B608.ia8.png: Lletra 'Ò' del menú principal
│       ├── main_menu_seg7_us.0B7C0.ia8.png: Caràcter '·' (punt volat) del menú principal
│       └── main_menu_seg7_us.0B800.ia8.png: Caràcter '.' (punt) del menú principal
├── src
│   ├── game
│   │   ├── area.c: Text "PREM START" i "SENSE COMANDAMENT"
│   │   ├── hud.c: Text "TEMPS"
│   │   └── ingame_menu.c: Posició del text "RÈCORD" al menú de punts
│   └── menu
│       ├── file_select.c: Posicions dels texts del menú principal
│       └── title_screen.c: Texts "TRIA NIVELL" i "PREM START"
├── text
│   └── us
│       ├── courses.h: Noms de les estrelles
│       └── dialogs.h: Diàlegs
└── textures
    └── segment2
        ├── font_graphics.06D80.ia4.png: Caràcter '·' (punt volat)
        ├── font_graphics.07440.ia4.png: Lletra 'À'
        ├── font_graphics.07450.ia4.png: Lletra 'É'
        ├── font_graphics.07460.ia4.png: Lletra 'Í'
        ├── font_graphics.07470.ia4.png: Lletra 'Ó'
        ├── font_graphics.07480.ia4.png: Lletra 'Ú'
        ├── font_graphics.07490.ia4.png: Lletra 'Ü'
        ├── font_graphics.074A0.ia4.png: Lletra 'Ç'
        ├── font_graphics.074B0.ia4.png: Lletra 'è'
        ├── font_graphics.074C0.ia4.png: Lletra 'é'
        ├── font_graphics.074D0.ia4.png: Lletra 'í'
        ├── font_graphics.074E0.ia4.png: Lletra 'ó'
        ├── font_graphics.074F0.ia4.png: Lletra 'ú'
        ├── font_graphics.07500.ia4.png: Lletra 'ü'
        ├── font_graphics.07510.ia4.png: Lletra 'ò'
        ├── font_graphics.075E0.ia4.png: Lletra 'È'
        ├── font_graphics.075F0.ia4.png: Lletra 'Ò'
        ├── font_graphics.07600.ia4.png: Lletra 'à'
        ├── font_graphics.07610.ia4.png: Lletra 'ï'
        ├── font_graphics.07620.ia4.png: Lletra 'ç'
        ├── segment2.02600.rgba16.png: Lletra 'J' gran
        ├── segment2.03400.rgba16.png: Lletra 'Q' gran
        ├── segment2.03E00.rgba16.png: Lletra 'V' gran
        ├── segment2.04200.rgba16.png: Lletra 'X' gran
        └── segment2.04600.rgba16.png: Lletra 'Z' gran
```

## Contacta'ns

Podeu posar-vos en contacte amb nosaltres de la forma que més preferiu:

**Nil CM**
- Correu electrònic: nilcm01@outlook.es
- Twitter: https://twitter.com/PelochoRockea

**Projecte 'Ce Trencada'**
- Web: https://www.cetrencada.cat
- Correu electrònic: projectecetrencada@gmail.com
- Twitter: https://twitter.com/prcetrencada/
- Discord: https://t.co/Gj1V7LRUsf