class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateUserFile("bin:x:1:1:bin:/dev/null:/usr/bin/false")
        else
            runUserAddCommand(["-c","bin","-d","/dev/null","-u1","-g1","-s","/usr/bin/false","bin"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runUserDelCommand(["-frZ","bin"])
        end
    end

end
