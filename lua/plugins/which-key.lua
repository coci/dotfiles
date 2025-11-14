-- (optional) which-key: just to keep key-hints discoverable
return {
  "folke/which-key.nvim",
  lazy = true,
  event = "VeryLazy",
  opts = {},
  keys = {
    { "<leader>gm", "<cmd>Mason<cr>", desc = "Mason (manage tools)" },
    { "K",          nil,               desc = "Hover (LSP)" },
    { "gd",         nil,               desc = "Go to Definition (LSP)" },
    { "gr",         nil,               desc = "References (LSP)" },
    { "gi",         nil,               desc = "Implementation (LSP)" },
    { "<leader>rn", nil,               desc = "Rename (LSP)" },
    { "<leader>ca", nil,               desc = "Code Action (LSP)" },
    { "[d",         nil,               desc = "Prev Diagnostic" },
    { "]d",         nil,               desc = "Next Diagnostic" },
    { "gl",         nil,               desc = "Line Diagnostics" },
  },
}
