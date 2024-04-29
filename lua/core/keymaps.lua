--------------------------
-----Map Key Bindings----- 
--------------------------
local function map(m,k,v,opts)
	local options = {silent = true}
	if opts then
		options = vim.tbl_extend("force",options,opts)
	end
	vim.keymap.set(m,k,v,options)
end

--Split tab navigation
map("n","<C-h>","<C-w>h")
map("n","<C-j>","<C-w>j")
map("n","<C-k>","<C-w>k")
map("n","<C-l>","<C-w>l")

--Set leader key
vim.g.mapleader = " "

