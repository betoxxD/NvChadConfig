require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


-- Save the current file
map("n", "<leader>w", "<cmd>w<cr>", { desc = "File Save the current file" })

-- Close the current tab
map("n", "<leader>q", function ()
    require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close"})

-- Open NvimTree
map("n", "<leader>nt", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" } )

-- Open a terminal in the top half of the window and execute the next command "g++ -std=c++11 % && ./a.out" on it
map("n", "<leader>fw", "<cmd>split term://g++ -std=c++11 % && ./a.out<CR>", { desc = "terminal split and compile c file" })

