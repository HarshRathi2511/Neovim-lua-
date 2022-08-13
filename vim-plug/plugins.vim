" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" while autoload happens all plugins loaded into this dir
call plug#begin('~/.config/nvim/autoload/plugged')

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" File Explorer
Plug 'scrooloose/NERDTree'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
"The one dark theme
Plug 'joshdick/onedark.vim'
" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" For the airline status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Ranger plugin for better file navigation
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
"fzf plugs
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
"Vim colorizer written in lua
Plug 'norcalli/nvim-colorizer.lua'
"rainbow colors
Plug 'junegunn/rainbow_parentheses.vim'
"startify screen when nviming
Plug 'mhinz/vim-startify'
"For adding git icons (like file changed etc)
Plug 'mhinz/vim-signify'
"This enables git commands
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
"a git commit browser
Plug 'junegunn/gv.vim'
"better way to navigate text in a file
Plug 'justinmk/vim-sneak'
"to not forget keys
Plug 'liuchengxu/vim-which-key'
"Floatterm
Plug 'voldikss/vim-floaterm'
Plug 'chiel92/vim-autoformat' " Autoformat
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
            \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
            \|   PlugInstall --sync | q
            \| endif

