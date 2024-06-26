require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Save the current file
map("n", "<leader>w", "<cmd>w<cr>", { desc = "File Save the current file" })

-- Close the current tab
map("n", "<leader>q", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- Open NvimTree
map("n", "<leader>nt", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- Open a terminal in the top half of the window and execute the next command "g++ -std=c++11 % && ./a.out" on it
map(
  "n",
  "<leader>fw",
  "<cmd>split term://g++ -std=c++11 % && ./a.out<CR>",
  { desc = "terminal split and compile c file" }
)

-- Open file_browser with the path of the current buffer
map(
  "n",
  "<leader>fb",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { desc = "file_browser with the path of the current buffer" }
)

-- Move the current line down
map("n", "<leader>j", "<cmd>m .+1<CR>==", { desc = "Move the current line down" })

-- Move the current line up
map("n", "<leader>k", "<cmd>m .-2<CR>==", { desc = "Move the current line up" })
