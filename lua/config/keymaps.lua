-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<F5>", ":e! <CR>", { silent = true })
map("n", "<leader>w", ":wa! <CR>")
map("n", "H", "^")
map("n", "L", "$")
map("i", "<C-h>", "<Left>", { silent = true, noremap = true })
map("i", "<C-l>", "<Right>", { silent = true, noremap = true })
map("i", "<C-k>", "<Up>", { silent = true, noremap = true })
map("i", "<C-j>", "<Down>", { silent = true, noremap = true })
map("i", "<C-e>", "<Esc>ldwi")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "H", "^")
map("v", "L", "$")
map("n", "<Tab>", ":bn <CR>", { silent = true })
map("n", "<S-Tab>", ":bp <CR>", { silent = true })
map("n", "zz", ":let &scrolloff=999-&scrolloff<CR>")
map("n", "<leader>rel", ":set rnu! <CR>")
map("n", "<Esc>", ":noh <CR>", { silent = true })
map("i", "jk", "<Esc>", { silent = true })
