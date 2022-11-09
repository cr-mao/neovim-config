## My Neovim 



## 安装 neovim

### ubuntu
```shell
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```
### mac 
```shell
brew install neovim

nvim --version # NVIM v0.8.0
```


## 安装 Packer.nvim 插件管理器
```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```


## 安装配置
```shell
cd $home/.config
mkdir nvim && cd nvim 
git clone https://github.com/cr-mao/neovim-config.git
```


