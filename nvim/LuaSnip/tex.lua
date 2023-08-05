local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
  s({ trig = ";a" },
    {
      t("\\alpha"),
    }
  ),
  s({ trig = "tt", dscr = "Expands 'tt' into '\texttt{}'" },
    {
      t("\\texttt{"), -- remember: backslashes need to be escaped
      i(1),
      t("}"),
    }
  ),
  s({ trig = "eq", dscr = "A LaTeX equation environment" },
    fmta( -- The snippet code actually looks like the equation environment it produces.
      [[
        \begin{equation}
            <>
        \end{equation}
      ]],
      -- The insert node is placed in the <> angle brackets
      { i(0) }
    )
  ),
  s({ trig = "env" },
    fmta(
      [[
        \begin{<>}
            <>
        \end{<>}
      ]],
      {
        i(1),
        i(0),
        rep(1), -- this node repeats insert node i(1)
      }
    )
  ),


}
