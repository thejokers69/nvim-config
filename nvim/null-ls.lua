-- null-ls.lua
local null_ls = require("null-ls")

local sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.diagnostics.eslint_d,
    -- Add more builtins as needed
}

null_ls.setup({
    sources = sources,
    on_attach = function(client, bufnr)
        -- Keymaps for lsp
    end,
})
