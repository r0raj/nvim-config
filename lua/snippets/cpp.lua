local ls = require("luasnip") --{{{
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

return {
    	s({trig="boiler",dscr="Boilerplate template for basic cpp program with main()"},
            fmt(
			    [[
                    #include <iostream>
                    int main(int argc, char *argv[]) {{
                    {} 
                    return 0;
                    }}
                ]],
			    { i(1) }
		        )
	    ),

        s({trig = "print",dscr = "std cpp print statement WITHOUT line break"},
        {
            t('std::cout<<"'),
            i(1),
            t('";')
        }
        ),

        s({trig = "printl",dscr = "std cpp print statement WITH line break"},
        {
            t('std::cout<<"'),
            i(1),
            t('"<<std::endl;')
        }
        ),
}



