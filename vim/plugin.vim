call plug#begin('~/.vim/plugged')

  " global
  Plug 'ap/vim-css-color'
  Plug 'luochen1990/rainbow'
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  Plug 'ryanoasis/vim-devicons'
  Plug 'airblade/vim-gitgutter'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'rakr/vim-one'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'thaerkh/vim-workspace'
  Plug 'tpope/vim-surround'

  " language
  Plug 'pangloss/vim-javascript'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'othree/javascript-libraries-syntax.vim'
  Plug 'hail2u/vim-css3-syntax'
  Plug 'neovimhaskell/haskell-vim'
  Plug 'posva/vim-vue'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'mhartington/nvim-typescript'
  Plug 'wavded/vim-stylus'

  " lint
  Plug 'w0rp/ale'

  " complete
  Plug 'ternjs/tern_for_vim'
  Plug 'mattn/emmet-vim'
  Plug 'ervandew/supertab'
  Plug 'carlitux/deoplete-ternjs'
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  " Language Server Protocol
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'sh install.sh',
    \ }
  "snippets
  Plug 'SirVer/ultisnips'
  Plug 'VimSnippets/vim-web-snippets'
  Plug 'heavenshell/vim-jsdoc', {'for': ['javascript', 'jsx', 'typescript']}
  Plug 'styled-components/vim-styled-components'

  " others
  Plug 'terryma/vim-multiple-cursors'
  Plug 'wakatime/vim-wakatime'
  Plug 'dyng/ctrlsf.vim'
  Plug 'majutsushi/tagbar'
  Plug 'jiangmiao/auto-pairs'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'alvan/vim-closetag'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
call plug#end()

source ~/.vim/plugConf.vim

