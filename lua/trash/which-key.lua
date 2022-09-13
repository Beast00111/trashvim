local setup = {
  plugins = {
    marks = true,
    registers = true,
    spelling = {
      enabled = true,
      suggestions = 20,
    },
    presets = {
      operators = false,
      motions = true,
      text_objects = true,
      windows = true,
      nav = true,
      z = true,
      g = true,
    },
  },
  window = {
    border = "rounded",
    position = "bottom",
    margin = { 1, 0, 1, 0 },
    padding = { 2, 2, 2, 2 },
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 },
    width = { min = 20, max = 50 },
    spacing = 3,
    align = "left",
  },
  ignore_missing = true,
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
  show_help = false,
  triggers = "auto",
}

local opts = {
  mode = "n",
  prefix = "<leader>",
  silent = true,
  noremap = true,
}

local mappings = {
  ["t"] = {
    name = "File Explorer",
    ["t"] = { "<cmd>NvimTreeToggle<CR>", "Toggle" },
    ["r"] = { "<cmd>NvimTreeRefresh<CR>", "Refresh" },
    ["c"] = { "<cmd>NvimTreeClose<CR>", "Close" },
    ["o"] = { "<cmd>NvimTreeCollapse<CR>", "Collapse" },
  },
  ["b"] = {
    name = "Buffers",
    ["l"] = { "<cmd>BufferLineCloseRight<CR>", "Close all to right" },
    ["h"] = { "<cmd>BufferLineCloseLeft<CR>", "Close all to left" },
  },
  ["x"] = { "<cmd>bd<CR>", "Close buffer" },
  ["f"] = {
    name = "Find",
    ["f"] = { "<cmd>lua require('telescope.builtin').live_grep()<CR>", "Text" },
    ["s"] = { "<cmd>lua require('telescope.builtin').find_files()<CR>", "Files" },
    ["h"] = { "<cmd>lua require('telescope.builtin').help_tags()<CR>", "Help tags" },
    ["b"] = { "<cmd>lua require('telescope.builtin').buffers()<CR>", "Buffers" },
  },
  ["g"] = {
    name = "Git",
    ["s"] =  { "<cmd>lua require('telescope.builtin').git_status()<CR>", "Status" },
    ["c"] =  { "<cmd>lua require('telescope.builtin').git_commits()<CR>", "Commits" },
    ["b"] =  { "<cmd>lua require('telescope.builtin').git_branches()<CR>", "Branches" },
  },
  ["h"] = {
    name = "Hop",
    ["h"] = { "<cmd>HopChar2<cr>", "2 Chars"},
    ["f"] = { "<cmd>HopChar1<cr>", "1 Chars"},
    ["p"] = { "<cmd>HopPattern<cr>", "Pattern"},
    ["l"] = { "<cmd>HopLineStart<cr>", "Line start"},
    ["v"] = { "<cmd>HopVertical<cr>", "Vertical"},
    ["w"] = { "<cmd>HopWord<cr>", "Word"}
  }
}

require('which-key').setup(setup)
require('which-key').register(mappings, opts)

