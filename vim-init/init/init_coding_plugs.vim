"-----------------------------------------------------------------------------------------------
"                  coc
"                  代码补全
"-----------------------------------------------------------------------------------------------
" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"
" " Make <CR> to accept selected completion item or notify coc.nvim to format
" " <C-g>u breaks current undo, please make your own choice
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" " Use <c-space> to trigger completion
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif
"
" " Use `[g` and `]g` to navigate diagnostics
" " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
" nmap <silent> <c-k> <Plug>(coc-definition)
" nmap <silent> <a-y> <Plug>(coc-type-definition)
" nmap <silent> <a-i> <Plug>(coc-implementation)
" nmap <silent> <c-q> <Plug>(coc-references)

"-----------------------------------------------------------------------------------------------
"                  vim-gutentags
"                  gutentags_plus
"                  管理ctags和gtags文件的插件
"                  vim-preview
"                  预览插件
"-----------------------------------------------------------------------------------------------
" gtags
set cscopetag                           "使用 cscope 作为 tags 命令
set cscopeprg='gtags-cscope'            "使用 gtags-cscope 代替 cscope
let $GTAGSLABEL = 'native-pygments'
" let $GTAGSLABEL='native'
let g:gutentags_define_advanced_commands = 1
let $GTAGSCONF = '/usr/local/gtags/share/gtags/gtags.conf'

" gutentags
" 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 同时开启 ctags 和 gtags 支持： 
" let g:gutentags_modules = []
" if executable('ctags')
"    let g:gutentags_modules += ['ctags']
" endif
" if executable('gtags-cscope') && executable('gtags')
"    let g:gutentags_modules += ['gtags_cscope']
" endif

let g:gutentags_modules = ['gtags_cscope']
" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let g:gutentags_cache_dir = expand('~/.cache/tags')

" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0

" gutentags_plus
" let g:gutentags_plus_switch = 1
let g:gutentags_plus_nomap = 1      "使用默认的快捷键，将源码中定义的c键改为g键
"   ;ga 查找此符号的赋值
"   ;gc 查找调用此函数的函数
"   ;gd 查找由该函数调用的函数
"   ;ge 查找egrep模式，相当于egrep功能，但查找速度快多了
"   ;gf 查找光标下的文件
"   ;gg 查看光标下符号的定义
"   ;gi 查找哪些文件 include 了本文件
"   ;gs 查看光标下符号的引用
"   :gt 查找此文本字符串
noremap <silent> <leader>gs :GscopeFind s <C-R><C-W><cr>
noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>
noremap <silent> <leader>gz :GscopeFind z <C-R><C-W><cr>
" nmap <silent> <leader>ck :GscopeKill<cr>

"vim-preview
noremap <a-x> :PreviewScroll -1 <cr>
noremap <a-c> :PreviewScroll +1 <cr>
autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>

"-----------------------------------------------------------------------------------------------
"                  leaderf
"                  fzf
"                  工具类插件
"-----------------------------------------------------------------------------------------------
" leaderf
" leaderf已经很快了，但想更快需要安装C扩展 命令行执行LeaderfInstallCExtension,
" 同时需要安装python头文件 sudo dnf install python3-devel.x86_64
let g:Lf_WindowPosition = 'popup'

let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_CacheDirectory = expand('~/.cache')

let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
" let g:Lf_UseVersionControlTool = 0
" let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_ShortcutF = '<c-p>'
" 当前打开的buffer
let g:Lf_ShortcutB = '<c-y>'
" 最近打开的文件
noremap <c-h> :LeaderfMru<cr>
" 函数搜索
" noremap <a-t> :LeaderfFunction!<cr>
" noremap <a-r> :LeaderfBufTag!<cr>
noremap <a-t> :LeaderfFunction<cr>
noremap <a-r> :LeaderfBufTag<cr>
" let g:Lf_WindowHeight = 0.30
" let g:Lf_PopupHeight = float2nr(&lines * 0.3)
" let g:Lf_PopupWidth = &columns * 3 / 4
let g:Lf_PopupWidth = 0.45
let g:Lf_PopupHeight = 0.3

" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1

" fzf
noremap <leader>m :Marks<cr>

" 上面的快捷键已经有了
" noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
" noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
" noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
" noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

" gutentags已经够用了
" should use `Leaderf gtags --update` first
" let g:Lf_GtagsAutoGenerate = 0
" let g:Lf_Gtagslabel = 'native-pygments'
" noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
" noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>

"-----------------------------------------------------------------------------------------------
"                  cpp-enhanced-highlight
"                  C++语法高亮插件(比vim自身提供的更丰富)
"-----------------------------------------------------------------------------------------------
" " 启用类范围的高亮
" let g:cpp_class_scope_highlight = 1
" " 启用成员变量高亮
" let g:cpp_member_variable_highlight = 1
" " 启用类名高亮
" let g:cpp_class_decl_highlight = 1
" " 启用POSIX函数高亮
" let g:cpp_posix_standard = 1
" " 启用模板高亮(大文件可能有点慢, 有更快的但那个可能不起作用)
" let g:cpp_experimental_simple_template_highlight = 1
"
" " 这将高亮显示关键字 concept 和 requires 以及标准库中所有已命名的需求
" let g:cpp_concepts_highlight = 1

"-----------------------------------------------------------------------------------------------
"                  vim-polyglot
"                  语法高亮插件(比vim自身提供的更丰富)
"-----------------------------------------------------------------------------------------------

"-----------------------------------------------------------------------------------------------
"                  vim-cpp-modern
"                  c/c++语法高亮插件
"-----------------------------------------------------------------------------------------------
" " Enable highlighting of C++11 attributes
" let g:cpp_attributes_highlight = 1
"
" " Highlight struct/class member variables (affects both C and C++ files)
" let g:cpp_member_highlight = 1
"
" " Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" " (affects both C and C++ files)
" let g:cpp_simple_highlight = 1

"-----------------------------------------------------------------------------------------------
"                  ale
"                  代码语法和语义检查插件 得搭配个语言相关的插件一起配置使用
"-----------------------------------------------------------------------------------------------
" TODO 天然支持c/c++语法诊断
let g:ale_enabled = 1     " 关闭ale
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
" 确保 ALE 高亮被激活
let g:ale_set_highlights = 1
highlight ALEWarning ctermbg=DarkMagenta
" 设置 ALE 错误消息的高亮颜色为红色
" highlight ALEError ctermbg=NONE ctermfg=NONE guibg=red guifg=red
" 设置 ALE 警告消息的高亮颜色为黄色
" highlight ALEWarning ctermbg=NONE ctermfg=NONE guibg=yellow guifg=yellow

let g:ale_echo_msg_format = '[%linter%] %code: %%s [%severity%]'
" 设置报错提示符
let g:ale_sign_error = '😡'
" 设置警告提示符
let g:ale_sign_warning = '😨'
" 禁用空白警告
let g:ale_warn_about_trailing_whitespace = 0

let g:ale_cpp_cc_options = '-std=c++17 -Wall -Wno-comment'
let g:ale_c_cc_options = '-std=c17 -Wall'


" " nmap <silent> <C-u> <Plug>(ale_previous_wrap)
" " nmap <silent> <C-d> <Plug>(ale_next_wrap)
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 0
" let g:ale_open_list = 0
" " let g:ale_hover_cursor = 0
" " Set this if you want to.
" " This can be useful if you are combining ALE with
" " some other plugin which sets quickfix errors, etc.
" let g:ale_keep_list_window_open = 1
" " Disable warnings about trailing whitespace for Python files.
" let b:ale_warn_about_trailing_whitespace = 0
" " Show 5 lines of errors (default: 10)
" let g:ale_list_window_size = 5
                                                                                                                                                                              
" let g:ale_lint_on_text_changed = 'normal'
" let g:ale_lint_on_insert_leave = 1
" " You can disable this option too
" " if you don't want linters to run on opening a file
" " let g:ale_lint_on_enter = 0
                                                                                                                                                                              
