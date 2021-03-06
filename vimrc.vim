" Set my colorscheme
" Add folder of vimrc.vim script to runtimepath, so vim will find colors etc.
execute 'set runtimepath+=' . expand('<sfile>:p:h')

colorscheme bionik2


"
set nocompatible

" Alternatives for the escape key
imap jk <Esc>

" Paste in insert mode (alternative: use middle mouse button...)
" imap <C-p> <Space><Esc>"+Pa

" Make backspace work as expected (deletes everything)
set backspace=indent,eol,start

" CTRL-U in insert mode deletes a lot. Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Uncomment when used with a dark background
" set background=dark

set showcmd         " Show (partial) command in status line.
"set ruler           " Show the cursor position all the time
set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set ttymouse=xterm2 " Compatibility with tmux
set mouse=a	        " Enable mouse support (all modes)
set scrolloff=4     " Show a few lines of context around the cursor
syntax on           " Syntax highlighting
set autoindent      " see :h
set smartindent     " see :h
set expandtab       " Insert space characters instead of tab
set tabstop=4       " Number of Spaces for every tab inserted
set softtabstop=4   " Delete the whole tab (of 4 spaces)
set shiftwidth=4    " Number of spaces inserted for indentation

set laststatus=2

set statusline= 
set statusline+=%#StatusLine#
set statusline+=\ %f       "tail of the filename
set statusline+=\ ▒
set statusline+=%#LineNr#
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" Shows the line number on the cursor row and relative numbers on the other
" rows
set number              " Enable the line numbers
set relativenumber      " Enable relative line numbers
set cursorline          " Highlight cursor line

set showbreak=@

" mark the 80th column
set colorcolumn=80      

set foldcolumn=1        " Set number of columns used for showing folding
set foldmethod=indent	" Enable automatic folding with indents

set incsearch   " enable incremental seraching
set hlsearch    " enables highlighting of the last pattern search

" remove highlighting from search
nnoremap dx :noh<CR>

" Return to the same line you left off at
augroup line_return
	au!
	au BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\	execute 'normal! g`"zvzz' |
		\ endif
augroup END

" greater default size when in gvim
if has('gui_running')
    set lines=40 columns=95
endif
