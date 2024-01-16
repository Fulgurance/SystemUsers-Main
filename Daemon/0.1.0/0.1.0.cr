class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateUserFile("daemon:x:6:6:Daemon User:/dev/null:/usr/bin/false")
        else
            runUserAddCommand(["-c","Daemon User","-d","/dev/null","-u6","-g6","-s","/usr/bin/false","daemon"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runUserDelCommand(["-frZ","daemon"])
        end
    end

end
