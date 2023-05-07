return{
    require("luasnip").parser.parse_snippet(
        { trig = "sum", name = "sum" },
        "\\sum_{n=${1:1}}^{${2:\\infty}} ${3:a_n z^n}"
    ),

    require("luasnip").parser.parse_snippet(
        { trig = "taylor", name = "taylor" },
        "\\sum_{${1:k}=${2:0}}^{${3:\\infty}} ${4:c_$1} (x-a)^$1 $0"
    ),

    require("luasnip").parser.parse_snippet(
        { trig = "lim", name = "limit" }, 
        "\\lim_{${1:n} \\to ${2:\\infty}} "
    ),

    require("luasnip").parser.parse_snippet(
        { trig = "prod", name = "product" },
        "\\prod_{${1:n=${2:1}}}^{${3:\\infty}} ${4:${TM_SELECTED_TEXT}} $0"
    ),

    require("luasnip").parser.parse_snippet(
        { trig = "part", name = "d/dx" },
        "\\frac{\\partial ${1:V}}{\\partial ${2:x}} $0"
    ),
    require("luasnip").parser.parse_snippet(
        { trig = "ddx", name = "d/dx" },
        "\\frac{\\mathrm{d/${1:V}}}{\\mathrm{d${2:x}}} $0"
    ),

    require("luasnip").parser.parse_snippet(
        { trig = "lr", name = "left( right)" },
        "\\left( ${1:${TM_SELECTED_TEXT}} \\right) $0"
    ),

    require("luasnip").parser.parse_snippet(
        { trig = "lr(", name = "left( right)" },
        "\\left( ${1:${TM_SELECTED_TEXT}} \\right) $0"
    ),

    require("luasnip").parser.parse_snippet(
        { trig = "lr|", name = "left| right|" },
        "\\left\\| ${1:${TM_SELECTED_TEXT}} \\right\\| $0"
    ),

    require("luasnip").parser.parse_snippet(
        { trig = "lr{", name = "left{ right}" },
        "\\left\\{ ${1:${TM_SELECTED_TEXT}} \\right\\\\} $0"
    ),

    require("luasnip").parser.parse_snippet(
        { trig = "lr[", name = "left[ right]" },
        "\\left[ ${1:${TM_SELECTED_TEXT}} \\right] $0"
    ),

    require("luasnip").parser.parse_snippet(
        { trig = "lra", name = "leftangle rightangle" },
        "\\left< ${1:${TM_SELECTED_TEXT}} \\right>$0"
    ),

    require("luasnip").parser.parse_snippet(
        { trig = "lrb", name = "left\\{ right\\}" },
        "\\left\\{ ${1:${TM_SELECTED_TEXT}} \\right\\\\} $0"
    ),

    require("luasnip").parser.parse_snippet(
        { trig = "sequence", name = "Sequence indexed by n, from m to infinity" },
        "(${1:a}_${2:n})_{${2:n}=${3:m}}^{${4:\\infty}}"
    ),

        require("luasnip").parser.parse_snippet(
        { trig = "box", name = "boxed"},
        "\\boxed{${1:n}}"
    ),

    require("luasnip").snippet(
        {trig = "ag", dscr = "aligned"},
        fmt(
            [[
                \begin{aligned}
                    <>
                \end{aligned}
            ]],

            { i(1) },
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        { trig = "case", dscr = "cases"},
        fmt(
            [[
                \begin{cases} 
                    <>
                \end{cases}
            ]],

            { i(1, "n") },
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        { trig = "mat", dscr = "matrix"},
        fmt(
            [[
                \begin{matrix} 
                    <>
                \end{matrix}
            ]],

            {i(1, "n")},
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        { trig = "m22", dscr = "matrix22"},
        fmt(
            [[
                \begin{matrix} 
                    <> & <> \\
                    <> & <> \\
                \end{matrix}
            ]],

            {i(1, "n"), i(2, "n"), i(3, "n"), i(4, "n")},
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        { trig = "m33", dscr = "matrix33"},
        fmt(
            [[
                \begin{matrix} 
                    <> & <> & <>\\
                    <> & <> & <>\\
                    <> & <> & <>\\
                \end{matrix}
            ]],

            {i(1, "n"), i(2, "n"), i(3, "n"), i(4, "n"), i(5, "n"), i(6, "n"), i(7, "n"), i(8, "n"), i(9, "n")},
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        { trig = "m44", dscr = "matrix44"},
        fmt(
            [[
                \begin{matrix}
                    <> & <> & <> & <>\\
                    <> & <> & <> & <>\\
                    <> & <> & <> & <>\\
                    <> & <> & <> & <>\\
                \end{matrix}
            ]],

            {i(1, "n"), i(2, "n"), i(3, "n"), i(4, "n"), i(5, "n"), i(6, "n"), i(7, "n"), i(8, "n"), i(9, "n"), i(10, "n"), i(11, "n"), i(12, "n"), i(13, "n"), i(14, "n"), i(15, "n"), i(16, "n")},
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        { trig = "m55", dscr = "matrix55"},
        fmt(
            [[
                \begin{matrix} 
                    <> & <> & <> & <> & <>\\
                    <> & <> & <> & <> & <>\\
                    <> & <> & <> & <> & <>\\
                    <> & <> & <> & <> & <>\\
                    <> & <> & <> & <> & <>\\
                \end{matrix}
            ]],

            {i(1, "n"), i(2, "n"), i(3, "n"), i(4, "n"), i(5, "n"), i(6, "n"), i(7, "n"), i(8, "n"), i(9, "n"), i(10, "n"), i(11, "n"), i(12, "n"), i(13, "n"), i(14, "n"), i(15, "n"), i(16, "n"), i(17, "n"), i(18, "n"), i(19, "n"), i(20, "n"), i(21, "n"), i(22, "n"), i(23, "n"), i(24, "n"), i(25, "n")},
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        {trig = "frac", dscr = "frac"},
        fmt(
            [[
                \frac{<>}{<>}
            ]],

            { i(1, "n"), i(2, "n") },
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        {trig = "sqrt", dscr = "sqrt"},
        fmt(
            [[
                \sqrt[<>]{<>}
            ]],

           { i(1, "n"), i(2, "n") },
            { delimiters = "<>"}
        )
    ),
    
    require("luasnip").snippet(
        {trig = "__", dscr = "_"},
        fmt(
            [[
                _{<>}
            ]],

            { i(1, "n") },
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        {trig = "^^", dscr = "^"},
        fmt(
            [[
                ^{<>}
            ]],

            { i(1, "n") },
            { delimiters = "<>"}
        )
    ),
    require("luasnip").snippet(
        {trig = "limits", dscr = "limits"},
        fmt(
            [[
                \mathop{<>}\limits_{<>}^{<>}
            ]],

            { i(1, "n"), i(2, "n"), i(3, "n") },
            { delimiters = "<>"}
        )
    ),
}
