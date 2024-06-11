class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand(["-c","\"UUID Generation Daemon User\"","-d","/dev/null","-u80","-g80","-s","/usr/bin/false","uuidd"])
    end

    def uninstall
        super

        runUserDelCommand(["-frZ","uuidd"])
    end

end
