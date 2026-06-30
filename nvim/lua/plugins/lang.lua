return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "lua-language-server",
        "stylua",
        "shfmt",
        "shellcheck",

        "pyright",
        "ruff",
        "black",

        "typescript-language-server",
        "prettier",
        "html-lsp",
        "css-lsp",
        "emmet-language-server",

        "json-lsp",
        "yaml-language-server",
        "taplo",
        "marksman",

        "rust-analyzer",
        "gopls",
        "clangd",

        "jdtls",
        "sqls",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}

      vim.list_extend(opts.ensure_installed, {
        "bash",
        "c",
        "cpp",
        "css",
        "dockerfile",
        "go",
        "html",
        "java",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "rust",
        "sql",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      })
    end,
  },
}
