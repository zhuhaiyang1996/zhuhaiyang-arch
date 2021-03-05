" ┌───────────────────────────────────────────────────────────────────────────┐
" │                           built in plugins                                │
" └───────────────────────────────────────────────────────────────────────────┘
let loaded_netrw = 0                                    " diable netew
let g:omni_sql_no_default_maps = 1                      " disable sql omni completion
let g:loaded_python_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0
let g:python3_host_skip_check=1
let g:python3_host_prog = expand('/usr/bin/python3')

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                           Defx                                            │
" └───────────────────────────────────────────────────────────────────────────┘
nnoremap <silent> <Leader>e
\ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>

nnoremap <silent> <Leader>a
\ :<C-u>Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p')`<CR>

function! s:defx_mappings() abort
    " Defx window keyboard mappings
    setlocal signcolumn=no
    setl number
    setl relativenumber
    setl nospell
    " 使用回车打开文件
    nnoremap <silent><buffer><expr> <CR> defx#do_action('multi', ['drop'])
    nnoremap <silent><buffer><expr> dd defx#do_action('remove')
    nnoremap <silent><buffer><expr> mv defx#do_action('rename')
    nnoremap <silent><buffer><expr> <C-C> defx#do_action('copy')
    nnoremap <silent><buffer><expr> <C-V> defx#do_action('paste')
    nnoremap <silent><buffer><expr> if defx#do_action('new_file')
    nnoremap <silent><buffer><expr> id defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> ~ defx#do_action('cd')
    nnoremap <silent><buffer><expr> U defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> q defx#do_action('quit')
    nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> ! defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> R defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <Space><Space> defx#do_action('toggle_select')
    nnoremap <silent><buffer><expr> s defx#do_action('drop', 'split')
    nnoremap <silent><buffer><expr> v defx#do_action('drop', 'vsplit')
    nnoremap <silent><buffer><expr> t defx#do_action('drop', 'tabe')
    " nnoremap <silent><buffer><expr> o defx#do_action('open_tree')
    nnoremap <silent><buffer><expr> O defx#do_action('open_tree_recursive')
endfunction

call defx#custom#option('_', {
  \ 'root_marker': '[IN]',
	\ 'winwidth': 35,
	\ 'split': 'vertical',
	\ 'direction': 'topleft',
	\ 'listed': 1,
	\ 'show_ignored_files': 0,
  \ 'columns': 'git:mark:indent:icons:filename:type',
  \ 'buffer_name': 'defxplorer',
  \ 'toggle': 1,
  \ 'resume': 1,
	\ 'ignored_files':
	\     '.mypy_cache,.pytest_cache,.git,.hg,.svn,.stversions'
	\   . ',__pycache__,.sass-cache,*.egg-info,.DS_Store,*.pyc,*.swp'
	\ })

call defx#custom#column('filename', {
      \ 'min_width': 40,
      \ 'max_width': 40,
      \ })
call defx#custom#column('mark', {
      \ 'readonly_icon': '✗',
      \ 'selected_icon': '✓',
      \ })
autocmd FileType defx call s:defx_mappings()

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            rainbow                                        │
" └───────────────────────────────────────────────────────────────────────────┘
let g:rainbow_active = 1

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            tmux navigator                                 │
" └───────────────────────────────────────────────────────────────────────────┘
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            semshi                                         │
" └───────────────────────────────────────────────────────────────────────────┘
let g:semshi#error_sign	= v:false                       " let ms python lsp handle this

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            indentLine                                     │
" └───────────────────────────────────────────────────────────────────────────┘
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['▏', '¦', '┆', '┊']
let g:indentLine_setColors = 0
let g:indentLine_setConceal = 0                         " actually fix the annoying markdown links conversion
let g:indentLine_fileTypeExclude = ['startify']

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            vim-markdown                                   │
" └───────────────────────────────────────────────────────────────────────────┘


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            i3config                                       │
" └───────────────────────────────────────────────────────────────────────────┘
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            Startify                                       │
" └───────────────────────────────────────────────────────────────────────────┘
let g:startify_padding_left = 10
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_change_to_vcs_root = 1
let g:startify_lists = [
    \ { 'type': 'dir'       },
    \ { 'type': 'files'     },
    \ { 'type': 'sessions'  },
    \ { 'type': 'bookmarks' },
    \ { 'type': 'commands' },
    \ ]

" bookmark examples
let  g:startify_bookmarks =  [
    \ {'v': '~/.config/nvim'},
    \ {'d': '~/.dotfiles' }
    \ ]

