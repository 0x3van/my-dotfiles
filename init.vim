
call plug#begin('~/local/share/nvim/plugged')
   " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'


    " theme

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'
    Plug 'dinhhuy258/git.nvim'
    Plug 'itchyny/vim-gitbranch'
 Plug 'projekt0n/github-nvim-theme'

            " Install this plugin.
        Plug 'tjdevries/nlua.nvim'

        " (OPTIONAL): If you want to use built-in LSP (requires Neovim HEAD)
        "   Currently only supported LSP, but others could work in future if people send PRs :)
        Plug 'neovim/nvim-lspconfig'

        " (OPTIONAL): This is recommended to get better auto-completion UX experience for builtin LSP.
        Plug 'nvim-lua/completion-nvim'

        " (OPTIONAL): This is a suggested plugin to get better Lua syntax highlighting
        "   but it's not currently required
        Plug 'euclidianAce/BetterLua.vim'

        " (OPTIONAL): If you wish to have fancy lua folds, you can check this out.
        Plug 'tjdevries/manillua.nvim'

    " Completion / linters / formatters
    Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
    Plug 'plasticboy/vim-markdown'

    " Git
    Plug 'airblade/vim-gitgutter'
    Plug 'nanozuki/tabby.nvim',
    Plug 'chrisbra/csv.vim'
    Plug 'tpope/vim-fugitive'
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/main.vim'
set autoindent

call plug#end()
filetype plugin indent on
syntax on

" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2


" Normal mode remappings
nnoremap <C-q> :q!<CR>
nnoremap <F4> :bd<CR>
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <F6> :sp<CR>:terminal<CR>

" Tabs
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"emmet
let g:user_emmet_leader_key:','

colorscheme sobrio

let g:airline_theme='sobrio'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

require"tabby".setup()

set mouse=a

colorscheme github_dark
-- Lua
require('github-theme').setup()

let g:github_function_style = "NONE"

require('git).setup()


" Your vimrc
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}
