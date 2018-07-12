nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>
nnoremap <buffer> <F8> :!tmux run-shell -b -t 3 "python3 %"<cr>
set encoding=utf-8
let python_highlight_all=1
syntax on
set number
set nocompatible              " required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'bling/vim-bufferline'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-flake8'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
set autoindent " Preserve current indent on new lines
set cindent " set C style indent
set expandtab " Convert all tabs typed to spaces
set softtabstop=4 " Indentation levels every four columns
set shiftwidth=4 " Indent/outdent by four columns
set shiftround " Indent/outdent to nearest tabstop
let g:indentLine_setColors = 1
"let g:indentLine_loaded = 1
let g:indentLine_color_term = 249
let g:indentLine_bgcolor_term = 236
"let g:indentLine_bgcolor_gui = '#FF5F00'
let g:indentLine_char = '┆'
"let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 2
"let g:indentLine_enabled = 1
let g:syntastic_python_checker_args='--ignore=E113'
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
