# load fish plugins using 'fundle'
# see https://github.com/danhper/fundle

if not status is-interactive
  # plugin functions used for preview must always be available
  for plugin in 'patrickf1/fzf.fish'
    set -ax fish_function_path $__fish_config_dir/fundle/$plugin/functions
  end
  exit
end

if not functions -q fundle
  eval (curl -sfL https://git.io/fundle-install)
end

fundle plugin 'danhper/fish-fastdir'
fundle plugin 'fabioantunes/base16-fish-shell'
fundle plugin 'franciscolourenco/done'
fundle plugin 'jethrokuan/z'
fundle plugin 'jorgebucaran/hydro'
fundle plugin 'jorgebucaran/spark.fish'
fundle plugin 'nickeb96/puffer-fish'
fundle plugin 'patrickf1/fzf.fish'

fundle init