" custom commands
let g:startify_commands = [
    \ {'ch':  ['Health Check', ':checkhealth']},
    \ {'ps': ['Plugins status', ':PlugStatus']},
    \ {'pu': ['Update vim plugins',':PlugUpdate | PlugUpgrade']},
    \ {'uc': ['Update coc Plugins', ':CocUpdate']},
    \ {'h':  ['Help', ':help']},
    \ ]

" Airline
let g:airline_theme='gruvbox'
let g:airline_skip_empty_sections = 1
let g:airline_section_warning = ''
let g:airline_section_x=''
let g:airline_section_z = airline#section#create(['%3p%% ', 'linenr', ':%c'])
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" 顶部配置
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#buffer_min_count = 2   " show tabline only if there is more than 1 buffer
let g:airline#extensions#tabline#fnamemod = ':t'        " show only file name on tabs
let airline#extensions#coc#error_symbol = '✘:'
let airline#extensions#coc#warning_symbol = '⚠:'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.dirty= ''

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            coc                                            │
" └───────────────────────────────────────────────────────────────────────────┘
" use tab to navigate snippet placeholders
" Navigate snippet placeholders using tab
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" list of the extensions to make sure are always installed
let g:coc_global_extensions = [
            \'coc-yank',
            \'coc-pairs',
            \'coc-json',
            \'coc-actions',
            \'coc-css',
            \'coc-html',
            \'coc-tsserver',
            \'coc-yaml',
            \'coc-lists',
            \'coc-snippets',
            \'coc-python',
            \'coc-clangd',
            \'coc-prettier',
            \'coc-xml',
            \'coc-syntax',
            \'coc-git',
            \'coc-marketplace',
            \'coc-highlight',
            \'coc-flutter',
            \]
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use enter to accept snippet expansion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

" multi cursor shortcuts
nmap <silent> <C-a> <Plug>(coc-cursors-word)
xmap <silent> <C-a> <Plug>(coc-cursors-range)

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" other stuff
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>o :OR <CR>

" jump stuff
nmap <leader>jd <Plug>(coc-definition)
nmap <leader>jy <Plug>(coc-type-definition)
nmap <leader>ji <Plug>(coc-implementation)
nmap <leader>jr <Plug>(coc-references)

" other coc actions
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>

" flutter mappings
nnoremap <F3> :CocCommand flutter.devices<CR>
nnoremap <F4> :CocCommand flutter.emulators<CR>
nnoremap <F5> :CocCommand flutter.run<CR>

" fugitive mappings
nmap <leader>gd :Gdiffsplit<CR>
nmap <leader>gb :Gblame<CR>

