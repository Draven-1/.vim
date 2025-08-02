## 介绍
我的开发环境配置
支持 centos系列  ubuntu系列

本次主要是参照韦大大的 Vim 配置框架 ( https://github.com/skywind3000/vim-init ) 将vim配置分类整理并从头将使用的开发工具相关配置梳理了一遍。

欢迎大家进vim中文交流群学习，里面大佬技术又好说话又好听。https://t.me/vimzh_rea

## TODO
后续用vim-lsp/ALE lsp + clangd + makefile中自动化生成compile_commands.json/cmake 代替ycm的所有功能，再加上原有的gtags功能不变。做一个更现代化的性能更好的代码跳转查询诊断功能。 

TODO 一些还未完成的工作
* install.sh脚本还不能使用，相关依赖需要参照手动install.sh安装，安装时需要稳定的科学上网。
* ale代码语法语义检查目前只支持c/c++，其他语言还未配置。
* 用coc代替YCM体验使用。
## vim
* vim相关的配置

    cd ~/

    git clone https://github.com/Draven-1/.vim.git 

    安装vim配置相关的依赖查看install.sh，安装完成后，启动vim 在命令行执行 PlugInstall 安装vim插件。

    安装的插件查看 vim-init/init/init_install_plugs.vim。

    为了正常显示需要安装nerd-fonts字体。详情查看 https://github.com/ryanoasis/nerd-fonts

    - YCM的安装过程和安装成功
    ![ycm_install_success](https://github.com/Draven-1/.vim/assets/54003179/461f1b3b-353e-4031-b0e8-111e5b5ddc78)
    - ale的语法语义检查效果
    ![ale](https://github.com/Draven-1/.vim/assets/54003179/f79f9cb9-7625-438d-a4b2-cb9fc06f6614)
    - YCM的补全效果
    ![ycm_complete](https://github.com/Draven-1/.vim/assets/54003179/68535f5c-8a80-4dbc-af4f-39244c67658d)

## shell
* tmux 
* zsh
* fzf
* ag 和 rg 代替grep的命令
* bat 代替cat的命令

## windows terminal相关配置 
TODO




















