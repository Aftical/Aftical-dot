local Aris = "Go with the Light at Your back Hero!"
local name = "Tendou Aris"
print(Aris .. " 󱨇 " .. name)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.encoding = "utf-8"
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.cmd("highlight Normal ctermbg=none guibg=none")
vim.cmd("highlight NonText ctermbg=none guibg=none")
vim.cmd("highlight NormalNC ctermbg=none guibg=none")
vim.cmd("highlight NormalFloat ctermbg=none guibg=none")
vim.cmd("highlight FloatBorder ctermbg=none guibg=none")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath, })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        name = "nvim-treesitter",
        build = ':TSUpdate',
        install_dir = vim.fn.stdpath('data') .. '/site',
        config = function()
            require('nvim-treesitter').setup({
                ensure_installed = { 'c', 'cpp', 'java' },
                highlight = {
                    enable = true,
                },
            })
        end,
    },
    { "folke/tokyonight.nvim", lazy = false },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                disable_background = true,
                disable_float_background = true,
                disable_italics = false,
            })
            vim.cmd("colorscheme rose-pine-moon")
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-file-browser.nvim"
        },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", function()
                require("telescope.builtin").find_files({ cwd = vim.fn.getcwd() })
            end, { desc = "Find files in current dir" })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
            vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
            vim.keymap.set("n", "<leader>j", function()
                require("telescope").extensions.file_browser.file_browser({
                    path = vim.fn.getcwd(),
                    hidden = true,
                })
            end, { desc = "File browser" })
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "rose-pine",
                },
            })
        end,
    },
    {
        "goolord/alpha-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            local dashboard = require("alpha.themes.dashboard")
            dashboard.section.header.val = {
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "              ／l、     ",
                "            （ﾟ､ ｡ ７    ",
                "              l  ~ヽ    ",
                "              じしf_,)ノ",
                "                        ",
                "       Welcome back, Aftical! ",
                "bam bam ka bam!! Arisu is cheering you!",
            }
            dashboard.section.buttons.val = {
                dashboard.button("e", "New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("f", "Find files", ":Telescope find_files <CR>"),
                dashboard.button("r", "Recent files", ":Telescope oldfiles <CR>"),
                dashboard.button("g", "Live grep", ":Telescope live_grep <CR>"),
            }
            dashboard.section.footer.val = {
                "NO LEWDNESS ALLOWED!!! Death penalty!",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
            }
            dashboard.opts.layout = {
                { type = "padding", val = 1 }, dashboard.section.header,
                { type = "padding", val = 1 }, dashboard.section.buttons,
                { type = "padding", val = 1 }, dashboard.section.footer,
            }
            dashboard.opts.opts.noautocmd = true
            require("alpha").setup(dashboard.opts)
        end,
    },
})
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Explore files" })
vim.keymap.set("n", "<leader>q", vim.cmd.q, { desc = "Quit" })
vim.keymap.set("n", "<leader>s", vim.cmd.so, { desc = "Source file" })
