return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<C-n>",
        function()
          require("neo-tree.command").execute({ toggle = true, reveal = true })
        end,
        desc = "Explorer NeoTree (curr dir)",
      },
    },
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        window = {
          position = "float",
        },
        buffers = {
          follow_current_file = { enabled = true },
        },
      })
    end,
  },
}
