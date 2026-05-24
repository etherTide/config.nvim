vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.have_nerd_font = true

vim.opt.undofile = true
vim.opt.confirm = true

vim.opt.updatetime = 250
vim.opt.timeout = false

-- options for the :s cmd
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.mouse = "a"
vim.opt.cursorline = true

vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 10

vim.opt.cpoptions = "n"
vim.opt.breakindent = true
vim.opt.breakindentopt = "shift:4,sbr"
vim.opt.showbreak = "|||>"
vim.opt.list = true
vim.opt.listchars = { tab = "⇥ ", trail = "·", nbsp = "␣" }

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.keymap.set('n', "<Leader><Leader>x", "<cmd>source %<CR>")
vim.keymap.set('n', "<Leader>x", ":.lua<CR>")
vim.keymap.set('v', "<Leader>x", ":lua<CR>")

-- ^I = Tab, so Tab goes forward in jump list and S-Tab goes back :D
vim.keymap.set('n', "<S-Tab>", "<C-O>")

 -- Clear highlights on search when pressing <Esc> in normal mode
  --  See `:help hlsearch`
  vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

require "config.lazy"

