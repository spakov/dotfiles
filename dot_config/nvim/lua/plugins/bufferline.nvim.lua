return {
  "bufferline.nvim",
  opts = {
    options = {
      separator_style = "slant",
      right_mouse_command = nil,
      --middle_mouse_command = "bdelete %d",
      middle_mouse_command = function()
        Snacks.bufdelete()
      end,
      truncate_names = false,
      left_trunc_marker = " ",
      right_trunc_marker = " ",
    },
  },
}
