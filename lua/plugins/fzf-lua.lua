return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    file_ignore_patterns = {
      "node_modules/",
      "dist/",
      ".next/",
      ".git/",
      ".gitlab/",
      "build/",
      "target/",
      "package-lock.json",
      "pnpm-lock.yaml",
      "yarn.lock",
      "lazy-lock.json",
      ".obsidian",
    },
  },
  config = function()
    vim.keymap.set('n', '<leader>;f', '<cmd>FzfLua files<CR>', {})
    vim.keymap.set('n', '<leader>;g', '<cmd>FzfLua live_grep_native<CR>', {})
    vim.keymap.set('n', '<leader>;b', '<cmd>FzfLua buffers<CR>', {})
    vim.keymap.set('n', '<leader>;r', '<cmd>FzfLua lsp_references<CR>', {})
  end
}
