class Target < ISM::VirtualSoftware

    def install
        super

        runUserAddCommand(["-c","\"OpenLDAP Daemon Owner\"","-d","/var/lib/openldap","-u","83","-g","ldap","-s","/bin/false","ldap"])
    end

    def uninstall
        super

        runUserDelCommand(["-frZ","ldap"])
    end

end
