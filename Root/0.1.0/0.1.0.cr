class Target < ISM::VirtualSoftware

    def install
        super

        if option("Pass1")
            updateUserFile("root:x:0:0:root:/root:/bin/bash")
        else
            runUserAddCommand(["-c","root","-d","/root","-u0","-g0","-s","/bin/bash","root"])
        end
    end

    def uninstall
        super

        if !option("Pass1")
            runUserDelCommand(["-frZ","root"])
        end
    end

end
