# 安装依赖工具
sudo apt install tmux global git make zsh clangd llvm clang-analyzer \
    bear ripgrep nodejs npm rustc cargo golang-go java libtool \
    libtool-bin ctags gdb gcc g++ clang pstack tree pkg-config \
    libelf-dev linux-headers-$(uname -r) bpfcc-tools libbpfcc \
    libbpfcc-dev linux-tools-common linux-tools-$(uname -r) cmake \
    automake autoconf gperf bison fles


# 安装fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# 拷贝fzf.zsh 到 ~/.fzf.zsh
source ~/.fzf.zsh

# 设置zsh为默认shell 将zsh路径添加到/etc/shells
chsh -s /usr/bin/zsh
# 拷贝zshrc 到 ~/.zshrc
source ~/.zshrc

# 重启zsh
# 配置主题
p10k configure 

# 安装nerd所有字体
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
fc-cache -fv

# gtags依赖
pip install pygments

# 安装yarn
sudo npm install --global yarn

# 安装python3头文件，安装leaderf的C扩展需要 :LeaderfInstallCExtension
sudo apt install python3-devel

# 打开vim配置安装插件，安装lsp服务

