#!/bin/bash

############################################################
#             SM64-CAT : Script ACCENT to JAP              #
#                          v2.0                            #
#      fet per: Nil CM (@PelochoRockea) ~ 2021/12/13       #
############################################################
# Aquest script genera un arxiu .txt que conté el mateix   #
# text i format que l'original però substituïnt els        #
# caràcters especials com els accents o la Ç pels          #
# caràcters japonesos que fan que al joc hi aparexi.       #
#                                                          #
# INPUT: passat per paràmetre                              #
# OUTPUT: dialogsAtJ.txt                                   #
#                                                          #
# L'script ha estat fet per a ser emprat amb el projecte   #
# SUPER MARIO 64 - CATALAN TRANSLATION                     #
# tot i que pots fer-ne l'ús que consideris.               #
############################################################

# NOTA: tots els caràcters japonesos necessiten un espai
# posterior per tal que el carcàcter accentual en pantalla
# no es vegi solapat pel següent, amb excepció del
# punt volat.

input="dialogsNSC.txt"

# A
function aObertaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[à]+/ま /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function aObertaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[À]+/う /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}


# E
function eObertaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[è]+/こ /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function eTancadaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[é]+/さ /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function eObertaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[È]+/へ /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function eTancadaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[É]+/え /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}


# I
function iTancadaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[í]+/し /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function iDieresiMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[ï]+/み /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function iTancadaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Í]+/お /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function iDieresiMAJ # No inclosa al projecte
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Ï]+/I/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}


# O
function oObertaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[ò]+/た /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function oTancadaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[ó]+/す /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function oObertaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Ò]+/ほ /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function oTancadaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Ó]+/か /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}


# U
function uTancadaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[ú]+/せ /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function uDieresiMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[ü]+/そ /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function uTancadaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Ú]+/き /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function uDieresiMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Ü]+/く /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}


# Ç
function cTrencadaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[ç]+/む /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function cTrencadaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Ç]+/け /g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}


# Punt volat ·
function puntVolat # No requereix espai
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[·]+/&/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}


#### MAIN ####

# Comprovació dialogsNSC.txt és buit
cp $1 dialogsNSC.txt
rm -r dialogsNSC.txt
cp $1 dialogsNSC.txt

echo " " >> dialogsNSC.txt

## Crida a funcions

aObertaMin
aObertaMAJ

eObertaMin
eTancadaMin
eObertaMAJ
eTancadaMAJ

iTancadaMin
iDieresiMin
iTancadaMAJ
iDieresiMAJ

oObertaMin
oTancadaMin
oObertaMAJ
oTancadaMAJ

uTancadaMin
uDieresiMin
uTancadaMAJ
uDieresiMAJ

cTrencadaMin
cTrencadaMAJ

puntVolat


# Finalitzar
    cp dialogsNSC.txt outputAtJ.txt
    rm -r dialogsNSC.txt
