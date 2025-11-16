class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand("-c \"PostgreSQL Server\" -g postgres -d /srv/pgsql/data -u 41 postgres")
    end

    def uninstall
        super

        runUserDelCommand("-frZ postgres")
    end

end
