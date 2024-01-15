class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand(["-u219","-g219","-m","-d","/var/lib/sddm","-G","video","sddm"])
    end

    def uninstall
        super

        runUserDelCommand(["-frZ","sddm"])
    end

end
