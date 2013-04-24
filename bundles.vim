" Load Vundle. Manages all of the bundles.
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Specify all bundles.
Bundle 'gmarik/vundle'

" Language specific.
Bundle 'helino/vim-json'
Bundle 'vim-scripts/django.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'othree/vim-javascript-syntax'
Bundle 'pfdevilliers/Pretty-Vim-Python'
Bundle 'mattn/zencoding-vim'
Bundle 'marijnh/tern'
Bundle 'tpope/vim-markdown'

" General.
Bundle 'mhinz/vim-startify'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/YouCompleteMe'
Bundle 'airblade/vim-gitgutter'
Bundle 'gerw/vim-HiLinkTrace'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'embear/vim-localvimrc'
Bundle 'SirVer/ultisnips'
Bundle 'nelstrom/vim-qargs'
Bundle 'myusuf3/numbers.vim'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-eunuch'

" Enable some syntax settings that had to be disabled for Vundle.
filetype plugin indent on

" Configure syntastic.
let g:syntastic_mode_map={ 'mode': 'active',
	\ 'active_filetypes': [],
	\ 'passive_filetypes': ['html', 'cpp'] }
let g:syntastic_check_on_open=1

" Enable Tern.
source ~/.vim/bundle/tern/vim/tern.vim

" Configure YouCompleteMe.
au VimEnter * let g:ycm_cache_omnifunc=0
let g:ycm_add_preview_to_completeopt=0
set completeopt-=preview

" Configure localvimrc.
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0

" Configure zencoding.
let g:user_zen_settings = {
\	'indentation': '	'
\}

" Configure EasyMotion.
let g:EasyMotion_leader_key = '<Space>'

" Configure Ultisnips.
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsSnippetDirectories = ['.snippets', 'snippets']

" Toggle numbers bundle. (l)
nnoremap <leader>l :NumbersToggle<CR>

" Ag commands.
nmap <leader>a :Ag! "<cword>\s*\("<CR>

" Rename a JavaScript variable with Tern. (r)
nmap <leader>r :TernRename<CR>

" Jump to JavaScript definition with tern. (j)
nmap <leader>j :TernDef<CR>

" Shows the errors window. (e)
nmap <silent> <leader>e :Errors<CR>

" Gundo commands. (u)
nmap <silent> <leader>u :GundoToggle<CR>

" Toggle the NERDTree pane. (n)
nmap <silent> <leader>n :NERDTreeTabsToggle<CR>

" Use CtrlP to search tags. (p)
nmap <silent> <leader>p :CtrlPTag<CR>

" Enable indent guides on boot and allow colorschemes to style them.
nmap <silent> <leader>i :IndentGuidesToggle<CR>
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
