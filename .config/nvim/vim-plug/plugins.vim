" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Lazy file search
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    " Fix cursor hold for Fern
    Plug 'antoinemadec/FixCursorHold.nvim'
    " File Explorer
    Plug 'lambdalisue/fern.vim'
    " Auto pairs
    Plug 'jiangmiao/auto-pairs'
    " COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
