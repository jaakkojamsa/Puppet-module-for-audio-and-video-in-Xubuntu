class avjj17 {

        File { owner => '0', group => '0', mode => '0644', }
        Package { ensure => 'installed', allowcdrom => true, }
        Service { ensure => 'running', enable => true, }

        file { '/tmp/koefile':
                content => "Hello! This is the avjj17 module's test file!\n"
        }

        package { 'openssh-server':
                ensure => "installed",
        }

         file { '/etc/ssh/sshd_config':
                content => template("avjj17/sshd_config"),
                require => Package["openssh-server"],
                notify => Service["ssh"],
        }

        service { 'ssh':
                ensure => 'running',
                enable => 'true',
                require => Package["openssh-server"],

                hasstatus => 'false',
                status => "/etc/init.d/ssh status|grep running",
        }

	package { 'tree':}

        package { 'audacity':}

        package { 'kdenlive':}

        package { 'vlc':}

        package { 'gimp':}

        package { 'musescore':}

        package { 'handbrake':}

	file { '/tmp/audacity.cfg':
               source => "puppet:///modules/avjj17/audacity.cfg",
	}

	file { '/bin/acconffi.sh':
                content => template ('avjj17/acconffi.sh'),
                owner => '0', group => '0', mode => '0755',
	} ->

	exec { 'acconffi.sh':
		command => 'acconffi.sh 8600',
		path => '/bin/',
	}

	file { '/usr/share/xfce4/backdrops/xubuntu-xenial.png':
                source => "puppet:///modules/avjj17/taustis.png",
	}

}
