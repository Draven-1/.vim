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

# 安装一些好用又好看的命令 TODO
sudo dnf install bat            # cat 
sudo dnf install ag             # grep 
sudo dnf install ripgrep        # grep  支持按文件编码搜索
sudo dnf install lsd            # ls
sudo npm install gtop -g        # top
sudo dnf copr enable atim/bottom -y
sudo dnf install bottom         # top
dnf install hyperfine           # 压测工具



#----------------------------------------------------------------------------------------------------
#                   vim 相关
#----------------------------------------------------------------------------------------------------
# vim --version 查看vim是否支持~/.vim/vimrc路径；如果不支持则拷贝vimrc到~/.vimrc

# 安装clang，vim的ale插件对C/C++需要(clang很多系统会自带)

# 源码编译安装gtags
# 依赖 automake, autoconf, gperf, bison and flex
sudo dnf automake autoconf install gpref bison flex
# 安装pygments
pip install pygments
# 安装ctags
sudo dnf install ctags
# 安装libtool的头文件
sudo dnf install libtool-ltdl-devel.x86_64
# 安装ncurses的头文件
sudo dnf install ncurses-devel.x86_64
# 还需要安装makeinfo
sudo dnf install texinfo
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
sudo dnf install nodejs
sudo npm install --global yarn

# 安装python3头文件，安装leaderf的C扩展需要
sudo dnf install python3-devel.x86_64

# 编译安装YCM
# YCM的依赖详情 https://github.com/ycm-core/YouCompleteMe#requirements
# 安装go
sudo dnf install go
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
