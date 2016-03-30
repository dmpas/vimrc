set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'dmpas/vimrc'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'OrangeT/vim-csharp'
Plugin 'dmpas/OneScriptVim'
Plugin 'udalov/kotlin-vim'
Plugin 'ekalinin/Dockerfile.vim'

call vundle#end()

filetype plugin indent on

noremap <C-n> :NERDTreeToggle<CR>
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

nnoremap <F9> :!oscript %:t<CR>
inoremap <F9> <Esc>:!oscript %:t<CR>

nnoremap <F2> :write<CR>
inoremap <F2> <Esc>:write<CR>i

syntax on

set tabstop=4
colorscheme evening

set number
set autoindent

