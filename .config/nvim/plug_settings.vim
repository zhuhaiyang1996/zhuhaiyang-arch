
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
	\ 'winwidth': 25,
	\ 'split': 'vertical',
	\ 'direction': 'topleft',
	\ 'listed': 1,
	\ 'show_ignored_files': 0,
	\ 'root_marker': '≡ ',
	\ 'ignored_files':
	\     '.mypy_cache,.pytest_cache,.git,.hg,.svn,.stversions'
	\   . ',__pycache__,.sass-cache,*.egg-info,.DS_Store,*.pyc,*.swp'
	\ })
call defx#custom#column('icon', {
      \ 'directory_icon': '▸',
      \ 'opened_icon': '▾',
      \ 'root_icon': ' ',
      \ })
call defx#custom#column('filename', {
      \ 'min_width': 40,
      \ 'max_width': 40,
      \ })
call defx#custom#column('mark', {
      \ 'readonly_icon': '✗',
      \ 'selected_icon': '✓',
      \ })

" root marker官方文档叫root-marker, 而实际用的却是root_marker，醉了
call defx#custom#option('_', {
      \ 'root_marker': '[IN]',
      \ 'winwidth': 35,
      \ 'columns': 'git:mark:indent:icons:filename:type',
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': 'defxplorer',
      \ 'toggle': 1,
      \ 'resume': 1
      \ })
autocmd FileType defx call s:defx_mappings()


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                           UltiSnips                                       │
" └───────────────────────────────────────────────────────────────────────────┘


" ┌───────────────────────────────────────────────────────────────────────────┐
" │                             ViM Lightline                                 │
" └───────────────────────────────────────────────────────────────────────────┘
" ViM Lightline
""""""""""""""""""""""""""""""""
set laststatus=2 " Always show status line
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
