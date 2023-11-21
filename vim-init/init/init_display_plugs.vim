"-----------------------------------------------------------------------------------------------
"                  airline and airline themes                                      
"                  状态栏和状态栏主题                                              
"-----------------------------------------------------------------------------------------------
" 启用实验功能
let g:airline_experimental = 1
" 启用已修改检测
let g:airline_detect_modified=1
" 启用粘贴检测
let g:airline_detect_paste=1
" 启用密码检测
let g:airline_detect_crypt=1
" 启用拼写检测
let g:airline_detect_spell=1
" 显示拼写语言
let g:airline_detect_spelllang=1
" 启用非活动窗口的左侧部分折叠 只显示该缓冲区的文件名
let g:airline_inactive_collapse=1
" 在非活动窗口的状态行中使用其他分隔符
let g:airline_inactive_alt_sep=1

" 设置airline主题
" let g:airline_theme='alduin' "挺好
" let g:airline_theme='supernova' "挺好
" let g:airline_theme='apprentice' "还行
" let g:airline_theme='ayu_mirage' "还行
" let g:airline_theme='violet' "还行
" let g:airline_theme='understated' "还行
" let g:airline_theme='random' "随机
" let g:airline_theme='oceanicnext'

" 启用嵌入检测
let g:airline_detect_iminsert=1
" 定义预览窗口的窗口状态栏是否不应被修改
let g:airline_exclude_preview = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" " unicode symbols
" " let g:airline_left_sep = '»'
" " let g:airline_left_sep = '▶'
" " let g:airline_right_sep = '«'
" " let g:airline_right_sep = '◀'
" let g:airline_symbols.colnr = ' ㏇:'
" " let g:airline_symbols.colnr = ' ℅:'
" let g:airline_symbols.crypt = '🔒'
" " let g:airline_symbols.linenr = '☰'
" " let g:airline_symbols.linenr = ' ␊:'
" " let g:airline_symbols.linenr = ' ␤:'
" let g:airline_symbols.linenr = '¶'
" " let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.branch = '⎇'
" " let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" " let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = 'Ɇ'
" let g:airline_symbols.notexists = '∄'
" let g:airline_symbols.whitespace = 'Ξ'

" 启用powerline符号
let g:airline_powerline_fonts = 1
" " powerline symbols
" let g:airline_left_sep = '😎😎'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '👀'
" " let g:airline_right_sep = '😋😋'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '🌞'
" let g:airline_symbols.branch = ''
let g:airline_symbols.branch = ' 🦥'
" let g:airline_symbols.colnr = ' ℅:'
" let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' 🆑:'
let g:airline_symbols.readonly = '🔒'
" let g:airline_symbols.linenr = ' :'
let g:airline_symbols.linenr = ' ␤:'
" let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.maxlinenr = '🎶'
" let g:airline_symbols.dirty='⚡👀'
let g:airline_symbols.dirty='👀'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.paste = ''
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.notexists = '👻'
" let g:airline_symbols.notexists = '🎼'
let g:airline_symbols.whitespace = '📖'
" let g:airline_symbols.whitespace = '📖'

" 启用bufferline集成
let g:airline#extensions#bufferline#enabled = 1
" 确定bufferline是否会覆盖自定义变量
let g:airline#extensions#bufferline#overwrite_variables = 0
" 显示buffer编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 启用集成fzf
let g:airline#extensions#fzf#enabled = 1
" 启用vim-grep集成
let g:airline#extensions#grepper#enabled = 1
" 启用gutentags集成
let g:airline#extensions#gutentags#enabled = 1

" 启用tabline集成
let g:airline#extensions#tabline#enabled = 1
" 启用单个标签显示缓冲区
let g:airline#extensions#tabline#show_buffers = 1
" 启用在每个标签页显示打开的分页
let g:airline#extensions#tabline#show_splits = 1
" 总是在右侧显示标签页的数量
let g:airline#extensions#tabline#show_tab_count = 2
" 启用显示tab类型
let g:airline#extensions#tabline#show_tab_type = 1
" 总是先显示当前tab或buffer
let airline#extensions#tabline#current_first = 0
" buffer名称格式
" let g:airline#extensions#tabline#formatter = 'short_path_improved'
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" tab切换快捷键
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab10
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

" quickfix命名
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
" location命名
let g:airline#extensions#quickfix#location_text = 'Location'

"-----------------------------------------------------------------------------------------------
"                  bufferline                                                      
"                  buffer栏配置                                                    
"-----------------------------------------------------------------------------------------------
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'
" 显示buffer编号
" let g:bufferline_show_bufnr = 1

"-----------------------------------------------------------------------------------------------
"                  tabline                                                      
"                  tabline配置                                                    
"-----------------------------------------------------------------------------------------------
" hi TabLine      ctermfg=Black  ctermbg=Green     cterm=NONE
" hi TabLineFill  ctermfg=Black  ctermbg=Green     cterm=NONE
" hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
" 启用右上角的关闭按钮
" let g:tablineclosebutton=1

