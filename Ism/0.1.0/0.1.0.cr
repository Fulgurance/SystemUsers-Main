class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand("-c \"Special user for system management\" -d /var/lib/ism/home -u255 -g255 -s /bin/bash ism")
    end

    def uninstall
        super

        runUserDelCommand("-frZ ism")
    end

end
