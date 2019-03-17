" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plug 'itchyny/lightline.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline#extensions#tabline#enabled = 1

Plug 'scrooloose/nerdtree'
map <C-o> :NERDTreeToggle<CR>

Plug 'Valloric/YouCompleteMe'

" Initialize plugin system
call plug#end()

set laststatus=2
set wildmenu        " Tab completion
set wildignore+=*/.git/*,*/.bzr/*,*~,*/build/*,*.pyc

" Options
set nocompatible    " Disable vi compatibility
set modeline        " Enable modeline
set noshowcmd
set autoindent		" New lines inherit the indentation of previous lines
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

set hlsearch	" Enable search highlighting
set ignorecase	" Ignore case when searching
set incsearch	" Incremental search that shows partial matches
set smartcase	" Automatically switch search to case-sensitive when search query contains an uppercase letter

set listchars=tab:›\ ,trail:•
set list
set fillchars=fold:·
set backspace=indent,eol,start

syntax enable
set wrap
set number	" Show line numbers on the sidebar
set mouse=a	" Enable mouse for scrolling and resizing
set background=dark

"set foldmethod=indent	" Fold based on indention levels
set foldnestmax=3	" [M`X=Only fold up to three nested levels
set nofoldenable	" Disable folding by default

" Search current word glogg-style
map <C-g> :execute "vimgrep /" . expand("<cword>") . "/j %" <Bar> cw<CR>
