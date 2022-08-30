local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt

return {
  ls.s( -- Ignore stylua {{{
    { trig = "ignore", name = "Ignore Stylua" },
    fmt("-- stylua: ignore {}\n{}", {
      ls.c(1, {
        ls.t("start"),
        ls.t("end"),
      }),
      ls.i(0),
    })
  ), --}}}

  ls.s( -- Function {{{
    { trig = "fn", dsce = "create a function" },
    fmt(
      [[
      {} {}({})
        {}
      end
    ]],
      {
        ls.c(1, {
          ls.t("function"),
          ls.t("local function"),
        }),
        ls.i(2),
        ls.i(3),
        ls.i(0),
      }
    )
  ), --}}}
}
