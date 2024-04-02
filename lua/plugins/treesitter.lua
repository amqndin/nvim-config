-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      "lua",
      -- add more arguments for adding more treesitter parsers
    })

    opts.indent = {
      enable = true,
      disable = { "jmc", "javascript" },
    }

    vim.treesitter.language.register("javascript", "jmc")
    vim.treesitter.language.register("javascript", "mc")
    vim.treesitter.language.register("python", "bolt")
  end,
}
