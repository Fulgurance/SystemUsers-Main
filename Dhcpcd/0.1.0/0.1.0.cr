class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand([ "-c","\'dhcpcd PrivSep\'",
                            "-d","/var/lib/dhcpcd",
                            "-g","dhcpcd",
                            "-s","/bin/false",
                            "-u","52","dhcpcd"])
    end

    def uninstall
        super

        runUserDelCommand(["-frZ","dhcpcd"])
    end

end
