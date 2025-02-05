-- Leader
vim.g.mapleader = ","
vim.g.maplocalleader = ",,"

-- Basics
vim.o.cmdheight = 2
vim.wo.number = true
vim.o.mouse = ""
vim.o.clipboard = "unnamedplus"
vim.wo.cursorline = true
vim.o.scrolloff = 15
vim.o.whichwrap = vim.o.whichwrap .. "<,>,h,l"
vim.o.swapfile = false

-- Search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.api.nvim_set_keymap("n", "<space>", "/", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<c-space>", "?", { noremap = true, silent = true })

-- Tabs
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- Move between splits
vim.o.splitbelow = true
vim.o.splitright = true

-- Remap splits
vim.api.nvim_set_keymap("n", "<C-j>", "<C-W>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-W>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", "<C-W>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-W>l", { noremap = true, silent = true })

-- Adjust split sizes
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize +3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize -3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -3<CR>", { noremap = true, silent = true })

-- Change 2 split windows from vertical to horizontal or vice versa
vim.api.nvim_set_keymap("n", "th", "<C-w>t<C-w>H", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "tk", "<C-w>t<C-w>K", { noremap = true, silent = true })

-- Switch buffers
vim.api.nvim_set_keymap("n", "<leader>bl", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bh", ":bprevious<CR>", { noremap = true, silent = true })

-- Map window tabs
vim.api.nvim_set_keymap("n", "tn", ":tabnew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "tc", ":tabclose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "tm", ":tabmove", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-l>", ":tabnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-h>", ":tabprev<CR>", { noremap = true, silent = true })

-- Remove all trailing whitespace by pressing F5
vim.api.nvim_set_keymap("n", "<F5>", [[:let _s=@/ | %s/\s\+$//e | let @/=_s<CR>]], { noremap = true, silent = true })

-- Plugins
require("config.lazy")

-- vim.g.sonokai_style = 'atlantis'
-- vim.g.sonokai_style = 'maia'
vim.g.sonokai_style = 'andromeda'
vim.cmd("colorscheme sonokai")

-- FZF
vim.opt.rtp:append("~/.fzf")
vim.api.nvim_set_keymap('n', '<C-f>', ':Files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-g>', ':Rg<CR>', { noremap = true, silent = true })
vim.g.fzf_buffers_jump = 1 

-- Whitespace
vim.api.nvim_set_hl(0, 'TrailingWhitespace', { bg='LightRed' })
vim.api.nvim_create_autocmd('BufEnter', {
	pattern = '*',
	command = [[
		syntax clear TrailingWhitespace |
		syntax match TrailingWhitespace "\_s\+$"
	]]}
)

-- Neotree
vim.api.nvim_set_keymap("n", "<leader>n", ":Neotree<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>nc", ":Neotree close<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>r", ":Neotree filesystem reveal<CR>", { noremap = true, silent = true })
