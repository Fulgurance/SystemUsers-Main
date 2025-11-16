class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand("-c \"Special user for system management\" -d /var/lib/ism -m -r -u#{systemId} -g#{systemId} -s /bin/bash ism")
    end

    def uninstall
        super

        runUserDelCommand("-frZ ism")
    end

end
