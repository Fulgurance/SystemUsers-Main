class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateUserFile("nobody:x:65534:65534:Unprivileged User:/dev/null:/usr/bin/false")
        else
            runUserAddCommand(["-c","Unprivileged User","-d","/dev/null","-u65534","-g65534","-s","/usr/bin/false","nobody"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runUserDelCommand(["-frZ","nobody"])
        end
    end

end
