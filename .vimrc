""""""""""""""""""""""""""""""""""""""
" Looks
""""""""""""""""""""""""""""""""""""""

" To undo, type :set nu!
:set nu

" http://unix.stackexchange.com/questions/88879/vim-better-colors-so-comments-arent-dark-blue
if has("gui_running")
else
	:color koehler
endif
:syntax on
if has("win32")
	:set guifont=Consolas:h9
endif

" Whitespace
set nowrap                      " don't wrap lines
set shiftwidth=4                 " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mâ‡‰
set tabstop=8              
set softtabstop=4               

" Delimiter
:set colorcolumn=100
:highlight ColorColumn guibg=Gray

" Highlight TODO, FIXME, NOTE, etc.
if has("autocmd")
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
  endif
endif

set hlsearch                    " highlight search matches

set background=light


""""""""""""""""""""""""""""""""""""""
" Filetype-specific
""""""""""""""""""""""""""""""""""""""

" Python - abbreviations
autocmd FileType python abb pdb import pdb; pdb.set_trace()
autocmd FileType python set shiftwidth=4                 " a tab is two spaces (or set this to 4)
autocmd FileType python set softtabstop=4                 

" Lua - abbreviations
autocmd FileType lua set shiftwidth=2                 " a tab is two spaces (or set this to 4)
autocmd FileType lua set softtabstop=2                 

" Sass - abbreviations
autocmd FileType scss set softtabstop=4
autocmd FileType scss set softtabstop=4                 

" LaTex
autocmd FileType tex set wrap linebreak nolist

" TODO make below different for python etc (now only tex)
" map <F5> :w !compile.bat<CR>


""""""""""""""""""""""""""""""""""""""
" Functionality
""""""""""""""""""""""""""""""""""""""

" Searching
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set lazyredraw					" Don't redraw while executing macros (good performance config)

set scrolloff=3					" Minimum lines to keep above and below cursor

set autoindent

set showcmd
set cursorline
set wildmenu
set showmatch

""""""""""""""""""""""""""""""""""""""
" Keyboard shortcuts
""""""""""""""""""""""""""""""""""""""

let mapleader = ","

nmap <leader>c :nohlsearch<CR>	" Clear highlights with comma-c
vnoremap // y/<c-r>"<cr>		" Visual mode pressing // searches for the item

vnoremap < <gv  				" better indentation
vnoremap > >gv  				" better indentation

noremap H ^						"Jump to start and end of line using the home row keys

"Use normal clipboard-copy (http://stackoverflow.com/questions/3961859/how-to-copy-to-clipboard-using-vim)
" http://vim.wikia.com/wiki/Easy_pasting_to_Windows_applications
set clipboard=unnamed
vmap <C-c> "*y
" map <C-v> "*p

" Standard windows keys (Select all, save, undo)
map <C-a> ggvG
map <C-s> :w<cr>
map <C-z> u

" Easier find and replace
map <F3> :%s/search/replace/g


" Move to beginning/end of line with B and E, and disable the defaults
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>
