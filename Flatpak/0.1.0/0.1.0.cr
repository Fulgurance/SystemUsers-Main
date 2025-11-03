class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand("-g flatpak -u 313 flatpak")
    end

    def uninstall
        super

        runUserDelCommand("-frZ flatpak")
    end

end
