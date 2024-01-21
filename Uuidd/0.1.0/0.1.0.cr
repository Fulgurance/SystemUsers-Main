class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateUserFile("uuidd:x:80:80:UUID Generation Daemon User:/dev/null:/usr/bin/false")
        else
            runUserAddCommand(["-c","UUID Generation Daemon User","-d","/dev/null","-u80","-g80","-s","/usr/bin/false","uuid"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runUserDelCommand(["-frZ","uuid"])
        end
    end

end
