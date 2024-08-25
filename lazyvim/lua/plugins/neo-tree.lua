return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 30,
      position = "right",
    },
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
      },
    },
  },
}
