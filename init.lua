-- 基础设置
require("basic")
-- packer 插件管理 
require("plugins")
-- 键盘映射
require("keybindings")
-- 主题设置
require("colorscheme")
-- 自动命令
require("autocmds")
-- 插件配置
require("plugin-config.nvim-tree")
-- 顶部标签页
require("plugin-config.bufferline")
-- 底部信息栏目配置
require("plugin-config.lualine")
--  文件查找，内容搜索插件
require("plugin-config.telescope")

-- 启动页
require("plugin-config.dashboard")
-- 启动页项目列表
require("plugin-config.project")
-- 语法高亮
require("plugin-config.nvim-treesitter") 
