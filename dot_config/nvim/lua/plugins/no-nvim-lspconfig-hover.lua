return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["*"] = {
        keys = {
          -- Remap Hover from <S-k> to Tab
          { "K", false },
          {
            "<C-i>",
            function()
              return vim.lsp.buf.hover()
            end,
            desc = "Hover",
          },
        },
      },
    },
  },
}
