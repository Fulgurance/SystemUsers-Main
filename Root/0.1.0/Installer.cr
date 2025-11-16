class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand("-c root -d /root -u0 -g0 -s /bin/bash root")
    end

    def uninstall
        super

        runUserDelCommand("-frZ root")
    end

end
