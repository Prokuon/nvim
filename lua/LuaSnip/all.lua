-- Place this in ${HOME}/.config/nvim/LuaSnip/all.lua
return {
  -- A snippet that expands the trigger "hi" into the string "Hello, world!".
    require("luasnip").snippet(
        { trig = "hi" },
        { t("Hello, world!") }
    ),

  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.
    require("luasnip").snippet(
        { trig = "foo" },
        { t("Another snippet.") }
    ),
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
        { trig = "limsup", name = "limsup" },
        "\\limsup_{${1:n} \\to ${2:\\infty}} "
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
        { trig = "box", name = "box"},
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
        { trig = "mat", dscr = "matrix"},
        fmt(
            [[
                \left<> \begin{matrix} 
                    <>
                \end{matrix} \right<>"
            ]],

            {i(1, "["), i(2, "n"), i(3, "]")},
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        { trig = "22", dscr = "matrix22"},
        fmt(
            [[
                \left<> \begin{matrix} 
                    <> & <> \\
                    <> & <> \\
                \end{matrix} \right<>"
            ]],

            {i(1, "["), i(2, "n"), i(3, "n"), i(4, "n"), i(5, "n"), i(6, "]")},
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        { trig = "33", dscr = "matrix33"},
        fmt(
            [[
                \left<> \begin{matrix} 
                    <> & <> & <>\\
                    <> & <> & <>\\
                    <> & <> & <>\\
                \end{matrix} \right<>"
            ]],

            {i(1, "["), i(2, "n"), i(3, "n"), i(4, "n"), i(5, "n"), i(6, "n"), i(7, "n"), i(8, "n"), i(9, "n"), i(10, "n"), i(11, "]")},
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        { trig = "44", dscr = "matrix44"},
        fmt(
            [[
                \left<> \begin{matrix} 
                    <> & <> & <> & <>\\
                    <> & <> & <> & <>\\
                    <> & <> & <> & <>\\
                    <> & <> & <> & <>\\
                \end{matrix} \right<>"
            ]],

            {i(1, "["), i(2, "n"), i(3, "n"), i(4, "n"), i(5, "n"), i(6, "n"), i(7, "n"), i(8, "n"), i(9, "n"), i(10, "n"), i(11, "n"), i(12, "n"), i(13, "n"), i(14, "n"), i(15, "n"), i(16, "n"), i(17, "n"), i(18, "]")},
            { delimiters = "<>"}
        )
    ),

}
