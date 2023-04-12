call plug#begin()
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 't9md/vim-quickhl'
Plug 'unblevable/quick-scope'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
call plug#end()
set clipboard+=unnamed
set shellslash
set guioptions-=m
set guioptions+=R
set guioptions-=T
set number
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set encoding=utf-8 
scriptencoding utf-8
set wildmenu
set showcmd
set background=dark
set laststatus=2
set cursorline
set cursorcolumn
set whichwrap=b,s,h,l,<,>,~,[,]
set virtualedit=onemore
set ruler
set autoread
set confirm
set showmatch
set completeopt=menuone,noinsert
set cindent
set smarttab
set expandtab
set incsearch
set hlsearch
set wrapscan
set ignorecase
set smartcase

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy
nnoremap し” ci"
inoremap <silent> jj <ESC>
inoremap <silent> ｊｊ <ESC>
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <silent><expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
inoremap <silent><expr> <Enter> coc#pum#visible() ? coc#pum#confirm() : "\<Enter>"
inoremap <silent><expr> <Esc> coc#pum#visible() ? coc#pum#cancel() : "\<Esc>"
inoremap <silent><expr> <C-h> coc#pum#visible() ? coc#pum#cancel() : "\<C-h>"
inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#pum#next(1):
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<S-TAB>" " "\<C-h>"
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
augroup ag2omnicomp
	autocmd!
	autocmd Filetype html setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd Filetype xml setlocal omnifunc=xmlcomplete#CompleteTags
	autocmd Filetype css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd Filetype javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd Filetype php setlocal omnifunc=phpcomplete#CompletePHP
	autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
	autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

syntax enable

