set nocompatible               " be iMproved
filetype off                   " required!
set path+=**
set wildmenu
set shiftwidth=2
set nu
set nobackup
set nowritebackup
set noswapfile
set clipboard=unnamed

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" http://effectif.com/vim/using-ctags-with-bundler-gems
set tags+=gems.tags

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'mileszs/ack.vim'
Plug 'slim-template/vim-slim'
Plug 'editorconfig/editorconfig-vim'
Plug 'digitaltoad/vim-pug'
" Plug 'vim-syntastic/syntastic'
" Plug 'posva/vim-vue'
" Plug 'sekel/vim-vue-syntastic'
Plug 'w0rp/ale'
call plug#end()

" hashivim/vim-terraform
let g:terraform_align=1
" map <leader>C :CtrlPClearCache<cr>

set tabstop=2
set expandtab

if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

" let g:syntastic_javascript_eslint_exec = '~/.nvm/versions/node/v10.4.0/bin/eslint'

" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_vue_checkers = ['eslint']
