import("which-key", function (whichKey)
  local setup = {
    window = {
      border = "rounded",
      position = "bottom",
      margin = { 1, 0, 1, 0 },
      padding = { 2, 2, 2, 2 },
      winblend = 0,
    },
    ignore_missing = true,
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
    show_help = true,
  }

  local opts = {
    mode = "n",
    prefix = "<leader>",
    silent = true,
    noremap = true
  }

  local mappings = {
    ["w"] = { "<cmd>w<cr>", "Save" },
    ["q"] = { "<cmd>q<cr>", "Quit" },
    ["e"] = { "<cmd>Neotree toggle<cr>", "Toggle Explorer" },
    ["n"] = { "<cmd>nohl<cr>", "No highlight" }
  }

  whichKey.setup(setup)
  whichKey.register(mappings, opts)
end)
