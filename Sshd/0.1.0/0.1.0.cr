class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand("-c 'sshd PrivSep' -d /var/lib/sshd -g sshd -s /bin/false -u 50 sshd")
    end

    def uninstall
        super

        runUserDelCommand("-frZ sshd")
    end

end
