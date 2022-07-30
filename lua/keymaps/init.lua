--      ___           ___                       ___           ___           ___         ___     
--     /__/|         /  /\          ___        /__/\         /  /\         /  /\       /  /\    
--    |  |:|        /  /:/_        /__/|      |  |::\       /  /::\       /  /::\     /  /:/_   
--    |  |:|       /  /:/ /\      |  |:|      |  |:|:\     /  /:/\:\     /  /:/\:\   /  /:/ /\  
--  __|  |:|      /  /:/ /:/_     |  |:|    __|__|:|\:\   /  /:/~/::\   /  /:/~/:/  /  /:/ /::\ 
-- /__/\_|:|____ /__/:/ /:/ /\  __|__|:|   /__/::::| \:\ /__/:/ /:/\:\ /__/:/ /:/  /__/:/ /:/\:\
-- \  \:\/:::::/ \  \:\/:/ /:/ /__/::::\   \  \:\~~\__\/ \  \:\/:/__\/ \  \:\/:/   \  \:\/:/~/:/
--  \  \::/~~~~   \  \::/ /:/     ~\~~\:\   \  \:\        \  \::/       \  \::/     \  \::/ /:/ 
--   \  \:\        \  \:\/:/        \  \:\   \  \:\        \  \:\        \  \:\      \__\/ /:/  
--    \  \:\        \  \::/          \__\/    \  \:\        \  \:\        \  \:\       /__/:/   
--     \__\/         \__\/                     \__\/         \__\/         \__\/       \__\/   
--


local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
vim.g.mapleader = ' '


-- tree-config keymaps
map('n', '<leader>e', ':Neotree toggle<CR>', opts)

-- bufer motion
map('n', '<A-.>', ':BufferNext<CR>', opts)
map('n', '<A-,>', ':BufferPrevious<CR>', opts)
map('n', '<A-q>', ':BufferClose<CR>', opts)

-- panels motion
map('n', '<C-h>', ':wincmd h<CR>', opts)
map('n', '<C-l>', ':wincmd l<CR>', opts)
map('n', '<C-j>', ':wincmd j<CR>', opts)
map('n', '<C-k>', ':wincmd k<CR>', opts)

-- hop option
map('n', '<leader>s', ':HopWord<CR>', opts)
-- map('n', '<leader>j', ':HopLine<CR>', opts)
-- map('n', '<leader>f', ':HopPattern<CR>', opts)
-- map('n', '<leader>d', ':HopWordCurrentLine<CR>', opts)

-- Telescope
map('n', '<leader>tt', ':Telescope find_files<CR>', opts)
map('n', '<leader>tw', ':Telescope live_grep<CR>', opts)
map('n', '<leader>tc', ':Telescope command_history<CR>', opts)

-- Block cursors
map('n', '<up>', '<nop>', opts)
map('n', '<left>', '<nop>', opts)
map('n', '<right>', '<nop>', opts)
map('n', '<down>', '<nop>', opts)

-- move lines
map('n', '<A-j>', ':move +1<CR>', opts)
map('n', '<A-k>', ':move -2<CR>', opts)

--save and redo normal node
map('i', '<C-s>', ':w<CR>', opts)
map('n', '<C-s>', ':w<CR>', opts)

-- undo redo
map('n', '<C-z>', 'u', opts)
map('n', '<C-y>', '<C-R>', opts)


--dashboard
map('n', '<C-p>', ':Dashboard<CR>', opts)


--clipboard
--Install xclip for shared clipboard 
map('n', '<leader>y', ':"*y<CR>', opts)
map('n', '<leader>p', ':"*p<CR>', opts)


-- map('n', 'C-f>', ':call comfortable_motion#flick(200)<CR>', opts)
-- map('n', 'C-b>', ':call comfortable_motion#flick(-200)<CR>', opts)


