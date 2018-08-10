" NeoBundle Scripts-----------------------------
if has('vim_starting')  
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)  
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))  
NeoBundleFetch 'Shougo/neobundle.vim'


" ------------------------------------
" THIS IS WHERE YOUR PLUGINS WILL COME
" ------------------------------------

NeoBundle 'fatih/vim-go'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'rhysd/vim-clang-format'
NeoBundle 'avakhov/vim-yaml'
NeoBundle 'tpope/vim-fugitive'

call neobundle#end()  
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck  
"End NeoBundle Scripts-------------------------

" Clipboard 
set clipboard=unnamed

set termguicolors
set background=dark
colorscheme mustang 
set autoindent
set number
set showmatch
set ignorecase
set smartcase
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
syntax off
set relativenumber
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" set relative line numbers in normal mode only.
" autocmd InsertEnter * :set number
" autocmd InsertLeave * :set relativenumber

" enable syntax highlighting for git.
autocmd FileType gitcommit syntax enable

:hi Search cterm=NONE ctermfg=black ctermbg=yellow

" Vim-Go Settings
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"

" clang-format settings
"--------------------------------------------------"
let g:clang_format#auto_format = 1
let g:clang_format#code_style = "google"
"--------------------------------------------------"


" delimitMate settings
let delimitMate_expand_cr=1
