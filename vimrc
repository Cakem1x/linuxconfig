" Vundle stuff:
set nocompatible
filetype off

" Vundle and plugin stuff
set rtp+=/home/cakemix/.vim/bundle/Vundle.vim/

" Vundle breaks with fish shell, I think...
set shell=/usr/bin/bash

call vundle#begin()
" My Plugins here:
"
" original repos on github
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'myusuf3/numbers.vim' " Relative line numbers 
Plugin 'sirtaj/vim-openscad' " Syntax highlighting for openscad
Plugin 'dag/vim-fish'        " Syntax highlighting and more for fish scripts

call vundle#end()

" Enable filetype detection again
filetype plugin indent on

" Map toggling the numbergs plugin to F3
nnoremap <F3> :NumbersToggle<CR>

" Map ycm goto function to F4
nnoremap <F4> :YcmCompleter GoTo<CR>

" ---------------------------------------------------------------------------
syntax enable       " Enable syntax highlighting
 
set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.

"let g:solarized_termtrans = 1 " Don't use the odd color-overlay as background.

colorscheme solarized " Enable solarized colorscheme.

set tabstop=2       " Number of spaces that a <Tab> in the file counts for.

set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.
 
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
 
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
 
set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set wildmode=longest,list,full " settings for the wildmenu
set wildmenu        " visual autocomplete menu when having multiple options for vim cmds.

set showmatch       " Highlight matching bracket
 
set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
 
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
 
set ignorecase      " Ignore case in search patterns.
 
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
 
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
 
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
 
set textwidth=0     " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
 
set formatoptions=c,q,r,t   " This is a sequence of letters which describes how
                            " automatic formatting is to be done.
                            "
                            " letter    meaning when present in 'formatoptions'
                            " ------    ---------------------------------------
                            " c         Auto-wrap comments using textwidth, inserting
                            "           the current comment leader automatically.
                            " q         Allow formatting of comments with "gq".
                            " r         Automatically insert the current comment leader
                            "           after hitting <Enter> in Insert mode. 
                            " t         Auto-wrap text using textwidth (does not apply
                            "           to comments)
 
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
