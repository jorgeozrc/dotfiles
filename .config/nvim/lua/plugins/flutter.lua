return {
  "nvim-flutter/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("flutter-tools").setup({})

    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format({ async = true })
    end, { desc = "Formatear con LSP" })

    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, {
      desc = "Show diagnostic",
    })

    vim.keymap.set("n", "<leader>dn", function()
      vim.diagnostic.jump({ count = 1 })
    end, { desc = "Next diagnostic" })

    vim.keymap.set("n", "<leader>dp", function()
      vim.diagnostic.jump({ count = -1 })
    end, { desc = "Previous diagnostic" })
  end,
}
