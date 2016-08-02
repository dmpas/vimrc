set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'dmpas/vimrc'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'dmpas/vim-csharp'
Plugin 'dmpas/OneScriptVim'
Plugin 'udalov/kotlin-vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'dmpas/oscript-tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tfnico/vim-gradle'
Plugin 'sjl/badwolf'
Plugin 'leafgarland/typescript-vim'
Plugin 'rust-lang/rust.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()

filetype plugin indent on

nmap <F8> :TagbarToggle<CR>

noremap <C-n> :NERDTreeToggle<CR>
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

nnoremap <F9> :!oscript %:t<CR>
inoremap <F9> <Esc>:!oscript %:t<CR>

nnoremap <F2> :write<CR>
inoremap <F2> <Esc>:write<CR>

set pastetoggle=<F3>

nmap <C-x>x :qall!<CR>
nmap <C-x><C-x> :qall!<CR>

syntax on

set tabstop=4
colorscheme badwolf

set number
set autoindent
set nowrap
set shiftwidth=4

set listchars=tab:▸\ ,trail:·
set list

let g:jsx_ext_required = 0

let g:net_framework_top = "/usr/bin/"
let g:net_framework_version = "4.0"
let g:net_framework_compiler_executable = "mono-csc"
let g:net_framework_build_executable = "xbuild"

" Чтобы не ругалось на строку из табов, что часто встречается в исходниках на ОдноСкрипте
autocmd filetype onescript let g:airline#extensions#whitespace#trailing_regexp = ' $'

autocmd filetype onescript imap <silent> ()() []<Esc>i
autocmd filetype onescript imap <silent> ((( [
autocmd filetype onescript imap <silent> ))) ]

