return {
  'lervag/vimtex',
  lazy = false,
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    vim.g.tex_flavor = 'latex'
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_quickfix_mode = 0
    vim.g.tex_conceal = 'abdmg'
    vim.cmd [[set conceallevel=1]]
  end,
}
