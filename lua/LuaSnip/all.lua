-- Place this in ${HOME}/.config/nvim/LuaSnip/all.lua
return {
  -- A snippet that expands the trigger "hi" into the string "Hello, world!".
  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.
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

    require("luasnip").snippet(
        { trig = ";a", dscr = "alpha" },
        { t("\\alpha") }
    ),

    require("luasnip").snippet(
        { trig = ";b", dscr = "beta" },
        { t("\\beta") }
    ),

    require("luasnip").snippet(
        { trig = ";g", dscr = "gamma" },
        { t("\\gamma") }
    ),

    require("luasnip").snippet(
        { trig = ";d", dscr = "delta" },
        { t("\\delta") }
    ),

    require("luasnip").snippet(
        { trig = ";e", dscr = "epsilon" },
        { t("\\epsilon") }
    ),
    
    require("luasnip").snippet(
        { trig = ";z", dscr = "zeta" },
        { t("\\zeta") }
    ),

    require("luasnip").snippet(
        { trig = ";et", dscr = "eta" },
        { t("\\eta") }
    ),

    require("luasnip").snippet(
        { trig = ";th", dscr = "theta" },
        { t("\\theta") }
    ),

    require("luasnip").snippet(
        { trig = ";i", dscr = "iota" },
        { t("\\iota") }
    ),

    require("luasnip").snippet(
        { trig = ";k", dscr = "kappa" },
        { t("\\kappa") }
    ),

    require("luasnip").snippet(
        { trig = ";l", dscr = "lambda" },
        { t("\\lambda") }
    ),

    require("luasnip").snippet(
        { trig = ";m", dscr = "mu" },
        { t("\\mu") }
    ),

    require("luasnip").snippet(
        { trig = ";n", dscr = "nu" },
        { t("\\nu") }
    ),

    require("luasnip").snippet(
        { trig = ";x", dscr = "xi" },
        { t("\\xi") }
    ),

    require("luasnip").snippet(
        { trig = ";om", dscr = "omicron" },
        { t("\\omicron") }
    ),

    require("luasnip").snippet(
        { trig = ";p", dscr = "pi" },
        { t("\\pi") }
    ),

    require("luasnip").snippet(
        { trig = ";r", dscr = "rho" },
        { t("\\rho") }
    ),

    require("luasnip").snippet(
        { trig = ";s", dscr = "sigma" },
        { t("\\sigma") }
    ),

    require("luasnip").snippet(
        { trig = ";t", dscr = "tau" },
        { t("\\tau") }
    ),

    require("luasnip").snippet(
        { trig = ";u", dscr = "upsilon" },
        { t("\\upsilon") }
    ),

    require("luasnip").snippet(
        { trig = ";f", dscr = "phi" },
        { t("\\phi") }
    ),

    require("luasnip").snippet(
        { trig = ";vf", dscr = "varphi"},
        { t("\\varphi")}
    ),

    require("luasnip").snippet(
        { trig = ";h", dscr = "chi" },
        { t("\\chi") }
    ),

    require("luasnip").snippet(
        { trig = ";ps", dscr = "psi" },
        { t("\\psi") }
    ),

    require("luasnip").snippet(
        { trig = ";o", dscr = "omega" },
        { t("\\omega") }
    ),

    require("luasnip").snippet(
        { trig = "---", dscr = "---"},
        { t("----------------------------------------")}
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
                \left<> \begin{matrix} 
                    <>
                \end{matrix} \right<>
            ]],

            {i(1, "("), i(2, "n"), i(3, ")")},
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
                \end{matrix} \right<>
            ]],

            {i(1, "("), i(2, "n"), i(3, "n"), i(4, "n"), i(5, "n"), i(6, ")")},
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
                \end{matrix} \right<>
            ]],

            {i(1, "("), i(2, "n"), i(3, "n"), i(4, "n"), i(5, "n"), i(6, "n"), i(7, "n"), i(8, "n"), i(9, "n"), i(10, "n"), i(11, ")")},
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
                \end{matrix} \right<>
            ]],

            {i(1, "("), i(2, "n"), i(3, "n"), i(4, "n"), i(5, "n"), i(6, "n"), i(7, "n"), i(8, "n"), i(9, "n"), i(10, "n"), i(11, "n"), i(12, "n"), i(13, "n"), i(14, "n"), i(15, "n"), i(16, "n"), i(17, "n"), i(18, ")")},
            { delimiters = "<>"}
        )
    ),

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
        {trig = "_", dscr = "_"},
        fmt(
            [[
                _{<>}
            ]],

            { i(1, "n") },
            { delimiters = "<>"}
        )
    ),

    require("luasnip").snippet(
        {trig = "^", dscr = "^"},
        fmt(
            [[
                ^{<>}
            ]],

            { i(1, "n") },
            { delimiters = "<>"}
        )
    ),


}


