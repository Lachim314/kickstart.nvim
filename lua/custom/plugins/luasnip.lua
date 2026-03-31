return {
  'L3MON4D3/LuaSnip',
  -- follow latest release.
  version = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!).
  -- build = "make install_jsregexp"
  -- keys = {
  --   {
  --     '<C-K>',
  --     function()
  --       require('luasnip').expand()
  --     end,
  --     desc = 'Expand snippet',
  --     silent = true,
  --   },
  -- },
  opts = {
    enable_autosnippets = true,
    store_selection_keys = '<Tab>',
    update_events = 'TextChanged,TextChangedI',
    store_selection_keys = '<Tab>',
  },
}
