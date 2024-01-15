class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand(["-u123","-g123","-M","ntp"])
    end

    def uninstall
        super

        runUserDelCommand(["-frZ","ntp"])
    end

end
