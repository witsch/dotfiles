# configure gopass store

status is-interactive || exit

if type -qf gopass
    if test -z ( gopass config mounts.path )
        gopass config mounts.path $HOME/.local/share/gopass/stores/root
    end
end
