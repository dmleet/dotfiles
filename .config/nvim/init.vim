set nocompatible
filetype off

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

" Coc
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" Language support
"Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'dag/vim-fish'
Plug 'plasticboy/vim-markdown'

" Fuzzy finder
Plug 'junegunn/fzf'

" GUI
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'

" Color hex values
Plug 'gko/vim-coloresque'

" Themes
Plug 'mhartington/oceanic-next'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set termguicolors
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

" rust
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'

" As-you-type autocomplete
set completeopt=menu,menuone,preview,noselect,noinsert
set cmdheight=2
set updatetime=300

" ALE
"let g:ale_completion_enabled = 1
"let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

" Editor
filetype plugin indent on
set autoindent
set encoding=utf-8
set nowrap
set number
set backspace=2
set mouse=a
set cc=80
set emoji
set lazyredraw
set synmaxcol=500
set laststatus=2

" Permanent undo
set undodir=~/.vimdid
set undofile

" Wrapping options
set formatoptions=tc " wrap text and comments using textwidth
set formatoptions+=r " continue comments when pressing ENTER in I mode
set formatoptions+=q " enable formatting of comments with gq
set formatoptions+=n " detect lists for formatting
set formatoptions+=b " auto-wrap in insert mode, and do not wrap old long lines

" Search
set incsearch
set ignorecase
set smartcase
set gdefault

" Show hidden characters
" Verbose: set listchars=nbsp:¬,eol:¶,extends:»,precedes:«,trail:•
set listchars=nbsp:¬,extends:»,precedes:«,trail:•
