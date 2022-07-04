#!/bin/bash

############################################################
#         SM64-CAT : Script NO-SPECIAL-CHARACTERS          #
#                          v1.1                            #
#      fet per: Nil CM (@PelochoRockea) ~ 2021/11/08       #
############################################################
# Aquest script genera un arxiu .txt que conté el mateix   #
# text i format que l'original però substituïnt els        #
# caràcters especials com els accents o la Ç pels          #
# caràcters normals.                                       #
#                                                          #
# INPUT: passat per paràmetre                              #
# OUTPUT: dialogsNSC.txt                                   #
#                                                          #
# L'script ha estat fet per a ser emprat amb el projecte   #
# SUPER MARIO 64 - CATALAN TRANSLATION                     #
# tot i que pots fer-ne l'ús que consideris.               #
############################################################

input="dialogsNSC.txt"

# A
function aObertaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[à]+/a/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function aObertaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[À]+/A/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}


# E
function eObertaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[è]+/e/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function eTancadaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[é]+/e/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function eObertaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[È]+/E/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function eTancadaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[É]+/E/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}


# I
function iTancadaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[í]+/i/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function iDieresiMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[ï]+/i/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function iTancadaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Í]+/I/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function iDieresiMAJ
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
	    echo "$line" | sed -r 's/[ò]+/o/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function oTancadaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[ó]+/o/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function oObertaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Ò]+/O/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function oTancadaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Ó]+/O/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}


# U
function uTancadaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[ú]+/u/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function uDieresiMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[ü]+/u/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function uTancadaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Ú]+/U/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function uDieresiMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Ü]+/U/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}


# Ç
function cTrencadaMin
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[ç]+/c/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}

function cTrencadaMAJ
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[Ç]+/C/g' >> dialogs1.txt
    done < "$input"

    cp dialogs1.txt dialogsNSC.txt
    rm -r dialogs1.txt
}


# Punt volat ·
function puntVolat
{
    while IFS= read -r line
    do
	    echo "$line" | sed -r 's/[·]+/./g' >> dialogs1.txt
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
    cp dialogsNSC.txt outputNSC.txt
    rm -r dialogsNSC.txt
