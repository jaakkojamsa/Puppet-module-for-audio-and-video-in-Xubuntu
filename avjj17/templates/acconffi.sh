#!/bin/bash

# Haetaan tarvittava polku muuttujaan

cd
POLKU=`find /home/ -maxdepth 1 -mindepth 1 -type d -name "*"`
mkdir $POLKU/.audacity-data/

cp -f /tmp/audacity.cfg $POLKU/.audacity-data/
