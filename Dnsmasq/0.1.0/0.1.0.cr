class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand("-c Dnsmasq -u275 -g275 -s /bin/bash dnsmasq")
    end

    def uninstall
        super

        runUserDelCommand("-frZ dnsmasq")
    end

end
