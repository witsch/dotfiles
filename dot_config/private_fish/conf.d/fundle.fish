# see https://github.com/danhper/fundle

if not functions -q fundle
  eval (curl -sfL https://git.io/fundle-install)
end

fundle plugin 'danhper/fish-fastdir'
fundle plugin 'fabioantunes/base16-fish-shell'
fundle plugin 'franciscolourenco/done'
fundle plugin 'jethrokuan/fzf'
fundle plugin 'jethrokuan/z'
fundle plugin 'jorgebucaran/hydro'
fundle plugin 'jorgebucaran/spark.fish'
fundle plugin 'nickeb96/puffer-fish'

fundle init
