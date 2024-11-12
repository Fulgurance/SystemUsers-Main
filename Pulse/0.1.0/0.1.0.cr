class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand("-u171 -g171 -m -d /var/run/pulse -G pulse,audio pulse")
    end

    def uninstall
        super

        runUserDelCommand("-frZ pulse")
    end

end
