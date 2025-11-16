class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand("-c bin -d /dev/null -u1 -g1 -s /usr/bin/false bin")
    end

    def uninstall
        super

        runUserDelCommand("-frZ bin")
    end

end
