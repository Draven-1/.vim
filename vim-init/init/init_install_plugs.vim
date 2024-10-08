"-----------------------------------------------------------------------------------------------
"                  所有的插件安装                                            
"-----------------------------------------------------------------------------------------------

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

"-----------------------------------------------------------------------------------------------
"                  airline and airline themes or lightline
"                  状态栏和状态栏主题                                              
"-----------------------------------------------------------------------------------------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'itchyny/lightline.vim'

"-----------------------------------------------------------------------------------------------

"-----------------------------------------------------------------------------------------------
"                  tabline  需要和ariline一起使用                                                     
"                  tabline配置                                                    
"-----------------------------------------------------------------------------------------------
Plug 'mkitt/tabline.vim' 

"-----------------------------------------------------------------------------------------------
"                  bufferline                                                      
"                  buffer栏配置                                                    
"-----------------------------------------------------------------------------------------------
Plug 'bling/vim-bufferline'

"-----------------------------------------------------------------------------------------------
"                  vim-startify
"-----------------------------------------------------------------------------------------------
Plug 'mhinz/vim-startify'

"-----------------------------------------------------------------------------------------------
"                  vim-kitty
"-----------------------------------------------------------------------------------------------
Plug 'fladson/vim-kitty'

"                  主题                                                      
"-----------------------------------------------------------------------------------------------
Plug 'mhartington/oceanic-next'

Plug 'romainl/flattened'

Plug 'morhetz/gruvbox'

Plug 'lifepillar/vim-solarized8'

"-----------------------------------------------------------------------------------------------
"                  vim-devicons                                                      
"-----------------------------------------------------------------------------------------------
Plug 'ryanoasis/vim-devicons'

"-----------------------------------------------------------------------------------------------
"                  nerdtree
"                  目录结构
"-----------------------------------------------------------------------------------------------
Plug 'preservim/nerdtree'

"-----------------------------------------------------------------------------------------------
"                  nerdcommenter
"                  代码注释
"-----------------------------------------------------------------------------------------------
Plug 'preservim/nerdcommenter'

"-----------------------------------------------------------------------------------------------
"                  interestingwords
"                  高亮单词
"-----------------------------------------------------------------------------------------------
Plug 'lfv89/vim-interestingwords'

"-----------------------------------------------------------------------------------------------
"                  fugitive
"                  在vim命令行执行git命令(其实我只用Git blame)
"-----------------------------------------------------------------------------------------------
Plug 'tpope/vim-fugitive'

"-----------------------------------------------------------------------------------------------
"                  vim-surround
"                  快速添加、删除、修改括号引号
"-----------------------------------------------------------------------------------------------
Plug 'tpope/vim-surround'

"-----------------------------------------------------------------------------------------------
"                  vim-fixkey
"                  让alt键在vim中生效
"-----------------------------------------------------------------------------------------------
Plug 'drmikehenry/vim-fixkey'

"-----------------------------------------------------------------------------------------------
"                  括号成对
"-----------------------------------------------------------------------------------------------
" Plug 'jiangmiao/auto-pairs'  不好用 而且还会自动绑定快捷键
Plug 'Raimondi/delimitMate' 

"-----------------------------------------------------------------------------------------------
"                  echodoc.vim
"                  vim命令行显示函数原型
"-----------------------------------------------------------------------------------------------
Plug 'shougo/echodoc.vim'

"-----------------------------------------------------------------------------------------------
"                  coc
"                  代码补全
"-----------------------------------------------------------------------------------------------
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

"-----------------------------------------------------------------------------------------------
"                  vim-gutentags
"                  gutentags_plus
"                  管理ctags和gtags文件的插件
"                  vim-preview
"                  预览插件
"-----------------------------------------------------------------------------------------------
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-preview'

"-----------------------------------------------------------------------------------------------
"                  leaderf
"                  fzf
"                  工具类插件
"-----------------------------------------------------------------------------------------------
Plug 'yggdroot/leaderf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"-----------------------------------------------------------------------------------------------
"                  cpp-enhanced-highlight
"                  C++语法高亮插件(比vim自身提供的更丰富)但是会导致cpp文件时vim卡顿
"-----------------------------------------------------------------------------------------------
" Plug 'octol/vim-cpp-enhanced-highlight'

"-----------------------------------------------------------------------------------------------
"                  vim-polyglot
"                  语法高亮插件(没更新，不如现在自带的丰富)
"-----------------------------------------------------------------------------------------------
" Plug 'sheerun/vim-polyglot'

"-----------------------------------------------------------------------------------------------
"                  vim-cpp-modern
"                  c/c++语法高亮插件
"-----------------------------------------------------------------------------------------------
Plug 'bfrg/vim-cpp-modern'

"-----------------------------------------------------------------------------------------------
"                  ale
"                  代码语法和语义检查插件，得搭配个语言相关的插件一起配置使用
"-----------------------------------------------------------------------------------------------
Plug 'dense-analysis/ale'

"-----------------------------------------------------------------------------------------------
"                  ultisnips
"                  vim-snippets
"                  copilot.vim
"                  codeium.vim
"                  代码片段
"-----------------------------------------------------------------------------------------------
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'github/copilot.vim'
" Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
" Plug 'FittenTech/fittencode.vim'
Plug 'ianding1/leetcode.vim'

"-----------------------------------------------------------------------------------------------
"                  vim-easymotion
"                  快速调转
"-----------------------------------------------------------------------------------------------
Plug 'easymotion/vim-easymotion'

"-----------------------------------------------------------------------------------------------
"                  indentLine
"                  制表符
"-----------------------------------------------------------------------------------------------
" Plug 'Yggdroot/indentLine'

"-----------------------------------------------------------------------------------------------
"                  markdown 相关插件
"                  vim-markdown             markdown语法高亮
"                  vim-markdown-toc         markdown目录生成
"                  markdown-preview.nvim    markdown预览插件
"                  img-paste                markdown图片相关设置
"-----------------------------------------------------------------------------------------------
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" 需要安装nodejs 和 yarn
" sudo dnf install nodejs
" sudo npm install --global yarn

Plug 'img-paste-devs/img-paste.vim'

call plug#end()

