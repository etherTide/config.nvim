-- Leader keys need to be mapped b4 lazy.nvim is loaded.
-- They are assigned inside config.lazy but if I also do it here I won't forget
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require "config.lazy"

vim.cmd[[colorscheme tokyonight-moon]]

vim.keymap.set('n', "<Leader><Leader>x", "<cmd>source %<CR>")
vim.keymap.set('n', "<Leader>x", ":.lua<CR>")
vim.keymap.set('v', "<Leader>x", ":lua<CR>")

-- ^I = Tab, so Tab goes forward in jump list and S-Tab goes back :D
vim.keymap.set('n', "<S-Tab>", "<C-O>")
