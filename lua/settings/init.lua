local set = vim.opt

set.number = true
set.splitright = true
set.hidden = true
set.lazyredraw = true
set.relativenumber = true
set.numberwidth=2
set.ruler = true
set.laststatus=2
set.mouse='a'
set.wrap = false
set.wrap = false
set.emoji = true
set.breakindent = true
set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4
set.encoding='utf-8'
set.guifont = "Cascadia Code"
set.clipboard = "unnamedplus"
set.termguicolors = true
set.foldmethod="indent"
set.foldlevel=99



vim.api.nvim_command([[
    augroup remember_folds
        autocmd BufLeave ?* mkview 1
        autocmd BufEnter ?* silent! loadview 1
    augroup END
]])

vim.cmd("set nofoldenable")
vim.g.comfortable_motion_scroll_up_key = "k"
vim.g.comfortable_motion_scroll_down_key = "j"
vim.g.vsnip_snippet_dir = "~/.config/nvim/lua/vsnip/"
