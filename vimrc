set viminfo='0,f0,<0,:0,/0,@0,h
set clipboard&
set clipboard^=unnamedplus
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent
set fenc=utf-8
syntax on
command NoExpandTab : set noexpandtab
command Ucase       : %!tr "a-z" "A-Z"
command Lcase       : %!tr "A-Z" "a-z"
command Clear       : %!echo
