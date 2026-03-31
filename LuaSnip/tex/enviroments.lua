local line_begin = require('luasnip.extras.expand_conditions').line_begin

return {
  s({ trig = 'h1', dscr = 'Top-level section', condition = line_begin }, fmta([[\section{<>}]], { i(1) })),

  s(
    { trig = 'new', dscr = 'A generic new environmennt', condition = line_begin },
    fmta(
      [[
      \begin{<>}
          <>
      \end{<>}
    ]],
      {
        i(1),
        i(2),
        rep(1),
      }
    )
  ),
  s(
    { trig = 'tii', dscr = "Expands 'tii' into LaTeX's textit{} command." },
    fmta('\\textit{<>}', {
      d(1, get_visual),
    })
  ),
}
