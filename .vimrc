"""""""""" 
"""""""""" [ KEYBINDS ]
"""""""""" 

call plug#begin('~/.local/share/nvim/plugged')

""""""""""""""""""""""""""""""""""""""""""""""""" VISUAL

"" Theme
  Plug 'haishanh/night-owl.vim'

"" Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

""""""""""""""""""""""""""""""""""""""""""""""""" CORE

"" Navigation
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

"" Window Management
  Plug 'simeji/winresizer'

"" Editing
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'

"" Visual
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

"" Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-rooter'

""""""""""""""""""""""""""""""""""""""""""""""""" SYNTAX

"" ALE
  Plug 'w0rp/ale'

"" JavaScript
  Plug 'pangloss/vim-javascript'
  Plug 'kern/vim-es7'
  Plug 'maxmellon/vim-jsx-pretty'

"" TypeScript
  Plug 'leafgarland/typescript-vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""" 

"""""""""" 
"""""""""" [ KEYBINDS ]
"""""""""" 

""""""""""""""""""""""""""""""""""""""""""""""""" LEADER KEY
"" Space is leader key
let mapleader=" " 

""""""""""""""""""""""""""""""""""""""""""""""""" CONVENIENCE

"" Enable mouse
set mouse=a

"" Clipboard operations
map <leader><leader>c "*y
map <leader><leader>x "*d
map <leader><leader>v "*p

"" Commenting
nnoremap <leader>cl gcc<CR>
map <leader>cc gc

""""""""""""""""""""""""""""""""""""""""""""""""" CONFIG AND PLUGINS
"" Reload plugins
map <leader>qP :PlugInstall<CR> 

"" Reload config
map <leader>qR :source $MYVIMRC<CR> 
map <leader>fed :edit $MYVIMRC<CR> 


""""""""""""""""""""""""""""""""""""""""""""""""" FZF

"" Files
map <leader>ff :Files<CR>
map <leader>fdf :Files 
map <leader>fdd :Files ~/dev<CR> 
map <leader>fdp :Files $PWD<CR>
map <leader>fpf :GFiles 

"" Project search
map <leader>ps :Ag<CR> 

"" Buffers

""" List all open buffers
map <leader>bb :Buffers<CR>

"" Colors/Themes
""" List all color schemes
map <leader>Tc :Colors<CR> 

""""""""""""""""""""""""""""""""""""""""""""""""" SWIPER

""" Swipe all lines in the current buffer
map <leader>fs :BLines<CR>

""" Swipe all lines in all open buffers
map <leader>fS :Lines<CR> 

""""""""""""""""""""""""""""""""""""""""""""""""" WINDOW MANAGEMENT

""" Leading sequence for window management is [SPC w]
map <leader>w <C-w>

""" Switch window focus
map <leader><Tab> <C-w>w

""" Switch window focus
map <leader>ww :Windows<CR>

""" Start resizer in resize mode
map <leader>wr :WinResizerStartResize<CR>

""" Start resizer in focus mode
map <leader>wf :WinResizerStartFocus<CR>

""" Start resizer in move mode
map <leader>wm :WinResizerStartMove<CR>

" NERDTREE
"" Focus NERDTree window
map <leader>w0 :NERDTreeFocus<CR>

"" Toggle NERDTree window
map <leader>tt :NERDTreeToggle<CR>

"" Wait for an arg, then close that tab
map <leader>tc :tabclose 

"" Close the current tab
map <leader>tC :tabclose<CR> 

"""""""""" 
"""""""""" [ ALE ]
"""""""""" 

"" Layout
let g:ale_sign_column_always=1
hi link ALEErrorSign    Error
hi link ALEWarningSign  Warning
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'

"" Enable Airline section
let g:airline#extnsions#ale#enabled=1

"" Show list on lint
let g:ale_open_list=1
let g:ale_keep_list_window_open=1

"" Set up linters
let b:ale_fixers=['eslint']

"" Set up fixers
let b:ale_fixers=['prettier', 'eslint']

"""""""""" 
"""""""""" [ THEME ]
"""""""""" 

"" Enable terminal GUI colors

if (has("termguicolors"))
    set termguicolors
endif
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"" Enable theme

syntax enable
colorscheme night-owl

"" Enable Airline theme

let g:airline_theme='night_owl'
let g:airline_powerline_fonts = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''

"" Enable indent guides

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"" Split bar is 10% lighter than background color

hi VertSplit guibg=bg guifg=#1B3041

"""""""""" 
"""""""""" [ LINE NUMBERS ]
"""""""""" 
set number
set numberwidth=4
set relativenumber
au TermOpen * setlocal nonumber norelativenumber

set shiftwidth=4
set tabstop=4
set expandtab
set laststatus=2

