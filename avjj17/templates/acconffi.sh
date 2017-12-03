#!/bin/bash

# Haetaan tarvittava polku muuttujaan

cd
POLKU=`pwd`
mkdir $POLKU/.audacity-data/

cp /tmp/audacity.cfg $POLKU/.audacity-data/
