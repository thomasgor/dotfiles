vim.cmd("set number")
--vim.cmd("set relativenumber")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader=" "

-- Enable inline diagnostics (virtual text)
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
})


-- Keymapping for exitting terminal mode easy with double esc instead of this fucking [<C-\><C-n>]
vim.keymap.set('t', '<Esc><Esc>', [[<C-\><C-n>]], {
  noremap = true,
  silent = true,
  desc = 'Double Esc to exit terminal mode'
})


-- Moving lines up and down with alt + arrow key
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true, desc = 'Move line down' })
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true, desc = 'Move line up' })

-- Visual mode: move selected lines
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selection down' })
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selection up' })