" let g:ale_floating_window_border = ['│ ', '─ ', '╭ ', '╮ ', '╯ ', '╰ ']
                                                                                                                                                                              
" let g:ale_linters = { 'python': ['flake8'] }
                                                                                                                                                                              
" "支持python2语法检测
" let g:ale_python_flake8_executable = 'python'
" let g:ale_python_flake8_executable = 'python3'
" let g:ale_python_flake8_options = '-m flake8 --max-line-length=100 ' .
"       \ '--max-complexity=10 --ignore=E111,E114,E121,E125,E126,E127,E128,E129,E131,E133,E201,E202,E203,E211,E221,E222,E241,E251,E261,E303,E402,W503,E302,E305,E501'
" let g:ale_python_flake8_options = '-m flake8 --max-complexity=10 --ignore=E501,E302,E305,F401,F841,E301,E731,E306,E722,E265,C901,E231,W391,E261,E262,E226,E303,E711,E701,E251'

"-----------------------------------------------------------------------------------------------
"                  ultisnips
"                  vim-snippets
"                  copilot.vim  (正式版要收费)
"                  codeium.vim
"                  代码片段
"-----------------------------------------------------------------------------------------------
" TODO 以后再配
let g:UltiSnipsExpandTrigger="<a-p>"

" let g:codeium_disable_bindings = 1
" imap <script><silent><nowait><expr> <c-s> codeium#Accept()
" imap <C-;>   <Cmd>call codeium#CycleCompletions(1)<CR>
" imap <C-,>   <Cmd>call codeium#CycleCompletions(-1)<CR>
" imap <C-x>   <Cmd>call codeium#Clear()<CR>

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
imap <c-y> <Plug>(asyncomplete_force_refresh)

let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect,preview

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"



" 查找compile_commands.json,并设置ALE
" 查找路径: ~/.cache/ale/ + 项目路径去除~/
function! FindCompileCommands()
    " 获取当前文件的完整路径
    let l:current_file_path = expand('%:p')
    " 获取用户主目录的路径
    let l:user_home = expand('~')
    " 替换当前文件路径中的用户主目录部分为缓存目录路径
    let l:cache_path = substitute(l:current_file_path, l:user_home, l:user_home . '/.cache/ale', '')
    " 构建 compile_commands.json 的最终路径
    let l:final_path = l:cache_path . '/compile_commands.json'

    " 检查此路径下是否存在 compile_commands.json
    if filereadable(l:final_path)
        return l:final_path
    endif

    " 如果未找到，尝试在父目录中查找
    let l:current_dir = getcwd()
    while isdirectory(l:current_dir)
        let l:cache_dir = substitute(l:current_dir, l:user_home, l:user_home . '/.cache/ale', '')
        let l:command_json_path = l:cache_dir . '/compile_commands.json'
        if filereadable(l:command_json_path)
            return l:command_json_path
        endif
        " 检查是否已经到达文件系统根目录
        if l:current_dir == fnamemodify(l:current_dir, ':h')
            break
        endif
        " 向上移动一个目录
        let l:current_dir = fnamemodify(l:current_dir, ':h')
    endwhile

    " 所有尝试均未找到文件
    return ''
endfunction


function! SetCompileCommandsForALE()
    " 查找 compile_commands.json 文件
    let l:json_path = FindCompileCommands()

    " 如果找到文件，则设置 ALE 选项
    if !empty(l:json_path)
        let b:ale_c_clangd_options = '-p ' . l:json_path
        let b:ale_cpp_clangd_options = '-p ' . l:json_path
        let b:ale_c_clangtidy_options = '-p ' . l:json_path
        let b:ale_cpp_clangtidy_options = '-p ' . l:json_path
        let b:ale_c_cppcheck_options = '--project=' . l:json_path
        let b:ale_cpp_cppcheck_options = '--project=' . l:json_path
    else
        " echohl WarningMsg
        " echon "compile_commands.json not found in any parent directories."
        " echohl None
    endif
endfunction

" 对 C 和 C++ 文件设置自动命令
autocmd FileType c,cpp call SetCompileCommandsForALE()

