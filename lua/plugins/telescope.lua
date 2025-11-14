return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        {"nvim-telescope/telescope-fzf-native.nvim",build= "make" },
        "nvim-tree/nvim-web-devicons"
    },
    config = function()

        local telescope = require("telescope")

        vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {})
        vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {})
        vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", {})
    end
}
