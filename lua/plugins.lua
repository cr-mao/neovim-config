local packer = require("packer")

packer.startup({
  function(use)
   -- Packer 可以管理自己本身, 对应https://github.com/wbthomason/packer.nvim
   use 'wbthomason/packer.nvim'
   -- 你的插件列表...

   -- nvim-tree   目录
    use({
      "kyazdani42/nvim-tree.lua",
      requires = "kyazdani42/nvim-web-devicons",
    })
  
   -- bufferline 标签页
    use({
      "akinsho/bufferline.nvim",
      requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" },
    })


     -------------- lualine 底部信息
    use({
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons" },
    })
    use("arkav/lualine-lsp-progress")



    ------------- telescope 搜索插件
    use({
      "nvim-telescope/telescope.nvim",
      requires = { "nvim-lua/plenary.nvim" },
    })
    -- telescope extensions 环境变量 插件
    use "LinArcX/telescope-env.nvim"



    ---------------------- dashboard-nvim 项目启动页插件
    use("glepnir/dashboard-nvim")


    -- project 启动页项目列表
    use("ahmedkhalf/project.nvim")

    --------------------- colorschemes --------------------
    -- tokyonight
    use("folke/tokyonight.nvim")
     -- OceanicNext
    use("mhartington/oceanic-next")
    -- gruvbox
    use({
      "ellisonleao/gruvbox.nvim",
      requires = { "rktjmp/lush.nvim" },
    })
    -- zephyr
    -- use("glepnir/zephyr-nvim")
    -- nord
    use("shaunsingh/nord.nvim")
    -- onedark
    use("ful1e5/onedark.nvim")
    -- nightfox
    use("EdenEast/nightfox.nvim")
    -------------------------------------------------------
end,

    -- 最大并发数
    max_jobs = 16,
    -- 自定义源
    git = {
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
    config = {
      display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
      },
    }

})

