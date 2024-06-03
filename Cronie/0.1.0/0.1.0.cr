class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand(["-c","cronie","-d","/cronie","-u20","-g20","-s","/bin/bash","cronie"])
    end

    def uninstall
        super

        runUserDelCommand(["-frZ","cronie"])
    end

end