"-----------------------------------------------------------------------------------------------
"                  主题                                                      
"-----------------------------------------------------------------------------------------------
" 启用语法高亮
syntax enable
syntax on
" 设置终端颜色支持为256色
set t_Co=256
" 启用 True Color 支持
set termguicolors
" 设置终端类型为 xterm-256color
" set term=xterm-256color

" 1. oceanic-next  很好
" 加粗
let g:oceanic_next_terminal_bold = 1        
" 斜体
let g:oceanic_next_terminal_italic = 1      
colorscheme OceanicNext                     
" 终端透明
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
" 搭配airline themes的oceanicnext
let g:airline_theme='oceanicnext'

" 2. flattened 很好
" colorscheme flattened_dark
" color flattened_dark                      
" 搭配airline themes的solarized_flood
" let g:airline_theme='solarized_flood' "还行

" 3. gruvbox  很好
" set background=dark
" colorscheme gruvbox                 
" 背景透明
" let g:gruvbox_transparent_bg = 1              
" 突出显示字符串
" let g:gruvbox_improved_strings = 1            
" 可取值soft、medium和hard
" let g:gruvbox_contrast_dark='hard'            
" 突出显示警告
" let g:gruvbox_improved_warnings = 1        

" 4. solarized8 很好
" colorscheme solarized8
" colorscheme solarized8_high
" colorscheme solarized8_low
" colorscheme solarized8_flat

"-----------------------------------------------------------------------------------------------
"                  vim-devicons                                                      
"-----------------------------------------------------------------------------------------------
" 开箱即用

"-----------------------------------------------------------------------------------------------
"                  nerdtree
"                  目录结构
"-----------------------------------------------------------------------------------------------
" 切换
nnoremap <a-n> :NERDTreeToggle<CR>
" 打开nerdtree 并指向当前文件
" nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <a-m> :NERDTreeFind<CR>

" " 如果指定了文件，则将光标移至其窗口。
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" " 当 Vim 以目录参数启动时
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
"     \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | wincmd p | endif
" " 当 Vim 启动时没有参数
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
"
" " 如果 NERDTree 是唯一标签页
"  autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" " 如果 NERDTree 是最后一个窗口
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"
" " 如果另一个缓冲区试图取代 NERDTree，则将其放入另一个窗口，然后再返回 NERDTree。
" autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"     \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
"
" " 在每个新标签页上打开现有的 NERDTree
" autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

"-----------------------------------------------------------------------------------------------
"                  nerdcommenter
"                  代码注释
"-----------------------------------------------------------------------------------------------
let g:NERDCreateDefaultMappings = 1             " 创建默认的映射 
let g:NERDSpaceDelims = 1                       " 默认情况下在注释分隔符后添加空格
let g:NERDCompactSexyComs = 1                   " 使用紧凑的语法来修饰多行注释
let g:NERDDefaultAlign = 'left'                 " 按行对齐的注释分隔符左对齐，而不是按照代码缩进对齐
let g:NERDCommentEmptyLines = 1                 " 允许注释和反转空行(在注释区域时很有用)
let g:NERDTrimTrailingWhitespace = 1            " 当取消注释时，允许删除尾随空格
let g:NERDToggleCheckAllLines = 1               " 启用NERDCommenterToggle来检查所有选中的行是否被注释
let g:NERDAltDelims_c = 1                       " C语言默认用 // 注释

"-----------------------------------------------------------------------------------------------
"                  interestingwords
"                  高亮单词
"-----------------------------------------------------------------------------------------------
" let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
" let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
" 随机调整颜色
let g:interestingWordsRandomiseColors = 1


"-----------------------------------------------------------------------------------------------
"                  fugitive
"                  在vim命令行执行git命令(其实我只用Git blame)
"-----------------------------------------------------------------------------------------------
" 开箱即用

"-----------------------------------------------------------------------------------------------
"                  vim-surround
"                  快速添加、删除、修改括号引号
"-----------------------------------------------------------------------------------------------
" 简单操作用着还行

"-----------------------------------------------------------------------------------------------
"                  vim-fixkey
"                  让alt键在vim中生效
"-----------------------------------------------------------------------------------------------


"-----------------------------------------------------------------------------------------------
"                  括号成对
"-----------------------------------------------------------------------------------------------
" 默认在注释和字符串中中不会自动成对
" 在注释和字符串中也开启
let g:delimitMate_excluded_regions = ""

" 打开回车时智能换行和缩进
let g:delimitMate_expand_cr = 2

"-----------------------------------------------------------------------------------------------
"                  echodoc.vim
"                  vim命令行显示函数原型
"-----------------------------------------------------------------------------------------------
let g:echodoc_enable_at_startup = 1



