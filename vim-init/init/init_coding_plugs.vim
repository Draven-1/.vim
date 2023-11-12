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
" let $GTAGSLABEL='native'
" let g:gutentags_define_advanced_commands = 1
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/usr/local/gtags.6.6.10/share/gtags/gtags.conf'

" gutentags
" 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 同时开启 ctags 和 gtags 支持： 开启ctags会产生tags文件在项目目录中
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
" 启用类范围的高亮
let g:cpp_class_scope_highlight = 1
" 启用成员变量高亮
let g:cpp_member_variable_highlight = 1
" 启用类名高亮
let g:cpp_class_decl_highlight = 1
" 启用POSIX函数高亮
let g:cpp_posix_standard = 1
" 启用模板高亮(大文件可能有点慢, 有更快的但那个可能不起作用)
let g:cpp_experimental_simple_template_highlight = 1

" 这将高亮显示关键字 concept 和 requires 以及标准库中所有已命名的需求
let g:cpp_concepts_highlight = 1

"-----------------------------------------------------------------------------------------------
"                  ale
"                  代码语法和语义检查插件 得搭配个语言相关的插件一起配置使用
"-----------------------------------------------------------------------------------------------
" TODO
" " Only run linters named in ale_linters settings.
" let g:ale_linters_explicit = 1
" let g:ale_sign_column_always = 1
" let g:airline#extensions#ale#enabled = 1
" " Set this in your vimrc file to disabling highlighting
" let g:ale_set_highlights = 1
" let g:ale_echo_msg_format = '[%linter%] %code: %%s [%severity%]'
" let g:ale_sign_error = '✗'
" " let g:ale_sign_warning = '⚠'
" let g:ale_sign_warning = 'Ψ '
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
      " \ '--max-complexity=10 --ignore=E111,E114,E121,E125,E126,E127,E128,E129,E131,E133,E201,E202,E203,E211,E221,E222,E241,E251,E261,E303,E402,W503,E302,E305,E501'         
" let g:ale_python_flake8_options = '-m flake8 --max-complexity=10 --ignore=E501,E302,E305,F401,F841,E301,E731,E306,E722,E265,C901,E231,W391,E261,E262,E226,E303,E711,E701,E251'

"-----------------------------------------------------------------------------------------------
"                  vim-snippets 
"                  代码片段
"-----------------------------------------------------------------------------------------------
" TODO 以后再配

"-----------------------------------------------------------------------------------------------
"                  ycm
"                  代码补全、跳转、语法语义检查
"-----------------------------------------------------------------------------------------------
" 不要用插件管理器管理YCM，因为YCM升级和安装都需要手动编译
" 设置YCM的运行路径(此处需要绝对路径, 因此需要改成自己的)
set rtp+=/home/lc/.vim/plugged/YouCompleteMe
