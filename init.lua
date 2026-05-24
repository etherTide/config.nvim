-- Leader keys need to be mapped b4 lazy.nvim is loaded.
-- They are assigned inside config.lazy but if I also do it here I won't forget
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require "config.lazy"

vim.cmd[[colorscheme tokyonight-moon]]

