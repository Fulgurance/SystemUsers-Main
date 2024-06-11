class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand(["-c","\"Unprivileged User\"","-d","/dev/null","-u65534","-g65534","-s","/usr/bin/false","nobody"])
    end

    def uninstall
        super

        runUserDelCommand(["-frZ","nobody"])
    end

end
