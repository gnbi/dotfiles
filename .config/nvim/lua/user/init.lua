return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin",   -- remote to use
    channel = "stable",  -- 'stable' or 'nightly'
    version = "latest",  -- 'latest', tag name, or regex search like 'v1.*' to only do updates before v2 (STABLE ONLY)
    branch = "nightly",  -- branch name (NIGHTLY ONLY)
    commit = nil,        -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil,   -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false,   -- automatically quit the current session after a successful update
  },

  -- Set colorscheme to use
  colorscheme = "rose-pine",

  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  lsp = {
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = false, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- 'go',
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- 'python',
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- 'lua_ls',
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      "rust_analyzer",
    },
  },

  -- Configure require('lazy').setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  polish = function() end,
}