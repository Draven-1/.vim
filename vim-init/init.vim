" 防止重复加载
if get(s:, 'loaded', 0) != 0
	finish
else
	let s:loaded = 1
endif

" 取得本文件所在的目录
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" 定义一个命令用来加载文件
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

" 将 vim-init 目录加入 runtimepath
exec 'set rtp+='.s:home

" 将 ~/.vim 目录加入 runtimepath (有时候 vim 不会自动帮你加入）
set rtp+=~/.vim


"======================================================================
"                  模块加载				       
"======================================================================

" 加载基础配置
LoadScript init/init_base_config.vim
source ~/.vim/vim-init/init/init_base_config.vim

" 加载安装插件的配置
LoadScript init/init_install_plugs.vim

" 加载让vim更漂亮的插件的配置
LoadScript init/init_display_config.vim
" 配置主题时有些配置项不生效, 需要执行一下source
" source ~/.vim/vim-init/init/init_display_config.vim

" 加载方便coding的插件配置
LoadScript init/init_tools_config.vim

" 加载lsp相关的插件配置
LoadScript init/init_lsp_config.vim

" 加载cpp语法高亮相关的插件配置
" LoadScript init/init_cpp_config.vim

" 加载ycm相关配置
" LoadScript init/init_ycm_config.vim

" 加载coc相关配置
" LoadScript init/init_coc_config.vim

" 加载markdown编写和预览的插件配置
" LoadScript init/init_markdown_config.vim
