" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


" -------------------------------------------------------------------------
set nu 
set tabstop=2 
set autoindent 
set equalalways 
set statusline=[File:\ %t]\ [line\ %l\ of\ %L]\ [column\ %c\]\ %r\[FullPATH:%F]  
set cursorline
set scrolloff=5
set matchpairs=(:),{:},[:],<:>


" ========== JAVA abbreviations ========== 
iabbrev jst public static void main(String[] args){};
iabbrev jfor <CR>for (int i=0; i<CEVA ;i++) {<CR><TAB>;<CR><BS>}
iabbrev jif <CR>if ( cond ) {<CR><TAB>;<CR><BS>}
iabbrev jife <CR>if ( cond ) {<CR><TAB>;<CR><BS>} else {<CR><TAB>;<CR><BS>}
iabbrev jwhi <CR>while (cond) {<CR><TAB>;<CR><BS>}
iabbrev jswi <CR>switch (cond) {<CR>case --:<CR><TAB>;<CR>break;<CR><BS>case --:<CR><TAB>;<CR>break;<CR><BS>default:<CR><TAB>;<CR><BS><CR>}
iabbrev jo System.out.println("");

" =========== C  abbreviations =========== 
iabbrev cst #include <stdio.h><CR><CR>int main(int args, char* argv[]){<CR><TAB>printf("Hello @ %s\n",argv[0]);<CR>printf("Nr of args=%d\n",args);<CR>if(args>1){<CR><TAB>printf("Args are:\n");<CR>for(int i=1;i<args;i++){<CR><TAB>printf("\targv[%d]= %s\n",i,argv[i]);<CR><BS>}<CR><BS>}<CR><BS>return 0;<CR>}


" ========== BASH abbreviations ========== 
iabbrev bst <CR>########################################<CR># AUTHOR      : Daniel MIRCEA<CR># DESCRIPTION :<CR># DATE        :<CR>########################################<CR>#!/bin/bash<CR>
iabbrev bfor <CR>for ((i=0;i<CEVA;i++));<CR>do<CR><TAB><CR><BS>done
