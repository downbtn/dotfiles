
-- vim options
-- lang specific options should be in ftplugin
vim.o.number = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.smarttab = true
 
vim.g.editorconfig = true

vim.o.encoding = "UTF-8"

if vim.fn['has']("termguicolors") then
    vim.o.termguicolors = true
end

vim.g.mapleader = ";" -- needs to be done before lazy (?)
vim.g.maplocalleader = ";" -- needs to be done before lazy (?)

-- initialize plugins
require("cfg.lazy")

vim.keymap.set("n", "<leader>pu", require("lazy").update, {noremap=true})
vim.keymap.set("n", "<leader>ps", require("lazy").sync, {noremap=true})
vim.keymap.set("n", "<leader>t", vim.fn["tagbar#ToggleWindow"], {noremap=true})
vim.keymap.set("n", "<leader>m", vim.cmd.Mason, {noremap=true})
vim.keymap.set("n", "<leader>f", require("nvim-tree.api").tree.toggle, {noremap=true})
vim.keymap.set("n", "<leader>g", vim.cmd.Goyo, {noremap=true})
vim.keymap.set("n", "<leader>jd", vim.lsp.buf.definition, {noremap=true})
vim.keymap.set("n", "<leader>jD", vim.lsp.buf.declaration, {noremap=true})
vim.keymap.set("n", "<leader>jh", vim.lsp.buf.hover, {noremap=true})
vim.keymap.set({"n", "i"}, "<C-k>", vim.lsp.buf.signature_help, {noremap=true})
vim.keymap.set({"v", "n"}, "<leader>y", '"+y', {noremap=true}) -- easy access to system clipboard
vim.keymap.set({"v", "n"}, "<leader>d", '"+d', {noremap=true})
vim.keymap.set({"v", "n"}, "<leader>p", '"+p', {noremap=true})
vim.keymap.set({"v", "n"}, "<leader>s", '"+s', {noremap=true})
vim.keymap.set({"v", "n"}, "<leader>x", '"+x', {noremap=true})
vim.keymap.set("n", "<leader>ih", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 }), { bufnr = 0 })
end, { noremap = true })

vim.api.nvim_set_hl(0, "InlayHints", { fg = "#a89984", italic = true })

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
    end,
})

-- gruvbox best colorscheme
vim.o.background = "dark"
vim.g.gruvbox_italic = 1
vim.g.gruvbox_bold = 1
vim.g.gruvbox_underline = 1
vim.g.gruvbox_contrast_dark = "medium"
