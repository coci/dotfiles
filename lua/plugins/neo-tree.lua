return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- >>> Add this setup <<<
    require("neo-tree").setup({
      window = {
        position = "left",  -- or "right"
        width = 25,         -- default width in columns
       },
      filesystem = {
        filtered_items = {
          visible = true,       -- show files normally hidden by filters
          hide_dotfiles = false,
          hide_gitignored = false,
          -- optional niceties:
          show_hidden_count = true,
          hide_by_name = {},    -- keep empty to avoid hiding by name
          never_show = {},      -- never hide anything explicitly
        },
      },
    })

    -- Your keymaps
    vim.api.nvim_set_keymap(
      "n",
      "t",
      ":lua require'neo-tree.utils'.open_tab(require'neo-tree.sources.manager'.get_node_under_cursor().path)<CR>",
      { noremap = true, silent = true }
    )
    vim.api.nvim_set_keymap("n", "<leader>nt", ":Neotree toggle<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>tn", ":tabnext<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>tp", ":tabprevious<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true, silent = true })
  end,
}
