source $HOME/.config/nvim/vimrcs/plugins.vim

" Theme
syntax on
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
colorscheme deep-space

let g:airline_powerline_fonts = 1
let g:airline_theme='deep_space'
" set fillchars+=vert:\│
set fillchars=""

" Vim Settings
set softtabstop=0 noexpandtab
set shiftwidth=4
set nu 
set rnu
let g:python3_host_prog = '/usr/bin/python3'

set wildmenu
set incsearch
set hlsearch

" Plugin Configurations

let g:javascript_plugin_jsdoc = 1

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_super                = "Ω"
set conceallevel=1
let g:ale_fixers = {
\   'javascript': ['prettier'],
\}

highlight Conceal guifg=None guibg=None

" Function Mappings

function! s:neosnippet_complete()
  if pumvisible()
    return "\<c-n>"
  else
    if neosnippet#expandable_or_jumpable() 
      return "\<Plug>(neosnippet_expand_or_jump)"
    endif
    return "\<tab>"
  endif
endfunction
imap <expr><TAB> <SID>neosnippet_complete()

function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
 Limelight!
endfunction


autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Keybinds
map <Leader>n :NERDTreeToggle<CR>
nnoremap <leader><space> :nohlsearch<CR>
map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
