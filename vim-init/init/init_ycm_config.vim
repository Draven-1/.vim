
"-----------------------------------------------------------------------------------------------
"                  ycm
"                  代码补全、跳转、语法语义检查
"-----------------------------------------------------------------------------------------------
" 不要用插件管理器管理YCM，因为YCM升级和安装都需要手动编译
" 设置YCM的运行路径(此处需要绝对路径, 因此需要改成自己的)
set rtp+=/home/lc/.vim/plugged/YouCompleteMe

" ycm在c/c++项目中使用时需要自己手动设置头文件路径 详情参考:
" https://github.com/ycm-core/YouCompleteMe/blob/master/doc/youcompleteme.txt

let g:ycm_global_ycm_extra_conf = '.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_server_log_level = 'info'
set completeopt=longest,menu,menuone,popup
set completeopt=longest,menu,popup,
let g:ycm_autoclose_preview_window_after_insertion = 0

let g:ycm_disable_signature_help = 1                " Disable signature help
let g:ycm_add_preview_to_completeopt = 1            " 自动弹出函数原型
let g:ycm_complete_in_comments = 1                  " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                   " 在字符串输入中也能补全
let g:ycm_confirm_extra_conf=0                      " 关闭加载.ycm_extra_conf.py提示
let g:ycm_min_num_of_chars_for_completion=2         " 从第2个键入字符就开始罗列匹配项
let g:ycm_seed_identifiers_with_syntax=1            " 语法关键字补全
let g:ycm_collect_identifiers_from_tags_files=1     " 开启 YCM 基于标签引擎
let g:ycm_auto_trigger=1                            " 开启语义补全
let g:ycm_key_lost_stop_completion = ['<C-y>']      " 设置用于关闭补全列表的快捷键，默认为ctrl+y     在插入模式下的
let g:ycm_key_invoke_completion = '<C-t>'           " 设置强制启用语义补全的快捷键                   在插入模式下的
let g:ycm_filepath_completion_use_working_dir = 0   " 设置YCM的文件名补全时，相对路径是按照vim的当前工作目录还是活动缓冲区中的文件所在目录来解释。0是按照文件所在目录
let g:ycm_cache_omnifunc=1                          " 某些omni补全引擎引起与YCM缓存不适配，可能不会为给定的前缀产生所有可能的结果，如果关闭该选项则每次都重新查询omni补全引擎生成匹配项 ，默认为1代表开启
let g:ycm_use_ultisnips_completer = 1               " 启用ultisnips补全，1代表允许
let g:ycm_show_diagnostics_ui = 1                   " 开启YCM的显示诊断信息的功能，0表示关闭 TODO 暂时关闭ycm的语法检查，体验体验ale的
let g:ycm_enable_diagnostic_signs = 1               " 在代码中高亮显示YCM诊断对应的内容，如果关闭，则会关闭错误和警告高亮功能，0表示关闭
let g:ycm_enable_diagnostic_highlighting = 1        " 高亮显示代码中与诊断信息有关的文本或代码，0表示关闭
let g:ycm_echo_current_diagnostic = 1               " 当光标移到所在行时显示诊断信息
let g:ycm_always_populate_location_list = 0         " 每次获取新诊断数据时自动填充位置列表，1表示打开，默认关闭以免干扰可能已放置在位置列表中的其他数据
let g:ycm_key_detailed_diagnostics = '<leader>d'    " 设置查看光标停留处的错误诊断详细信息的快捷键,默认为\d
let g:ycm_auto_hover = ''                           " 关闭光标静止弹出原型
let g:ycm_max_diagnostics_to_display = 0            " 诊断数量无上限
" 手动弹出原型
nmap <leader>t <plug>(YCMHover)

" 光标下标识符的重命名
nnoremap <leader>rn :YcmCompleter RefactorRename
" 跳转到定义或声明
" nnoremap <c-h> :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 跳转到实现
nnoremap <c-k> :YcmCompleter GoTo<CR>
" 更准确，点性能不如GoTo，python不支持
" nnoremap <c-h> :YcmCompleter GoToImprecise<CR>

" 跳转到引用, 关闭ycm自带的打开quickfix，用copen 打开 并将窗口移到上方显示 (ycm自动打开的quikfix在跳转的时候会自动关闭)
" nnoremap <c-q> :YcmCompleter GoToReferences<CR><c-w>w :copen<CR> <c-w>K
nnoremap <c-q> :YcmCompleter GoToReferences<CR>
"
" 设置报错提示符
let g:ycm_error_symbol = '😡'
" 设置警告提示符
let g:ycm_warning_symbol = '😨'
" 语义补全触发条件
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }
" 文件白名单，这些文件才会启用ycm
let g:ycm_filetype_whitelist = {
            \ "c":1,
            \ "cpp":1,
            \ "objc":1,
            \ "sh":1,
            \ "python":1,
            \ "go":1,
            \ "make":1,
            \ "lua":1,
            \}
"
LSP
let g:ycm_language_server = [
    \ {
    \   'name': 'clangd',
    \   'cmdline': [ 'clangd' ],
    \   'filetypes': [ 'c', 'cpp', 'objc', 'objcpp' ]
    \ }
\ ]

