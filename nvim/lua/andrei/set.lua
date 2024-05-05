vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.termguicolors = true

vim.opt.colorcolumn = "80"

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.clipboard = "unnamedplus"

-- Autocomplete --
vim.opt.completeopt = "menuone", "longest"
vim.opt.complete = "kspell"

-- Set the ColorScheme --
vim.opt.background = "dark"

require("colors/gruvbox").load()
-- require("colors/gruvbox_spec").load() --

function Colors(color)
    color = color or "gruvbox"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

Colors()

-- Remove all trailing white space after saving --
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    command = [[%s/\s\+$//e]],
})


vim.opt.cursorcolumn = true
vim.opt.ignorecase = true
vim.opt.hlsearch = false
vim.opt.wrap = false
