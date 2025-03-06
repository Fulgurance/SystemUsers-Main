class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand("-c \"Special user for system management\" -d /var/lib/ism -m -r -u#{Ism.systemId} -g#{Ism.systemId} -s /bin/bash ism")
    end

    def uninstall
        super

        runUserDelCommand("-frZ ism")
    end

end