" ======================== Commands ============================= "{{{

au BufEnter * set fo-=c fo-=r fo-=o                     " stop annoying auto commenting on new lines
au FileType help wincmd L                               " open help in vertical split
au BufWritePre * :%s/\s\+$//e                           " remove trailing whitespaces before saving
au CursorHold * silent call CocActionAsync('highlight') " highlight match on cursor hold

" enable spell only if file type is normal text
" let spellable = ['markdown', 'gitcommit', 'txt', 'text', 'liquid', 'rst']
" autocmd BufEnter * if index(spellable, &ft) < 0 | set nospell | else | set spell | endif


" coc completion popup
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" startify if no passed argument or all buffers are closed
"该断代码与 vim-floaterm 冲突
" augroup noargs
"     " startify when there is no open buffer left
"     autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif

"     " open startify on start if no argument was passed
"     autocmd VimEnter * if argc() == 0 | Startify | endif
" augroup END


" 重新打开文件时，回到最后的编辑位置。
" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" python renaming
autocmd FileType python nnoremap <leader>rn :Semshi rename <CR>

" format with available file format formatter
" command! -nargs=0 Format :call CocAction('format')

" organize imports
" command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')



" ================== Custom Functions ===================== "{{{
" startify file icons
function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" check if last inserted char is a backspace (used by coc pmenu)
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" show docs on things with K
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                           NERD Commenter                                  │
" └───────────────────────────────────────────────────────────────────────────┘
" "NERD Commenter
" 默认情况下，在注释分隔符后添加空格
let g:NERDSpaceDelims = 1

" 对美化的多行注释使用压缩语法(貌似这个没什么卵用)
let g:NERDCompactSexyComs = 1

" 按行对齐注释分隔符左对齐，而不是按代码缩进
let g:NERDDefaultAlign = 'left'

" 默认情况下，将语言设置为使用其备用分隔符（不是很明白所以忽略）
let g:NERDAltDelims_java = 1

" 添加您自己的自定义格式或覆盖默认格式（你懂的）
let g:NERDCustomDelimiters = { 'php': { 'left': '/*','right': '*/' },'html': { 'left': '<!--','right': '-->' },'py': { 'left': '#' },'sh': { 'left': '#' } }

" 允许注释和反转空行（在注释区域时很有用） （没亲测）
let g:NERDCommentEmptyLines = 1

" 取消注释时启用尾随空白的修剪
let g:NERDTrimTrailingWhitespace = 1

" 启用nerdcommenttoggle检查是否对所有选定行进行了注释
let g:NERDToggleCheckAllLines = 1


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                             Limelight                                     │
" └───────────────────────────────────────────────────────────────────────────┘
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'

" Default: 0.5
let g:limelight_default_coefficient = 0.3

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
"let g:limelight_bop = '^\s'
"let g:limelight_eop = '\ze\n^\s'

let paragraph_range = [searchpos('^$','bnW')[0],searchpos('^$','nW')[0]]
" call matchadd('Dim','\%<'.paragraph_range[0].'1')
" call matchadd('Dim','\%>'.paragraph_range[1].'1')

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                           UltiSnips                                       │
" └───────────────────────────────────────────────────────────────────────────┘
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                             vim-which-key                                 │
" └───────────────────────────────────────────────────────────────────────────┘
nnoremap <silent> <leader> :WhichKey ','<CR>

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                             quickrun                                      │
" └───────────────────────────────────────────────────────────────────────────┘
let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}

let g:quickrun_no_default_key_mappings = 1
nmap <Leader>r <Plug>(quickrun)
map <F10> :QuickRun<CR>

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                    vim-floaterm                           │
" └───────────────────────────────────────────────────────────────────────────┘
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
autocmd FileType floaterm tnoremap <buffer> <Esc> q
nmap <leader>r :FloatermNew ranger<CR>
nmap <leader>g :FloatermNew lazygit<CR>
" tmux

if executable('tmux') && filereadable(expand('~/.zshrc')) && $TMUX !=# ''
    let g:vimIsInTmux = 1
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
else
    let g:vimIsInTmux = 0
endif

if g:vimIsInTmux == 1
    let g:tmuxline_preset = {
                \'a'    : '#S',
                \'b'    : '%R',
                \'c'    : [ '#{sysstat_mem} #[fg=blue]\ufa51#{upload_speed}' ],
                \'win'  : [ '#I', '#W' ],
                \'cwin' : [ '#I', '#W', '#F' ],
                \'x'    : [ "#[fg=blue]#{download_speed} \uf6d9 #{sysstat_cpu}" ],
                \'y'    : [ '%a' ],
                \'z'    : '#H #{prefix_highlight}'
                \}
    let g:tmuxline_separators = {
                \ 'left' : "\ue0bc",
                \ 'left_alt': "\ue0bd",
                \ 'right' : "\ue0ba",
                \ 'right_alt' : "\ue0bd",
                \ 'space' : ' '}
endif

"--------------------------------------
"asyncrun
"--------------------------------------
" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6

" 任务结束时候响铃提醒
let g:asyncrun_bell = 1

" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>

" F9 编译(单个文件)
au BufNewFile,BufRead *.c  nnoremap <silent> <F9> :w<cr>:AsyncRun g++  "$(VIM_FILEPATH)" -o a <cr>
au BufNewFile,BufRead *.cpp  nnoremap <silent> <F9> :w<cr>:AsyncRun g++  "$(VIM_FILEPATH)" -o a <cr>
au BufNewFile,BufRead *.java  nnoremap <silent> <F9> :w<cr>:AsyncRun javac  "$(VIM_FILEPATH)"<cr>

" F5 运行(单个文件)
""nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
au BufNewFile,BufRead *.c  nnoremap <silent> <F5> :!./a<cr>
au BufNewFile,BufRead *.cpp  nnoremap <silent> <F5> :!./a<cr>
au BufNewFile,BufRead *.py  nnoremap <silent> <F5> :! ./%<cr>
au BufNewFile,BufRead *.sh  nnoremap <silent> <F5> :! ./%<cr>
au BufNewFile,BufRead *.java  nnoremap <silent> <F5> :! java %:r<cr>


"--------------------------------------
" tagbar
"--------------------------------------
" 需要安装 ctags
nmap <F8> :TagbarToggle<CR>
