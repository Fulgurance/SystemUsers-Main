class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand(["-c","\"Daemon User\"","-d","/dev/null","-u6","-g6","-s","/usr/bin/false","daemon"])
    end

    def uninstall
        super

        runUserDelCommand(["-frZ","daemon"])
    end

end
