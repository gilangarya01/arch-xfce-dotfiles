return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  keys = {
    { "<A-,>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<A-.>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "[b", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
    { "]b", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
  },
}
