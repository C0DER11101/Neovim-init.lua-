
vim.cmd("colo summerfruit256");

vim.cmd("set number");

vim.cmd("set cursorline");

vim.cmd("set relativenumber");

vim.cmd("filetype indent on");

vim.cmd([[
set autoindent
]]);

-- for syntastic plugin
vim.cmd([[

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
]])

-- vim.opt behaves like the set command of vim(keep in mind it will work only for those commands that require an Rvalue)
vim.opt.laststatus=2
