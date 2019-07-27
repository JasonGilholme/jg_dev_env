"
" Plugins
"
call plug#begin($VIMRUNTIME . '/plugins')

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive', { 'tag': 'v2.5' }
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline', { 'tag': 'v0.10' }
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'
" Plug 'w0rp/ale', { 'tag': 'v2.3.0' }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi', { 'for': 'python' }
" Plug 'davidhalter/jedi-vim'
" Plug 'Shougo/echodoc.vim'
Plug 'majutsushi/tagbar', { 'tag': 'v2.7' }
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'tag': '0.17.5', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'

call plug#end()
