local in_mathzone = function()
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  -- Examples of Greek letter snippets, autotriggered for efficiency
  s({ trig = ';a', snippetType = 'autosnippet' }, {
    t '\\alpha',
  }),
  s({ trig = ';b', snippetType = 'autosnippet' }, {
    t '\\beta',
  }),
  s({ trig = ';g', snippetType = 'autosnippet' }, {
    t '\\gamma',
  }),
  s(
    { trig = '([%a%)%]%}])00', regTrig = true, wordTrig = false, snippetType = 'autosnippet' },
    fmta('<>_{<>}', {
      f(function(_, snip)
        return snip.captures[1]
      end),
      t '0',
    })
  ),
  s(
    { trig = 'ff', condition = in_mathzone },
    fmta('\\frac{<>}{<>}', {
      i(1),
      i(2),
    })
  ),
}
