return{
    require("luasnip").snippet(
        {trig = "bd", dscr = "boldsymbol"},
        fmt(
            [[
                \boldsymbol{<>}
            ]],

            { i(1, "n") },
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        {trig = "mb", dscr = "mathbf"},
        fmt(
            [[
                \mathbf{<>}
            ]],

            { i(1, "n") },
            { delimiters = "<>" }
        )
    ),

    require("luasnip").snippet(
        {trig = "color", dscr = "textcolor"},
        fmt(
            [[
                \textcolor{<>}{<>}
            ]],

            { i(1, "n"), i(2, "n") },
            { delimiters = "<>" }
        )
    ),

    require("luasnip").snippet(
        {trig = "verb", dscr = "verb"},
        fmt(
            [[
                \verb|<>|
            ]],

            { i(1, "n") },
            { delimiters = "<>" }
        )
    )
}
