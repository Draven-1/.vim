" 行号
set nu

" 相对行号
" set rnu

" 禁用 vi 兼容模式
set nocompatible

" 关闭自动换行
set nowrap

" 视觉提示铃声关闭，更不要闪屏
set visualbell t_vb=

" 禁用错误提示铃声
set noerrorbells

" 总是显示状态栏
set laststatus=2

" 每行左侧的行号列预留空间来显示这些标记、错误、警告和其他行级信息
set signcolumn=yes

" 禁用状态栏中显示当前的编辑模式
set noshowmode

" 命令行底部显示当前正在输入的命令
set showcmd

" 启用命令行补全菜单
set wildmenu

" 命令行补全首先尝试最长的公共前缀，接着轮换补全项
set wildmode=longest:full,full

" 自动缩进
set autoindent

" 启用智能缩进功能
set smartindent

" 打开 C/C++ 语言缩进优化
set cindent

" 高亮匹配的括号
set showmatch

" 高亮括号匹配的时间
" set matchtime=2

" 显示最后一行
set display=lastline

" 延迟绘制（提升性能）
set lazyredraw

" 合并两行中文时，不在中间加空格
set formatoptions+=B

" 文件换行符，默认使用 unix 换行符
set ffs=unix,dos,mac

" 将制表符的宽度设置为4个空格
"set tabstop=4
set ts=4

" 设置每一级缩进为四个空格
set shiftwidth=4

" 使用软制表符并将每个缩进级别设置为四个空格(用于定义在你按下 Tab 键时要插入的空格数)
set softtabstop=4

" 使用空格字符来表示缩进(把 Tab 键扩展为空格字符)
set expandtab

" 将文档中的所有制表符（Tab 字符）转换为空格字符，
" 并且使用当前的缩进设置来确定每个制表符应该被替换为多少个空格。
" %retab!

" 可视模式中使用鼠标拖动来选择文本块and可以使用键盘的移动命令来选择文本
set selectmode=mouse,key

" 设置可视区域的顶部和底部各保留 3 行文本
set scrolloff=3

" 设置键盘按键的响应时间为 1500 毫秒
" 意味着如果你按下的按键之间的时间间隔小于 1500 毫秒，
" Vim将解释它们为键绑定。如果时间间隔超过 1500 毫秒，它们将被解释为普通按键
set timeoutlen=1500

" 设置终端模式下键盘按键的响应时间为 5 毫秒
" 意味着如果你在终端模式下按下的按键之间的时间间隔小于 5 毫秒，
" Vim将解释它们为键绑定。如果时间间隔超过 5 毫秒，它们将被解释为普通按键。
set ttimeoutlen=5

" 设置自动保存文件的时间间隔为 100 毫秒
" set updatetime=100

" 高亮当前行
set cursorline

" 高亮当前列
set cursorcolumn

" 在注释行上下插入行不会自动插入注释字符
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"===============================================================================================
" 		   代码折叠设置
"===============================================================================================
" 基于缩进进行代码折叠
" set foldmethod=indent
" 手动设置折叠
set foldmethod=manual
" 启动 Vim 时关闭折叠
set nofoldenable

"===============================================================================================
" 		   允许vim自带脚本根据文件类型自动设置缩进等                               
"===============================================================================================
if has('autocmd')
    filetype plugin indent on
endif

"===============================================================================================
"                  搜索设置                                                        
"===============================================================================================
" 搜索时忽略大小写
set ignorecase
" 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母
set smartcase
" 高亮搜索内容
set hlsearch
" 查找输入时动态增量显示查找结果
set incsearch
" 清除搜索高亮快捷键为<BackSpace>
nmap <BackSpace> :nohl<cr>

"===============================================================================================
"                  编码设置                                                        
"===============================================================================================
if has('multi_byte')
    " 内部工作编码
    set encoding=utf-8
    " 文件默认编码
    set fileencoding=utf-8
    " 打开文件时自动尝试下面顺序的编码
    set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1
endif

"===============================================================================================
"                  备份设置                                                        
"===============================================================================================
" 允许备份
" set backup
" " 保存时备份
" set writebackup
" " 备份文件地址，统一管理
" set backupdir=~/.cache/vimtmp
" " 备份文件扩展名
" set backupext=.bak
"  禁用交换文件
set noswapfile
" 禁用 undo文件
set noundofile
" 创建目录，并且忽略可能出现的警告
silent! call mkdir(expand('~/.cache/vimtmp'), "p", 0755)

" 将全角字符的宽度设置为两个字符宽度
set ambiwidth=double

"===============================================================================================
"                  打开文件时恢复上一次光标所在位置                                                                                  
"===============================================================================================
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\	 exe "normal! g`\"" |
	\ endif

"===============================================================================================
"                  定义一个 DiffOrig 命令用于查看文件改动                                 
"===============================================================================================
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif

"===============================================================================================
"                  自定义的一些快捷键
"===============================================================================================
" 将leader键设置为分号，默认为\
let mapleader=';'
" 禁用鼠标支持
nnoremap <F1> :set mouse=<CR>
" 启用鼠标支持
nnoremap <F2> :set mouse=a<CR>
" 禁用粘贴模式
nnoremap <F3> :set nopaste<CR>
" 启用粘贴模式
nnoremap <F4> :set paste<CR>
" 关闭打开的缓冲区,除了当前缓冲区
nnoremap <leader>ta :w <bar> %bd <bar> e# <bar> bd# <CR>

