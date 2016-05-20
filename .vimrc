set nocompatible
filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" The bundles you install will be listed here
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'fatih/vim-go'

filetype plugin indent on

" Manage Searches
set ignorecase
set smartcase
set incsearch
set hlsearch

" The rest of your config follows here

let g:airline#extensions#tabline#enabled = 1
set laststatus=2

set t_Co=256
set background=dark
colorscheme mustang 

"Monokai settings
let g:molokai_original = 1
let g:rehash256 = 1

"Ultisnips settings
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Vim-Go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

map <F2> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>

syntax enable

set number

set ts=4

set autoindent

set expandtab

set shiftwidth=4

set showmatch
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Highlight current line
:set cursorline
:hi CursorLine   term=bold cterm=NONE guibg=Grey40 guifg=white
:hi CursorColumn term=bold cterm=NONE guibg=Grey40 guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
