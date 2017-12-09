#! /bin/bash

# Refressataan apt-get
#sudo apt-get update

# Asennetaan puppet
sudo apt-get install -y puppet

# Kopioidaan puppet kokeilumoduli
sudo mkdir -p /etc/puppet/modules/avjj17/manifests
cd
CPOLKU=`pwd`
sudo cp -r $CPOLKU/Puppet-module-for-audio-and-video-in-Xubuntu/avjj17/ /etc/puppet/modules/

# Lisätään Puppet confiin master koneen nimi
#sudo puppet apply -e 'file { "/tmp/puppet.conf": content => "\n[main]\nlogdir=/var/log/puppet\nvardir=/var/lib/puppet\nssldir=/var/lib/puppet/ssl\nrundir=/run/puppet\nfactpath=$vardir/lib/facter\nprer$

# Lisätään audacityconffi käyttäjälle

mkdir $CPOLKU/.audacity-data/
sudo cp $CPOLKU/Puppet-module-for-audio-and-video-in-Xubuntu/alkumat/audacity.cfg $CPOLKU/.audacity-data/

# Puppet moduli ajetaan komennolla sudo puppet apply -e 'class {"avjj17":}'

