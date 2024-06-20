vim.g.have_nerd_font = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.showmode = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wrap = false

vim.opt.clipboard = 'unnamedplus'

vim.opt.cursorline = false

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'auto:1-9'

vim.opt.hlsearch = true

vim.opt.undofile = true

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Remoes ~ on lines after end of file
vim.opt.fcs = 'eob: '

-- Not exactly sure what this does since we alreay have substition preview
-- vim.opt.inccommand = 'split'


-- border for diagnostic windows
vim.diagnostic.config({
    virtual_text = false,
    float = {
        header = false,
        border = 'rounded',
        focusable = true
    }
})
