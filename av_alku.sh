#! /bin/bash

# Refressataan apt-get
#sudo apt-get update

# Asennetaan puppet
#sudo apt-get install puppet

# Kopioidaan puppet kokeilumoduli
sudo mkdir -p /etc/puppet/modules/avjj17/manifests
cd
CPOLKU=`pwd`
sudo cp -r $CPOLKU/Puppet-module-for-audio-and-video-in-Xubuntu/avjj17/ /etc/puppet/modules/

# Lisätään Puppet confiin master koneen nimi
#sudo puppet apply -e 'file { "/tmp/puppet.conf": content => "\n[main]\nlogdir=/var/log/puppet\nvardir=/var/lib/puppet\nssldir=/var/lib/puppet/ssl\nrundir=/run/puppet\nfactpath=$vardir/lib/facter\nprer$

# Moduli ajetaan komennolla sudo puppet apply -e 'class {"avjj17":}'
