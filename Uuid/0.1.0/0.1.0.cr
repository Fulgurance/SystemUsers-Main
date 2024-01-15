class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand(["-c","UUID Generation Daemon User","-d","/dev/null","-u80","-g80","-s","/usr/bin/false","uuid"])
    end

    def uninstall
        super

        runUserDelCommand(["-frZ","uuid"])
    end

end
