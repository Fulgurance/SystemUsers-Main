class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand("-c \"Print Service User\" -d /var/spool/cups -g lp -s /bin/false -u 9 lp")
    end

    def uninstall
        super

        runUserDelCommand("-frZ lp")
    end

end
