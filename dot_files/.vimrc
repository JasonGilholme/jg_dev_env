"
" Plugins
"
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive', { 'tag': 'v2.5' }
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline', { 'tag': 'v0.10' }
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale', { 'tag': 'v2.3.0' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins', 'tag': '4.1' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'Shougo/echodoc.vim'
Plug 'majutsushi/tagbar', { 'tag': 'v2.7' }
Plug 'sheerun/vim-polyglot', { 'tag': 'v3.3.2' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'tag': '0.17.5', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'jremmen/vim-ripgrep'

call plug#end()

let g:python_host_prog  = $PYENV_ROOT . 'shims/python'
let g:python3_host_prog  = $PYENV_ROOT . 'shims/python3'

"
" Prefs
"
set nocompatible
set encoding=utf-8
" set shellcmdflag=-ic                " to load the .bashrc
set splitright 
set splitbelow
set mouse=a
set tabstop=4
set softtabstop=0 
set expandtab 
set shiftwidth=4 
set smarttab
set hlsearch
set number
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
set whichwrap+=h,l              " Wrap cursor movement
set updatetime=250              " Defaults to 4000

"
" Color Scheme
"
let base16colorspace=256
try
    let theme_name = "base16-" . $THEME_NAME
    if !exists('g:colors_name') || g:colors_name != theme_name
        :exe ("colorscheme " . theme_name)
    endif
catch
endtry
hi Normal ctermbg=none
hi NonText ctermbg=none

let g:python3_host_skip_check = 1
let g:python_host_skip_check = 1


"
" Keyboard Shortcuts
"
" Visual movement
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" Window navigation in different modes
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>

vnoremap <C-K> <Esc><C-W><C-K>
vnoremap <C-L> <Esc><C-W><C-L>
vnoremap <C-H> <Esc><C-W><C-H>
vnoremap <C-J> <Esc><C-W><C-J>

inoremap <C-K> <Esc><C-W><C-K>
inoremap <C-L> <Esc><C-W><C-L>
inoremap <C-H> <Esc><C-W><C-H>
inoremap <C-J> <Esc><C-W><C-J>

function IsTerminal()
    return bufwinnr("terminal") == bufwinnr("%")
endfunction

tnoremap <expr> <C-H> IsTerminal() ? "\<C-\>\<C-N>\<C-W>h" : "\<C-H>"
tnoremap <expr> <C-J> IsTerminal() ? "\<C-\>\<C-N>\<C-W>j" : "\<C-J>"
tnoremap <expr> <C-K> IsTerminal() ? "\<C-\>\<C-N>\<C-W>k" : "\<C-K>"
tnoremap <expr> <C-L> IsTerminal() ? "\<C-\>\<C-N>\<C-W>l" : "\<C-L>"
tnoremap <expr> <Esc> IsTerminal() ? "\<C-\>\<C-n>" : "\<Esc>"

nnoremap <silent> <expr> <F9> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : "\:NERDTree<CR>"
nnoremap <silent> <S-F9> :NERDTreeFind<CR>
nnoremap <silent> <F10> :TagbarToggle<CR>
nnoremap <silent> <F11> :Goyo<CR>

nnoremap <silent> <C-F><C-A><C-F> :terminal cd $(dirname %:p) && PYENV_VERSION=3.6.8 python $DEV_ENV_ROOT/pyenv/versions/3.6.8/bin/futurize -1 -w `git rev-parse --show-toplevel`<CR>
nnoremap <silent> <C-F><C-F> :terminal PYENV_VERSION=3.6.8 python $DEV_ENV_ROOT/pyenv/versions/3.6.8/bin/futurize -1 -w %:p<CR>

nnoremap <silent> <C-F><C-A><C-B> :terminal cd $(dirname %:p) && PYENV_VERSION=3.6.8 python $DEV_ENV_ROOT/pyenv/versions/3.6.8/bin/black --fast `git rev-parse --show-toplevel`<CR>
nnoremap <silent> <C-F><C-B> :terminal PYENV_VERSION=3.6.8 python $DEV_ENV_ROOT/pyenv/versions/3.6.8/bin/black --fast %:p<CR>

"
" Autostart
"
function StartupFunction()
    if argc() != 0 && exists("s:std_in")
        " Set the current dir based on the file passed on the command line
        :lcd%:p:h
    endif
endfunction

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * call StartupFunction()

"
" Deoplete Setup
"
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#auto_completion_start_length = 0
let g:deoplete#manual_completion_start_length = 0


"
" Jedi - auto complete disabled to use deoplete hook instead
"
let g:jedi#auto_vim_configuration = 0
let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = 0
let g:jedi#smart_auto_mappings = 0

"
" Echodoc
"
let g:echodoc_enable_at_startup = 1
let g:echodoc_type = 'echo'

"
" Snippets
"
let g:UltiSnipsExpandTrigger = "<C-Y>"
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
function s:goyo_leave()
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

autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufEnter * if IsTerminal() | :startinsert | endif
autocmd TermOpen * setlocal nonumber norelativenumber


" Terminal toggling
nnoremap <silent> <M-CR> :call ShowTerminalPanel()<CR>
tnoremap <silent> <M-CR> <C-\><C-N>:call CloseTerminalPanel()<CR>

function CloseTerminalPanel()
    if IsTerminal()
        :q
    else
        :startinsert
    endif
endfunction

function ShowTerminalPanel()
    let a:termname = "terminal"
	let pane = bufwinnr(a:termname)
	let buf = bufexists(a:termname)
	if pane > 0
		" pane is visible - focus it
        :exe pane . "wincmd w"
	elseif buf > 0
		" buffer is not in pane - make a pane and put the buffer in it
        :exe "vert bo split"
		:exe "buffer " . a:termname
	else
		" no buffer or pane - create both
        :exe "vert bo split"
		:terminal
        " :setlocal nonumber norelativenumber
		:exe "f " a:termname
	endif
    " Jump into insert mode
    :startinsert
endfunction

