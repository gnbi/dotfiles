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
    s(
        { trig = "\\above", snippetType = "autosnippet" },
        fmt([[\mathrel{\overset{{\mbox\tiny\text{<>}}}{<>}}]], { i(1), i(2) }, { delimiters = "<>" })
    ),
    s(
        { trig = "dm", snippetType = "autosnippet", priority = 999999999999 },
        fmt(
            [[\[
        <>
        \]<>]],
            { i(1), i(2) },
            { delimiters = "<>" }
        )
    ),
    s({ trig = ":=", snippetType = "autosnippet", priority = 999999999999 }, { t(":=") }),
}
