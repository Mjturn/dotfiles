local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
    spec = {
        --{ import = "plugins" },

        {
            "xiantang/darcula-dark.nvim",

            dependencies = {
                "nvim-treesitter/nvim-treesitter"
            }
        },

        {
            "nvim-telescope/telescope.nvim", version = "*",

            dependencies = {
                "nvim-lua/plenary.nvim",
                { "nvim-telescope/telescope-fzf-native.nvim", build = "make" }
            }
        },

        {
            "mason-org/mason-lspconfig.nvim",

            opts = {
                ensure_installed = { "lua_ls" }
            },

            dependencies = {
                { "mason-org/mason.nvim", opts = {} },
                "neovim/nvim-lspconfig"
            }
        },

        {
            "saghen/blink.cmp",
            dependencies = { "rafamadriz/friendly-snippets" },

            version = "1.*",

            ---@module "blink.cmp"
            ---@type blink.cmp.Config

            opts = {
                keymap = { preset = "default" },

                appearance = {
                    nerd_font_variant = "mono"
                },

                completion = { documentation = { auto_show = false } },

                sources = {
                    default = { "lsp", "path", "snippets", "buffer" }
                },

                fuzzy = { implementation = "prefer_rust_with_warning" }
            },

            opts_extend = { "sources.default" }
        }
    },

    install = { colorscheme = { "habamax" } },
    checker = { enabled = true },
})
