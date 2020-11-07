source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/basic.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/plug_settings.vim

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                            indentLine                                     │
" └───────────────────────────────────────────────────────────────────────────┘

let g:indentLine_setColors = 0
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
"indentLine


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                                  主题                                     │
" └───────────────────────────────────────────────────────────────────────────┘


" colo murphy
autocmd BufEnter FileType latex    colo vividchalk
autocmd BufEnter FileType python   colo default
autocmd BufEnter FileType markdown colo desert
" autocmd FileType markdown colo pencil



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
" │                             vim-which-key                                 │
" └───────────────────────────────────────────────────────────────────────────┘
nnoremap <silent> <leader> :WhichKey ','<CR>





tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>
nnoremap <leader>r :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

nnoremap   <leader>f   :FloatermToggle<CR>

nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]


let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}

let g:quickrun_no_default_key_mappings = 1
nmap <Leader>r <Plug>(quickrun)
map <F10> :QuickRun<CR>


"""""""""""""""""""""""""""""""""""""""
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
" │                           nerdtree                                        │
" └───────────────────────────────────────────────────────────────────────────┘
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"