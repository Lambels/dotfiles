local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
        "gopls",
        "tsserver",
        "eslint",
        "sumneko_lua",
        "pyright",
})

lsp.set_preferences({
        suggest_lsp_server = false,
        sing_icons = {
                error = "E",
                warn = "W",
                hint = "H",
                info = "I",
        }
})

-- when attaching an lsp client to a buffer overwrite the following remaps so that when
-- there is no lsp attached to the buffer we let nvim do its best to simulate them.
lsp.on_attach(function(client, bufnr)
        local opts = {buffer = bufnr, remap = false}

        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

