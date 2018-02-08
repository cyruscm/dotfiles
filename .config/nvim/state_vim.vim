if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/xen/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/xen/.config/nvim/.'
let g:dein#_runtime_path = '/home/xen/.config/nvim/./.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/xen/.config/nvim/./.cache/init.vim'
let &runtimepath = '/home/xen/.config/nvim,/etc/xdg/nvim,/home/xen/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/home/xen/.config/nvim/./repos/github.com/Shougo/dein.vim,/home/xen/.config/nvim/./.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/xen/.config/nvim/./.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/home/xen/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/xen/.config/nvim/after'
filetype off
