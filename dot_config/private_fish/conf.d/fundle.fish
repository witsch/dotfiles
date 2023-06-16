# see https://github.com/danhper/fundle

if not functions -q fundle
  eval (curl -sfL https://git.io/fundle-install)
end

fundle plugin 'danhper/fish-fastdir'

fundle init
