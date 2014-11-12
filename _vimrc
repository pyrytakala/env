" To undo, type :set nu!
:set nu

" Looks http://unix.stackexchange.com/questions/88879/vim-better-colors-so-comments-arent-dark-blue
if has("gui_running")
else
	:color koehler
endif
:syntax on
:set guifont=Consolas:h9


" Abbreviations
abb pdb import pdb; pdb.set_trace()
abb lmd :tabe dataset_classes/lang_model.py

" Whitespace
set nowrap                      " don't wrap lines
set shiftwidth=4                 " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mâ‡‰
set tabstop=8                   " added by Pyry
set softtabstop=4               " added by Pyry

" Delimiter
:set colorcolumn=100
:highlight ColorColumn guibg=Gray

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Keymaps
let mapleader = ","
map <C-L> :tabnext<cr>
map <C-H> :tabprevious<cr>


nmap <leader><F5> "=strftime("%H:%M")<CR>P

nmap <leader>0 :set foldlevel=0<CR>
nmap <leader>1 :set foldlevel=1<CR>
nmap <leader>2 :set foldlevel=2<CR>
nmap <leader>3 :set foldlevel=3<CR>
nmap <leader>4 :set foldlevel=4<CR>
nmap <leader>5 :set foldlevel=5<CR>
nmap <leader>6 :set foldlevel=6<CR>
nmap <leader>7 :set foldlevel=7<CR>
nmap <leader>8 :set foldlevel=8<CR>
nmap <leader>9 :set foldlevel=99<CR>

" TODO make below different for python etc (now only tex)
map <F5> :w !compile.bat<CR>

"Easier brackets
imap ö [
imap Ö {
imap ä ]
imap Ä }

" Clear highlights with comma-c
nmap <leader>c :nohlsearch<CR>

" Visual mode pressing // searches for the item
vnoremap // y/<c-r>"<cr>

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Highlight TODO, FIXME, NOTE, etc.
if has("autocmd")
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
  endif
endif





" Vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)
Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
" Plugins
Plugin 'git://github.com/davidhalter/jedi-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ


" Faster save
map <leader>w :w<cr>



" Minimum lines to keep above and below cursor
set scrolloff=3

vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

"Jump to start and end of line using the home row keys
noremap H ^
noremap H ^	

"Use normal clipboard-copy (http://stackoverflow.com/questions/3961859/how-to-copy-to-clipboard-using-vim)
set clipboard=unnamed
vmap <C-c> "*y
map <C-v> "*p

" Standard windows keys (Select all, save, undo)
map <C-a> ggvG
map <C-s> :w<cr>
map <C-z> u
