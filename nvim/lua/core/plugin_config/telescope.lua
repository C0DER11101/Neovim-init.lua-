local builtin=require("telescope.builtin");

vim.keymap.set("n", "<Space>ff", builtin.find_files, {});
vim.keymap.set("n", "<Space>of", builtin.oldfiles, {});
vim.keymap.set("n", "<Space>lg", builtin.live_grep, {});
vim.keymap.set("n", "<Space>ht", builtin.help_tags, {});

vim.keymap.set("n", "<C-G>", ":Telescope<CR>");
