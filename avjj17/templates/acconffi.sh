#!/bin/bash

# Haetaan tarvittava polku muuttujaan

cd
POLKU=`pwd`
mkdir $POLKU/.audacity-data/

cp -f /tmp/audacity.cfg $POLKU/.audacity-data/
