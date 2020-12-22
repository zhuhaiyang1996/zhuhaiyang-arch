call plug#begin('~/.config/Dotfile/nvim-plug/plugged')

"markdown
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
"markdown

Plug 'neoclide/coc.nvim'
Plug 'yuki-ycino/fzf-preview.vim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }           " 文件管理器
Plug 'kristijanhusak/defx-icons'
Plug 'skywind3000/vim-terminal-help'                                " 打开终端
Plug 'kevinhwang91/rnvimr'                                          " use Ranger in a floating window
Plug 'ryanoasis/vim-devicons'                                       " Adds filetype glyphs (icons) to various vim plugins.
Plug 'mhinz/vim-startify'                                           " Provides a start screen for Neovim.
Plug 'vim-airline/vim-airline'                                      " Airline status bar
Plug 'Yggdroot/hiPairs'                                             " Highlights the pair surrounding the current cursor position
Plug 'Yggdroot/indentLine'                                          " 缩进线
Plug 'itchyny/vim-cursorword'                                       " Underlines the word under the cursor
Plug 'chrisbra/Colorizer'                                           " A plugin to color colornames and codes
Plug 'mg979/vim-visual-multi'
Plug 'liuchengxu/vim-which-key'                                     " displays available keybindings in popup.
Plug 'tyru/open-browser.vim'                                        " Open URI with your favorite browser from your most favorite editor
Plug 'junegunn/vim-easy-align'                                      " A simple, easy-to-use Vim alignment plugin
Plug 'skywind3000/asyncrun.vim'                                     " 后台运行 shell 命令，并将结果实时显示到 Vim 的 Quickfix 窗口中
Plug 'preservim/nerdcommenter'                                      " 快速注释插件
"Plug 'easymotion/vim-easymotion'                                    " 快速跳转
Plug 'majutsushi/tagbar'                                            " Tagbar: a class outline viewer for Vim
Plug 'yianwillis/vimcdoc'                                           " Vim 中文文档
Plug 'RRethy/vim-illuminate'                                        " automatically highlighting other uses of the current word under the cursor
Plug 'inkarkat/vim-visualrepeat'
Plug 'thinca/vim-quickrun'                                          " 快速执行当前文件, py/rb/sh,使用message进行结果展示
Plug 'morhetz/gruvbox'                                              " theme
    let g:gruvbox_contrast_dark = 'hard'
Plug 'SirVer/ultisnips'                                             " UltiSnips is the ultimate solution for snippets in Vim
Plug 'honza/vim-snippets'
Plug 'mboughaba/i3config.vim'                                       " 文件高亮
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-fugitive'                                           " git support
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}              " better python
Plug 'tpope/vim-commentary'                                         " better commenting
Plug 'luochen1990/rainbow'                                          " rainbow parenthesis
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'christoomey/vim-tmux-navigator'                               " seamless vim and tmux navigation
Plug 'godlygeek/tabular'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=1
    set conceallevel=1
    let g:tex_conceal='abdmg'

Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
    let g:instant_markdown_port = 10086
    let g:instant_markdown_browser = "qutebrowser"
    let g:instant_markdown_autostart = 0
    let g:instant_markdown_autoscroll = 1
call plug#end()
