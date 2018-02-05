set number
set title
set ambiwidth=double
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set nrformats-=octal
set hidden
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu
if has("autocmd")
    filetype plugin indent on
endif
syntax on
colorscheme darkblue

inoremap { {}<LEFT>
inoremap ( ()<LEFT>

set statusline=%F
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=%=
set statusline+=[ENC=%{&fileencoding}]
set statusline+=[LOW=%l/%L]
set laststatus=2
set encoding=utf-8
set fileencoding=utf-8

