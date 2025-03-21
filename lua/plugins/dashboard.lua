return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    local logo = require("ascii");

    -- for _, item in ipairs() do
    --   table.insert(logo, item)
    -- end

    require("dashboard").setup {
      theme = "doom",
      config = {
        header = logo.neovim_default,
        center = {
          {
            icon = "  ",
            icon_hl = "Title",
            desc = "Find File           ",
            desc_hl = "String",
            key = "f",
            keymap = "SPC ;",
            key_hl = "Number",
            action = "FzfLua files"
          },
          {
            icon = "  ",
            desc = "Nvim config",
            key = "n",
            keymap = "SPC ; n",
            action = "FzfLua files cwd=~/.config/nvim"
          },
          {
            icon = "  ",
            desc = "Find Dotfiles",
            key = "d",
            keymap = "SPC ; d",
            action = "FzfLua files cwd=~/dotfiles"
          },
          {
            icon = "  ",
            desc = "Change colorscheme",
            key = "c",
            keymap = "SPC ; c",
            action = "FzfLua colorschemes"
          },
        },
        footer = {},
      }
    }
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } }
}
