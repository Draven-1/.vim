"-----------------------------------------------------------------------------------------------
"                  markdown 相关插件
"                  vim-markdown             markdown语法高亮
"                  vim-markdown-toc         markdown 目录生成
"                  markdown-preview.nvim    markdown 预览插件 
"                  img-paste                markdown图片相关设置
"-----------------------------------------------------------------------------------------------
" vim-markdown'
" 支持Latex数学公式
" set conceallevel=2
" let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter=1
let g:markdown_fenced_languages =['c', 'cpp', 'python', 'sh', 'shell', 'go', 'py']

" vim-markdown-toc'
let g:vmt_cycle_list_item_markers = 1
" 取消储存时自动更新目录
" let g:vmt_auto_update_on_save = 0
" let g:vmt_dont_insert_fence = 1

" markdown-preview.nvim
" 打开时自动预览
let g:mkdp_auto_start = 0

" 退出时自动关闭
let g:mkdp_auto_close = 1

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 1
" 命令行显示预览url
let g:mkdp_echo_preview_url = 1
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" 填相对于浏览器的远程地址
" 本地浏览器不能自动打开，得显示url之后复制url打开
let g:mkdp_open_ip = '192.168.52.128' 

" use a custom port to start server or empty for random
" 端口固定之后本地只能同时预览一个markdown文件
" 端口固定之后远程预览有点问题
let g:mkdp_port = ''

let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }

" 主题
let g:mkdp_markdown_css='~/.vim/markdown-themes/cobalt/cobalt.css' "很好

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
" let g:mkdp_highlight_css = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '${name}'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" set default theme (dark or light)
" By default the theme is define according to the preferences of the system
" let g:mkdp_theme = 'dark'

" img-paste.vim
" there are some defaults for image directory and image name, you can change them
let g:mdip_imgdir = 'img'
let g:mdip_imgname = 'image'

