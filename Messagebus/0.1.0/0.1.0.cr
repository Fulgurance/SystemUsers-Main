class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand(["-c","D-Bus Message Daemon User","-d","/run/dbus","-u18","-g18","-s","/usr/bin/false","messagebus"])
    end

    def uninstall
        super

        runUserDelCommand(["-frZ","messagebus"])
    end

end
