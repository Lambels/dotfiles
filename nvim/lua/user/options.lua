local options = {
	backup = false,
	fileencoding  = "uft-8",

	number = true,
	relativenumber = true,
	numberwidth = 1,

	tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,

	smartindent = true,

	guicursor = "",

	conceallevel = 0,

    clipboard = "unnamedplus",

    hlsearch = false,
    incsearch = true,

    scrolloff = 8,

    wrap = false,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
