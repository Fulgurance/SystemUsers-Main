class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand("-c \"PolicyKit Daemon Owner\" -d /etc/polkit-1 -u 27 -g polkitd -s /bin/false polkitd")
    end

    def uninstall
        super

        runUserDelCommand("-frZ polkitd")
    end

end
