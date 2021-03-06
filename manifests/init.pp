class livestatus {
    package{"mk-livestatus":
        ensure=>present,
    }

    package{"xinetd":
        ensure=>present,
    }

    service{"xinetd":
        ensure=>running,
    }

    file{"/etc/xinetd.d/livestatus":
        mode   => 755,
        owner  => root,
        group  => root,
        source => "puppet:///modules/livestatus/livestatus",
        notify  => Service['xinetd'], 
    }

    firewall{'010 livestatus 6557':
        dport  => '6557',
        action => 'accept',
    }


}
