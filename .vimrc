" SETTINGS -------------------------------------------------------------- {{{ 

" Disable the possible errors with vi compatibility.
set nocompatible 

" Setting the deletion of the character in front of the cursor in INSERT mode.
set backspace=indent,eol,start 

" Setting the indention of vim to continue based on the previous line.
set autoindent

" Setting no backup files
set nobackup

" Enabling copy and paste using + buffer with y
set clipboard=unnamedplus

" Setting a history of 20 commands and 20 search patterns in the history.
set history=20

" Setting the cursor postion in the lower right corner of the Vim window.
set ruler

" Setting the display for incomplete commands, next to the ruler.
set showcmd 

" Display the match for a search pattern when halfway typing it.
set incsearch 

" File detection 
filetype on

" Filetype detection;Using filetype plugin files;Using indent files.
filetype plugin indent on 

" Breaking text and setting a width limit of 78 characters.
autocmd FileType text setlocal textwidth=78

" Turning syntax highlighting on.
syntax on

" Showing numbers on the left-hand side.
set number

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" Enable the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" If the current file type is HTML, set indentation to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

" Set the background tone.
set background=dark

" Set the color scheme.
colorscheme molokai

" Set a custom font you have installed on your computer.
" Syntax: <font_name>\ <weight>\ <size>
set guifont=Monospace\ Regular\ 12

" Display more of the file by default.
" Hide the toolbar.
set guioptions-=T

" Hide the the left-side scroll bar.
set guioptions-=L

" Hide the the left-side scroll bar.
set guioptions-=r

" Hide the the menu bar.
set guioptions-=m

" Hide the the bottom scroll bar.
set guioptions-=b

" Map the F4 key to toggle the menu, toolbar, and scroll bar.
" <Bar> is the pipe character.
" <CR> is the enter key.
nnoremap <F4> :if &guioptions=~#'mTr'<Bar>
            \set guioptions-=mTr<Bar>
            \else<Bar>
            \set guioptions+=mTr<Bar>
            \endif<CR>

" }}}

" MAPPINGS -------------------------------------------------------------- {{{

" Spacebar as :vsplit
nnoremap <space> :vsplit

" Using CTRL Y to yank lines with buffer
vmap <C-c> "+yi

" Yank from cursor to the end of line. 
nnoremap Y y$

" Setting ç as :w command.
nnoremap ç :w <CR>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Navigation between split screens with arrow keys.
nnoremap <c-k> <c-w>k
nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using CTRL + key  
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" NERDTree specific mappings.

" Map the F3 key to toggle NERDTree open and close.
nnoremap <F3> :NERDTreeToggle<cr>

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" }}}

" PLUGINS --------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'

Plug 'preservim/nerdtree'

Plug 'ervandew/supertab'

call plug#end()

" }}}

" STATUS LINE ----------------------------------------------------------- {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}



