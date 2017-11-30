class avjj17 {

        File { owner => '0', group => '0', mode => '0755', }
        Package { ensure => 'installed', allowcdrom => true, }
        Service { ensure => 'running', enable => true, }

        file { '/tmp/koefile':
                content => "Hello! This is the avjj17 module's test file!\n"
        }

	package { 'tree':}

        package { 'audacity':}

        package { 'kdenlive':}

        package { 'vlc':}

        package { 'gimp':}

        package { 'musescore':}

        package { 'handbrake':}

}
