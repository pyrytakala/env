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
set backspace=indent,eol,start  " backspace through everything in insert m⇉
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

nmap <F5> "=strftime("%H:%M")<CR>P

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