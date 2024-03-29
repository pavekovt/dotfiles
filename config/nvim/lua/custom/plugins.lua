local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
    opts = {
      format = { timeout_ms = 10000 },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "lua-language-server",
        -- Go
        "gopls",
        "goimports",
        "goimports-reviser",
        "golines",
        "delve",

        -- Js
        "eslint",
        "tsc",

        "stylua",
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings "dap"
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings "dap_go"
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "jremmen/vim-ripgrep" },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    lazy = false,
    config = function()
      require "custom.configs.null_ls"
    end,
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "mbbill/undotree",
    lazy = false,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = { "BufReadPre" },
    config = function()
      local options = {}
      if vim.fn.executable "rg" == 0 then
        options.search = {
          command = "grep",
          args = {
            "--recursive",
            "--color=never",
            "--with-filename",
            "--line-number",
            "--binary-files=without-match",
            "--byte-offset",
            '--exclude-dir=".*"',
            "--extended-regexp",
          },
          pattern = ".*(KEYWORDS):",
        }
      end
      require("todo-comments").setup(options)
    end,
  },
  {
    "vimwiki/vimwiki",
    event = "BufReadPre",
  },
}
return plugins
