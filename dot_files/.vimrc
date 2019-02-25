
"
" Plugins
"
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive', { 'tag': 'v2.5' }
" Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline', { 'tag': 'v0.10' }
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale', { 'tag': 'v2.3.0' }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins', 'tag': '4.1' }
else
  Plug 'Shougo/deoplete.nvim', { 'tag': '4.1' }
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'Shougo/echodoc.vim'
Plug 'majutsushi/tagbar', { 'tag': 'v2.7' }
Plug 'sheerun/vim-polyglot', { 'tag': 'v3.3.2' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'junegunn/fzf', { 'tag': '0.17.5', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

call plug#end()

"
" Prefs
"
set nocompatible
set encoding=utf-8
set splitright 
set splitbelow
set mouse=a
set tabstop=4
set softtabstop=0 
set expandtab 
set shiftwidth=4 
set smarttab
set hlsearch
set number relativenumber
set textwidth=0
set colorcolumn=80
set incsearch
set autoread
set scrolloff=8
set sidescroll=1
set sidescrolloff=15
set winwidth=79
set winheight=5
set winminheight=5
set noswapfile
set smartcase
set ignorecase
set showcmd
set cmdheight=2                 " For echodoc to function
set clipboard=unnamedplus       " Use system clipboard
set completeopt-=preview        " Don't show completion preview window
set nowrap

"
" Color Scheme
"
let base16colorspace=256
try
    if !exists('g:colors_name') || g:colors_name != 'base16-snazzy'
        colorscheme base16-snazzy
    endif
catch
endtry
hi Normal ctermbg=none
hi NonText ctermbg=none


"
" Keyboard Shortcuts
"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <F9> :TagbarToggle<CR>
nnoremap <F10> :Goyo<CR>
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"

"
" Autostart
"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd VimEnter * nested :TagbarOpen


"
" Python interpreters
"
" let g:python_host_prog = '/home/jase/dev_setup/.pyenv/versions/2.7.15/bin/python'
" let g:python3_host_prog = '/home/jase/dev_setup/.pyenv/versions/3.6.8/bin/python3'


"
" Deoplete Setup
"
" if !exists('g:deoplete#sources')
"     let g:deoplete#sources = {}
" endif
" if !exists('g:deoplete#keyword_patterns')
"     let g:deoplete#keyword_patterns = {}
" endif
" if !exists('g:deoplete#omni#input_patterns')
"     let g:deoplete#omni#input_patterns = {}
" endif
" 
" let g:deoplete#sources._ = ['buffer', 'member', 'file', 'tag'] ", 'omni']
" let g:deoplete#sources.go = ['buffer', 'member', 'file', 'omni']
" let g:deoplete#sources.python = ['buffer', 'member', 'file', 'omni']
" let g:deoplete#keyword_patterns['default'] = '\h\w*'
" let g:deoplete#omni#input_patterns.go = '([^. \t](\.|->))\w*'
" let g:deoplete#omni#input_patterns.python = '([^. \t]\.|^\s*@|^\s*from\s.+ import |^\s*from |^\s*import )\w*'

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_completion_start_length = 0
let g:deoplete#manual_completion_start_length = 0

let g:jedi#auto_vim_configuration = 0
let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = 0
let g:jedi#smart_auto_mappings = 0

let g:echodoc_enable_at_startup = 1
let g:echodoc_type = 'echo'
"
" Snippets
"
let g:UltiSnipsExpandTrigger = "<c-y>"
let g:ultisnips_python_style = "google"


"
" ALE Settings
"
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_filetype_changed = 0
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_set_highlights = 0
let g:ale_set_signs = 0
let g:ale_echo_cursor = 0
let g:ale_set_balloons = 0
let g:ale_fix_on_save = 0
let g:ale_fixers = {'go': ['gofmt'], 'python': ['black'], 'javascript': ['eslint']}
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_javascript_eslint_use_global = 1
let g:ale_python_black_use_global = 1
let g:ale_python_black_options = "--fast"


"
" Goyo Settings
"
function! s:goyo_leave()
  hi Normal ctermbg=none
  hi NonText ctermbg=none
endfunction

autocmd! User GoyoLeave nested call <SID>goyo_leave()

set statusline+=%#warningmsg#
set statusline+=%*


"
" Airline Customisations
"
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0   
let g:airline_section_b = "%{airline#util#wrap(airline#extensions#branch#get_head(),0)}"
let g:airline_section_y = ""
let g:airline_section_z = "%#__accent_bold#%l%#__restore__#%#__accent_bold#/%L"
let g:airline_section_warning = ""
let g:airline_section_error = ""


"
" FZF Setup
"
nnoremap <silent> <C-p> :FZF<CR>

"
" Python Syntax
"
let g:python_highlight_indent_errors = 0
let g:python_highlight_space_errors = 0


" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

