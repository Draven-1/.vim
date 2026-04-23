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
" let g:airline_right_alt_sep = '🌞'
" let g:airline_symbols.branch = ''
let g:airline_symbols.branch = ' 🇨🇳'
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

" 缓冲区是否应自动回显到命令栏
let g:bufferline_echo = 0     
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
" 启用 True Color 支持
set termguicolors
" 设置终端类型为 xterm-256color
" set term=xterm-256color

" 1. oceanic-next  很好
" 加粗
let g:oceanic_next_terminal_bold = 1        
" 斜体
let g:oceanic_next_terminal_italic = 1      
set background=dark
colorscheme OceanicNext                     
" 终端透明
" hi Normal guibg=NONE ctermbg=NONE
" hi LineNr guibg=NONE ctermbg=NONE
" hi SignColumn guibg=NONE ctermbg=NONE
" hi EndOfBuffer guibg=NONE ctermbg=NONE
" 搭配airline themes的oceanicnext
let g:airline_theme='oceanicnext'

" 主题设置之后，否则会被覆盖
" hi cursorLine gui=BOLD guibg=NONE guifg=NONE cterm=BOLD ctermbg=black ctermfg=NONE
" hi cursorcolumn gui=BOLD guibg=NONE guifg=NONE cterm=BOLD ctermbg=black ctermfg=NONE

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
"                  lambdalisue/fern.vim 目录结构，代替nerdtree
"                  vim自带的netrw不支持文件图标
"                  lambdalisue/fern-renderer-devicons.vim 时和一起使用显示文件图标
"                  下面两个配合显示文件图标
"                  vim-fern-renderer-nerdfont
"                  lambdalisue/vim-nerdfont
"-----------------------------------------------------------------------------------------------
" 下面两个选其中一个就可以
" let g:fern#renderer = "devicons"   "个人感觉devicons的图标下面的好看点
let g:fern#renderer = "nerdfont"

nnoremap <silent> <F7> :Fern . -drawer -toggle -reveal=%<CR>

