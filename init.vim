call plug#begin('~/.vim/plugged') 

Plug 'ryanoasis/vim-devicons'
Plug 'kchmck/vim-coffee-script'
Plug 'preservim/tagbar'

Plug 'scrooloose/nerdcommenter'
" NERD Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" customize keymapping
map <Leader>cc <plug>NERDComToggleComment
map <Leader>c<space> <plug>NERDComComment

Plug 'preservim/nerdtree'
let mapleader=','
nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <Leader>e :NERDTreeToggle<CR>


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1


Plug 'ctrlpvim/ctrlp.vim'
" Plug 'morhetz/gruvbox'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

Plug 'jiangmiao/auto-pairs' "this will auto close ( [ {

" these two plugins will add highlighting and indenting to JSX and TSX files.
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

Plug 'VundleVim/Vundle.vim'   " ?????? ?????? ??????
Plug 'davidhalter/jedi-vim'   " python ???????????? Plug
let g:jedi#show_call_signatures=0       " ????????? ???????????? ?????? ???????????? 1=?????????, 0=???>?????????
let g:jedi#popup_select_first="0"       " ??????????????? ???????????? ?????? x
let g:jedi#force_py_version=3           " ???????????? 3 = python3 , 2 = python2

Plug 'hynek/vim-python-pep8-indent'   " python ?????? ???????????? Plug
filetype plugin indent on               " python ?????? ???????????? on

Plug 'nvie/vim-flake8'                " python ?????? ?????? plugin
" let g:syntastic_python_checkers=['flake8']        " ??? ????????? ????????? ?????? ????????????    
" let g:syntastic_python_flake8_args='--ignore=' 
Plug 'scrooloose/syntastic'

Plug 'nanotech/jellybeans.vim'
let g:jellybeans_overrides = {
\    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
if has('termguicolors') && &termguicolors
    let g:jellybeans_overrides['background']['guibg'] = 'none'
endif
call plug#end()

set nu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set copyindent
set encoding=UTF-8
colorscheme jellybeans

map <F2> :w!<CR>
map <F9> :! gcc % -o %<<CR>
map <F10> :! ./%<<CR>

