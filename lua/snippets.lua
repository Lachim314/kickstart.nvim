-- vim.cmd [[
-- " Use Tab to expand and jump through snippets
-- imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
-- smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'
--
-- " Use Shift-Tab to jump backwards through snippets
-- imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
-- smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
-- ]]

local ls = require 'luasnip'
-- local s = ls.snippet
-- local sn = ls.snippet_node
-- local t = ls.text_node
-- local i = ls.insert_node
-- local f = ls.function_node
-- local d = ls.dynamic_node
-- local fmt = require('luasnip.extras.fmt').fmt
-- local fmta = require('luasnip.extras.fmt').fmta
-- local rep = require('luasnip.extras').rep

local ls = require 'luasnip'

-- vim.keymap.set({ 'i' }, '<C-K>', function()
--   ls.expand()
-- end, { silent = true, desc = 'LuaSnip: Expand the current snippet' })
-- vim.keymap.set({ 'i', 's' }, '<C-L>', function()
--   ls.jump(1)
-- end, { silent = true, desc = 'LuaSnip: Jump to the next node' })
-- vim.keymap.set({ 'i', 's' }, '<C-J>', function()
--   ls.jump(-1)
-- end, { silent = true, desc = 'LuaSnip: Jump to the previous node' })
--
vim.keymap.set({ 'i', 's' }, '<C-J>', function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true, desc = 'LuaSnip: Change to next choice in choice node' })

require('luasnip.loaders.from_lua').lazy_load { paths = '~/.config/nvim/LuaSnip/' }
