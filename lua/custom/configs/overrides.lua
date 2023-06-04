local M = {}

local function border(hl_name)
  return {
    { "┌", hl_name },
    { "─", hl_name },
    { "┐", hl_name },
    { "│", hl_name },
    { "┘", hl_name },
    { "─", hl_name },
    { "└", hl_name },
    { "│", hl_name },
  }
end

M.treesitter = {
  ensure_installed = {
    -- Vim
    "vim",
    "lua",

    -- Web Dev
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    
    -- Low Level
    "c",
    "cpp",
    "rust",

    -- Markdown
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- Lua
    "lua-language-server",
    "stylua",

    -- Web Dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",
    "deno",

    -- Shell
    "shfmt",
    "shellcheck",

    -- Low Level
    "clangd",
    "clang-format",
    "rust-analyzer",
    "rustfmt",
  },
}

-- git support in nvimtree
M.nvimtree = {
  reload_on_bufenter = true,
  sync_root_with_cwd=false,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root=true,
  },

  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- ui config
M.ui = {
  statusline = {
    separator_style = "block",
    overriden_modules = function()
      return require "custom.plugins.statusline"
    end,
  },
  tabufline = {
    overriden_modules = function()
      return require "custom.plugins.tabufline"
    end,
  },
}

-- telescope
M.telescope = {
  defaults = {
    prompt_prefix = "  ",
    selection_caret = "  ",
    entry_prefix = "  ",
    layout_config = {
      width = 0.50,
      height = 0.80,
    },
    borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
  },
  pickers = {
    find_files = {
      previewer = false,
    },
    live_grep = {
      previewer = false,
    },
    buffers = {
      previewer = false,
    },
  },
}

-- gitsigns
M.gitsigns = {
  signs = {
    -- add = { hl = "DiffAdd", text = "▌", numhl = "GitSignsAddNr" },
    -- change = { hl = "DiffChange", text = "▌", numhl = "GitSignsChangeNr" },
    -- delete = { hl = "DiffDelete", text = "━", numhl = "GitSignsDeleteNr" },
    -- topdelete = { hl = "DiffDelete", text = "━", numhl = "GitSignsDeleteNr" },
    add = { hl = "DiffAdd", text = "+", numhl = "GitSignsAddNr" },
    change = { hl = "DiffChange", text = "~", numhl = "GitSignsChangeNr" },
    delete = { hl = "DiffDelete", text = "-", numhl = "GitSignsDeleteNr" },
    topdelete = { hl = "DiffDelete", text = "-", numhl = "GitSignsDeleteNr" },
  },
}

-- cmp
M.cmp = {
  window = {
    completion = {
      border = border "CmpBorder",
      winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
    },
    documentation = {
      border = border "CmpDocBorder",
    },
  },
}

return M
