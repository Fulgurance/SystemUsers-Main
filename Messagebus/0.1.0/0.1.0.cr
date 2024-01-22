class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateUserFile("messagebus:x:18:18:D-Bus Message Daemon User:/run/dbus:/usr/bin/false")
        else
            runUserAddCommand(["-c","\"D-Bus Message Daemon User\"","-d","/run/dbus","-u18","-g18","-s","/usr/bin/false","messagebus"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runUserDelCommand(["-frZ","messagebus"])
        end
    end

end
