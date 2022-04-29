call plug#begin("~/.vim/plugged")
  Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'dracula/vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'preservim/nerdcommenter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'EdenEast/nightfox.nvim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'mechatroner/rainbow_csv'
call plug#end()

set scrolloff=8
set showmatch
set ignorecase
set hlsearch
set incsearch
set nowrap
set number
" set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set encoding=utf8
set cursorline
set ttyfast
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1


if (has("termguicolors"))
set termguicolors
endif
syntax enable
colorscheme nightfox

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 0
let g:NERDTreeIgnore = ['node_modules']
let NERDTreeStatusLine='NERDTree'

let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let mapleader = ","

nmap <leader>// <plug>NerdCommenterInvert
xmap <leader>// <plug>NerdCommenterInvert
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-a> :NERDTreeToggle<CR>
" Allow mouse usage
set mouse=a

set autowrite

nnoremap <CR> :noh<CR><CR>

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"


" au filetype go inoremap <buffer> . .<C-x><C-o>

