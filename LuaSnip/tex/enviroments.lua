local line_begin = require('luasnip.extras.expand_conditions').line_begin

local table_node
table_node = function(args)
  local tabs = {}
  local count
  table = args[1][1]:gsub('%s', ''):gsub('|', '')
  count = table:len()
  for j = 1, count do
    local iNode
    iNode = i(j)
    tabs[2 * j - 1] = iNode
    if j ~= count then
      tabs[2 * j] = t ' & '
    end
  end
  return sn(nil, tabs)
end

local rec_table
rec_table = function()
  return sn(nil, {
    c(1, {
      t { '' },
      sn(nil, { t { '\\\\', '' }, d(1, table_node, { ai[1] }), d(2, rec_table, { ai[1] }) }),
    }),
  })
end

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

  s('table', {
    t '\\begin{tabular}{',
    i(1, '0'),
    t { '}', '' },
    d(2, table_node, { 1 }, {}),
    d(3, rec_table, { 1 }),
    t { '', '\\end{tabular}' },
  }),
}
