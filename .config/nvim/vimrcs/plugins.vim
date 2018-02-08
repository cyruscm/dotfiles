if &compatible
	set nocompatible				 " Be iMproved
endif

" Required:
set runtimepath+=/home/xen/.config/nvim/./repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/xen/.config/nvim/.')
	call dein#begin('/home/xen/.config/nvim/.')

	" Let dein manage dein
	call dein#add('/home/xen/.config/nvim/./repos/github.com/Shougo/dein.vim')

	" Vim8 Compatibility
	if !has('nvim') 
		call dein#add('roxma/nvim-yarp')
		call dein#add('roxma/vim-hug-neovim-rpc')
	endif

	" Design
	call dein#add('tyrannicaltoucan/vim-deep-space')
	call dein#add('vim-airline/vim-airline')	" Its Airline...
	call dein#add('junegunn/goyo.vim')		" Sexy
	call dein#add('junegunn/limelight.vim')		" Sexy Sexy
	call dein#add('dylanaraps/wal.vim')		" Colorscheme with Wal

	" Utility
	call dein#add('jschwarz89/shared-session-vim')	" Allows sharing session data between instances
	call dein#add('Shougo/neosnippet.vim') 		" Snippets tool
	call dein#add('Shougo/neosnippet-snippets') 	" Some default snippets
	call dein#add('Shougo/deoplete.nvim') 		" Code Completition
	call dein#add('tpope/vim-fugitive')		" Git :G{X}
	call dein#add('scrooloose/nerdtree')		" File Explorer Tree \\n
	call dein#add('tpope/vim-surround')		" Surround Keybinds (Change Surrounding)
	call dein#add('kien/ctrlp.vim')			" Ctrl-P fuzzy Finder <Ctrl-p>
	call dein#add('easymotion/vim-easymotion')	" Heavenly movement \\{fX/w}
	call dein#add('scrooloose/nerdcommenter')	" Easy Commenting (\cc)


	" Syntax and Programming
	call dein#add('w0rp/ale') 			" Async Syntax Checking Hacks
	call dein#add('nathanaelkane/vim-indent-guides')	" Indent Guidelines

	" Javascript
	call dein#add('ternjs/tern_for_vim')	" Completer Sources
	call dein#add('carlitux/deoplete-ternjs') 	" More completer
	call dein#add('pangloss/vim-javascript')	" Indent and Highlight

	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
	call dein#install()
endif


let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_fuzzy_completion = 1

let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['buffer', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
let g:tern_request_timeout = 1
