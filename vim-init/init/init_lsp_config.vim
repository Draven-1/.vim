"-----------------------------------------------------------------------------------------------
"                  vim-lsp
"                  vim-lsp-settings
"-----------------------------------------------------------------------------------------------
" 自定义服务器安装目录
let g:lsp_settings_servers_dir = expand('$HOME/.vim/lsp-servers')
" 设置lsp解析项目根目录标记
let g:lsp_settings_root_markers = ['.root', '.git', '.git/', '.svn']
" 关闭代码诊断
let g:lsp_diagnostics_enabled = 1

let g:lsp_diagnostics_signs_error = {'text': '❌'}
let g:lsp_diagnostics_signs_warning = {'text': '❗'}

" 设置compile_commands.json文件路径
" 设置clangd的默认参数
" 后台索引整个工程，极大加速跳转与补全
" 启用 clang-tidy 代码静态检查
" 每个语义上不同的补全项分别列出，包含完整的类型信息
" 不要自动插入头文件
" 控制代码补全时函数调用括号内是否包含参数占位符 --function-arg-placeholders=disable 可以关闭
" 若设为true，代码补全将包含那些不在当前作用域（例如命名空间）中定义的索引符号
let g:lsp_settings = {
\  'clangd': {
\    'args': [
\      '--background-index',
\      '--clang-tidy',
\      '--completion-style=detailed',
\      '--header-insertion=never',
\      '--function-arg-placeholders',
\      '--all-scopes-completion'
\    ],
\  },
\}

let g:lsp_document_code_action_signs_enabled = 0
" 重命名
nnoremap <leader>rn <plug>(lsp-rename)
" 跳转定义
nnoremap <c-k> <plug>(lsp-definition)
" 跳转引用
nnoremap <c-q> <plug>(lsp-references)

"-----------------------------------------------------------------------------------------------
"                  vim-auto-popmenu
"                  asyncomplete.vim
"                  自动补全
"-----------------------------------------------------------------------------------------------
"--------------------------vim-auto-popmenu-----------------------------------------------------
" 禁用插件
" let g:apc_enable = 0

" 不区分文件类型，全部都弹补全
" let g:apc_enable_ft = {'*': 1}

" source for dictionary, current or other loaded buffers, see ':help cpt'
" set cpt=.,k,w,b

" don't select the first item.
" set completeopt=menu,menuone,noselect

" suppress annoy messages.
" set shortmess+=c

"--------------------------asyncomplete.vim-----------------------------------------------------
" 自动弹出(默认开启)
let g:asyncomplete_auto_popup = 1
" 强制刷新弹出
imap <m-y> <Plug>(asyncomplete_force_refresh)

" 设置默认的“completeopt”选项。这些选项包括“menuone”、“noinsert”和“noselect”
let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

