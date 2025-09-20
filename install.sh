# 需要安装nerd-fonts字体

#----------------------------------------------------------------------------------------------------
#                   shell 相关
#----------------------------------------------------------------------------------------------------
# 安装tmux
sudo dnf install tmux
# 拷贝tmux.conf 到 ~/.tmux.conf
# 安装tmux的插件管理器
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# alt+w r 重新加载tmux的配置文件
# alt+w I 安装tmux的插件
# 编译安装tmux
# dnf install ncurses-devel autoconf automake pkgconfig
# sh autogen.sh                                        
# dnf install libevent                                 
# dnf install libevent-devl                            
# dnf install libevent-devel ncurses-devel             
# ./configure --prefix=/usr/local/tmux3.5              

# 安装fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# 拷贝fzf.zsh 到 ~/.fzf.zsh
source ~/.fzf.zsh

# 安装zsh
sudo dnf install zsh*
# 设置zsh为默认shell 将zsh路径添加到/etc/shells
chsh -s /usr/bin/zsh
# 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 安装oh-my-zsh的主题powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# 拷贝zshrc 到 ~/.zshrc
source ~/.zshrc
# 重启zsh

# 安装nvim 暂时不用，以后有兴趣再用
# sudo dnf install neovim python3-neovim

# 安装bear
# dnf install -y dnf-plugins-core     
# config-manager --set-enabled crb    
# dnf config-manager --set-enabled crb
# dnf install -y bear                 

安装clangd服务，lsp用，clang-analyzer中包含了工具intercept-build，和bear功能一样用于生成compile_commands.json文件
# dnf  install clangd llvm clang-analyzer
# LspInstallServer 可以在用vim打开文件后执行LspInstallServer安装相对应的lsp服务器

# 安装nerd所有字体
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
fc-cache -fv

./uninstall.sh # 卸载

# 安装yazi
apt install ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide imagemagick
sudo snap install yazi --classic --edge

# 安装一些好用又好看的命令 TODO
sudo dnf install bat            # cat 
sudo dnf install ag             # grep 
sudo dnf install ripgrep        # grep  支持按文件编码搜索
sudo dnf install lsd            # ls
sudo npm install gtop -g        # top
sudo dnf copr enable atim/bottom -y
sudo dnf install bottom         # top
dnf install hyperfine           # 压测工具

# 编译安装open-vm-tool
sudo apt install -y libfuse3-dev  # 挂载共享目录的依赖
# 执行下面大段命令
sudo tee /etc/systemd/system/mnt-hgfs.mount >/dev/null <<'EOF'
[Unit]
Description=Mount VMware shared folders (HGFS)
After=open-vm-tools.service
Requires=open-vm-tools.service

[Mount]
What=.host:/
Where=/mnt/hgfs
Type=fuse.vmhgfs-fuse
Options=allow_other,auto_unmount

[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload
sudo systemctl enable --now mnt-hgfs.mount



#----------------------------------------------------------------------------------------------------
#                   vim 相关
#----------------------------------------------------------------------------------------------------
# vim --version 查看vim是否支持~/.vim/vimrc路径；如果不支持则拷贝vimrc到~/.vimrc

# 安装clang，vim的ale插件对C/C++需要(clang很多系统会自带)

# 源码编译安装gtags
# 依赖 automake, autoconf, gperf, bison and flex
sudo dnf install automake autoconf gperf bison flex
# 工具安装gtags
sudo apt install global 安装完需要在vim配置设置gtags.conf路径 let $GTAGSCONF = '/etc/gtags/gtags.conf'
# 安装pygments
sudo dnf install pip     |  sudo apt install universal-ctags
pip install pygments
# ubuntu需要在~/.zshrc文中添加 source /etc/profile
source ~/.zshrc
# 安装ctags
sudo dnf install ctags
# 安装libtool的头文件
sudo dnf install libtool-ltdl-devel.x86_64  | sudo apt install libtool  -y  sudo apt-get install libtool-bin
# 安装ncurses的头文件
sudo dnf install ncurses-devel.x86_64     |  sudo apt-get install libncurses5  sudo apt-get install libncurses5-dev libncursesw5-dev 
# 还需要安装makeinfo
sudo dnf install texinfo   | sudo apt install texinf
# 编译
sh reconf.sh
./configure --prefix=/usr/local/gtags.6.6.10  # 将安装在/usr/local/gtags.6.6.10目录下
make -j
sudo make install
# 将tags的bin目录和lib目录添加到环境变量中 
# /etc/profile
suod echo "export PATH=$PATH:/usr/local/gtags.6.6.10/bin/" >> /etc/profile
source /etc/profile
# /etc/ld.so.conf
/usr/local/gtags.6.6.10/lib/gtags/
ldconfig

# vim的markdown相关插件需要安装的依赖
# 需要安装nodejs 和 yarn
sudo dnf install nodejs   | sudo apt install nodejs npm
sudo npm install --global yarn

# 安装python3头文件，安装leaderf的C扩展需要 :LeaderfInstallCExtension
sudo dnf install python3-devel.x86_64

# ubuntu 升级 vim8 为 vim9
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt upgrade -y
# ubuntu 安装rust
sudo apt install rustc cargo

# 编译安装YCM
# YCM的依赖详情 https://github.com/ycm-core/YouCompleteMe#requirements
# 安装go
sudo dnf install go  | sudo apt install golang-go
# 安装java
sudo dnf install java   

# 其他依赖我的系统上已经有了 Fedora 38
# 下载ycm源码
cd ~/.vim/plugged
git clone https://github.com/ycm-core/YouCompleteMe.git
cd YouCompleteMe/
# 开始编译，我选择的是YCM支持的所有语言，可以根据个人需求进行编译，支持的少需要的依赖也就少，编译也会相对简单
python3 install.py --all

# 问题
'''
1. ❯ python3 install.py --all                                                                                    
File /home/lc/.vim/plugged/YouCompleteMe/third_party/ycmd/build.py does not exist; you probably forgot to run:
        git submodule update --init --recursive                                                               

按照提示执行 git submodule update --init --recursive
成之后 重新执行 python3 install.py --all
'''

# 由于YCM比较大，就不把他放到git上了

# 终端 alacritty
# We use Alacritty's default Linux config directory as our storage location here.
mkdir -p ~/.config/alacritty/themes
~/.config/alacritty/alacritty.toml
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
