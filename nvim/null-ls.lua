-- null-ls.lua
local null_ls = require("null-ls")

local sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.flake8,
    -- Add more builtins as needed
}

null_ls.setup({
    sources = sources,
    on_attach = function(client, bufnr)
        -- Keymaps for lsp
        if client.resolved_capabilities.document_formatting then
            vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", { noremap = true, silent = true })
        end
        if client.resolved_capabilities.document_range_formatting then
            vim.api.nvim_buf_set_keymap(bufnr, "v", "<leader>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", { noremap = true, silent = true })
        end
    end,
})
