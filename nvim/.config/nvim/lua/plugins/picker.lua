return {
    "nvim-mini/mini.pick",
    opts = {},
    keys = {
        {"<leader>ff", "<CMD>Pick files<CR>", desc = "Mini pick find files" },
        {"<leader>fs", "<CMD>Pick grep<CR>", desc = "Mini pick grep string under cursor" },
        {"<leader>fg", "<CMD>Pick grep_live<CR>", desc = "Mini pick live grep" },
        {"<leader>gg", "<CMD>Pick files tool='git'<CR>", desc = "Mini pick git grep" },
        {"<leader>fb", "<CMD>Pick buffers<CR>", desc = "Mini pick buffers" },
        {"<leader>fh", "<CMD>Pick help<CR>", desc = "Mini pick help tags" },
    },
}
