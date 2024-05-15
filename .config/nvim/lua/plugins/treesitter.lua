return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = { "vim", "vimdoc", "query", "c", "lua", "bash", "c_sharp", "cpp", "css", "scss", "git_config", "git_rebase", "gitcommit", "go", "html", "javascript", "typescript", "json", "rust", "sql", "xml"},
            sync_install = false,
        })
end
}
