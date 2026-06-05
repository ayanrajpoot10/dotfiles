return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,

      integrations = {
        cmp = true,
        neotree = true,
        telescope = {
          enabled = true,
          style = "nvchad",
        },
        notify = true,
        mini = true,
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
