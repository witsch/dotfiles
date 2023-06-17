# configure gopass store

if type -qf gopass
    if test -z ( gopass config mounts.path )
        gopass config mounts.path $HOME/.local/share/gopass/stores/root
    end
end
