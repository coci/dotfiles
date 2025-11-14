return {
    "MagicDuck/grug-far.nvim",
    lazy = true,
    cmd = {
        "GrugFarSearch",
        "GrugFarReplace",
        "GrugFarFind",
    },
    dependencies = {
        "nvim-lua/plenary.nvim", -- dependency for asynchronous operations
    },
    -- Setting the keybinding for opening the plugin with 'keys'
    keys = {
        { "<leader>f", "<cmd>GrugFar<cr>", desc = "Open GrugFar Search" }
    },
    config = function()
        -- grug-far.nvim configuration
        require('grug-far').setup({
            cmd = 'rg',  -- Use ripgrep for search and replace (can be changed to other tools like ag)
            exclude = { "node_modules", ".git" },  -- Exclude certain directories from search
            preview = true,  -- Enable preview of matched results
            highlight = true,  -- Highlight search terms in results
        })
    end,
}
