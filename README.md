## My Neovim 


![](images/my-neovim.jpeg)

## 安装 

### ubuntu 安装neovim

```shell
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

### mac 安装neovim 

```shell
brew install neovim

nvim --version # NVIM v0.8.0
```

### 字体安装

https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode/Regular/complete

linux 、mac 下载 Fira Code Regular Nerd Font Complete.ttf 双击

iterm2 设置text 选择该字体即可 




### 安装 Packer.nvim 插件管理器

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 
 # ~/.local/share/nvim/site/pack/packer/start 也是插件安装位置
```

### 安装一些依赖

ubuntu

```shell
sudo add-apt-repository ppa:x4121/ripgrep
sudo apt-get update
sudo apt install ripgrep # 搜索插件(telescope)需要安装此依赖 

npm install -g fd-find # 搜索插件(telescope)需要安装此依赖 
```

mac

```shell
brew install ripgrep # 搜索插件(telescope)需要安装此依赖 
brew install fd  # 搜索插件(telescope)需要安装此依赖 
```

### 安装配置

neovim 配置文件入口:  `~/.config/nvim/init.lua`

```shell
cd $home/.config
mkdir nvim && cd nvim 
git clone https://github.com/cr-mao/neovim-config.git
```

**如果没进入插件安装界面或者网络异常 ，请手动  :PackerSync 安装下插件**



## 设置的快捷键

| 常用功能               | 模式     | 快捷键:                                                      |
| ---------------------- | -------- | ------------------------------------------------------------ |
| Leader键               |          | 空格                                                         |
|                        |          |                                                              |
| 开启Terminal           | Normal   | leader+t   下面开启终端，   leader+y     右侧开启终端        |
|                        |          |                                                              |
| 窗口操作               |          |                                                              |
| 窗口分割               | Normal   | s+h,v,c,o      水平分割、垂直分割、关闭本窗口、关闭其他      |
| 窗口跳转               | Normal   | 使用vim默认的快捷键  ctrl+w+ h,j,k,l    或者 alt+h,j,k,l    （我的mac alt设置的是option健） |
| 窗口比例调整           | Normal   | 左右比例控制:     N:  s+`,` s+`. `            上下比例控制:  s+j,s+k |
|                        |          |                                                              |
| 侧边栏目操作           |          |                                                              |
| 打开关闭侧边栏         | Normal   | Alt+m                                                        |
| 目录打开文件           | Normal   | o  或者 enter                                                |
| 目录打开文件           | Normal   | h 水平分割打开新文件。v 垂直分割打开新文件                   |
| 文件操作命令           | Normal   | a 创建; d 删除文件; r 重命名; x 剪切;c 拷贝; p 黏贴文件      |
|                        |          |                                                              |
| 文本操作               |          |                                                              |
| 锁进                   | V        | <  左锁进  ；  >  右锁进                                     |
| 上下移动选中文本       | V        | J ,K                                                         |
| 滚动浏览代码           | Normal   | Ctrl+j,ctrl+k 快速上下移动4行  ctrl+u,ctrl+d.  快速上下移动9行 |
| 粘贴代码               | V        | 按2次跑                                                      |
| 跳到行首行尾           | *insert* | ctrl+h  到行首   ,ctrl+l 到行尾                              |
|                        |          |                                                              |
| 顶部标签页             |          |                                                              |
| 左右Tab切换            | Normal   | ctrl+h,l                                                     |
| 关闭标签页             | Normal   | ctrl+w                                                       |
|                        |          |                                                              |
| 查找                   |          |                                                              |
| 查找文件               | Normal   | ctrl+p       或者 :Telescope find_files  打开搜索文件窗口，快速打开文件。 |
| 全局搜索内容           | Normal   | ctrl+f      或者 :Telescope live_grep 可以打开搜索窗口，输入内容后，结果会实时显示 |
| 搜索打开的窗口浏览文件 | insert   | ctrl+j ； ctrl+k                                             |
|                        |          |                                                              |
| 语法高亮               |          |                                                              |
| 查看安装情况           | Command  | :TSInstallInfo                                               |
| 安装语言高亮支持       | Command  | :TSInstall javascript    安装javascript示例                  |
| 卸载语言高亮           | Command  | :TSUninstall <language_to_uninstall>                         |
| 查看模块安装情况       | Command  | :TSModuleInfo                                                |
| 增量选择模块           | N        | 回车: 增量选中;  退格: 取消上一次选中                        |
| 代码格式锁进           | N        | =      当前行或者选中的行。按 =                              |
| 代码折叠模块           | N        | zc 折叠代码 ；zo 打开折叠                                    |
|                        |          |                                                              |
|                        |          |                                                              |
|                        |          |                                                              |
|                        |          |                                                              |




## 其他

packer 一些命令

- :PackerCompile： 每次改变插件配置时，必须运行此命令或 PackerSync, 重新生成编译的加载文件
- :PackerClean ： 清除所有不用的插件
- :PackerInstall ： 清除，然后安装缺失的插件
- :PackerUpdate ： 清除，然后更新并安装插件
- :PackerSync : 执行 PackerUpdate 后，再执行 PackerCompile
- :PackerLoad : 立刻加载 opt 插件


插件查找网站 ：https://neovimcraft.com



nvim-treesitter安装后，打开文件每行都报错 ，运行下 :TSUpdate



Lsp 一些指令

 `:LspInstallInfo`  列出了可以安装的 servers

以使用 `j / k` 移动光标到你要安装的 server，点击键盘 `i` 安装，i 表示 install。



- 大写的 `X` 是卸载该 server
- `u` 是更新 server
- 大写 `U` 更新所有 servers
- `c` 检查 server 新版本
- 大写 `C` 检查所有 servers 的新版本
- `ESC` 关闭窗口
- `?` 显示其他帮助信息



https://github.com/williamboman/nvim-lsp-installer#available-lsps

- `settings` 主要用来配置语言服务，我们一般会在 `nvim-lspconfig` 项目的 [服务器配置项页面](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md) 找到对应语言的示例配置。

https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

lsp安装目录： .local/share/nvim/mason/packages



## links 

https://juejin.cn/post/7154005621887631396



