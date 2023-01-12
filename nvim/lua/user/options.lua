local options = {
	backup = false,
	fileencoding  = "uft-8",
	number = true,
	relativenumber = true,
	tabstop = 4,
	numberwidth = 1,
	expandtab = true,
	smartindent = true,
	guicursor = "",
	conceallevel = 0,
    clipboard = "unnamedplus",
    wrap = false,
    guifont = "monospace:h17",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
