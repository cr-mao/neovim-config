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

    -- treesitter  代码高亮
    use({
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
    })





    --------------------- LSP --------------------
    --  use("williamboman/nvim-lsp-installer")

    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })

    -- Lspconfig
    use({ "neovim/nvim-lspconfig" })

 

        -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- Snippet 引擎
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")

      -- UI 增强
    use("onsails/lspkind-nvim")
    use("tami5/lspsaga.nvim")
    -- 代码格式化
    use("mhartington/formatter.nvim")
    use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    -- TypeScript 增强
    use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
    use("jose-elias-alvarez/typescript.nvim")

    -- Lua 增强
    use("folke/neodev.nvim")
    -- JSON 增强
    use("b0o/schemastore.nvim")
    -- Rust 增强
    use("simrat39/rust-tools.nvim")

    
    -- go
    use("leoluz/nvim-dap-go")


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
