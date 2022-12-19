require("buffer_manager").setup({
  line_keys = "",  -- deactivate line keybindings
  select_menu_item_commands = {
    v = {
      key = "<C-v>",
      command = "vsplit"
    },
    h = {
      key = "<C-h>",
      command = "split"
    }
  },
  width = 0.8
})
