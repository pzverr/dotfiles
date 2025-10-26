-- Core
require "core.configs"
require "core.plugins"
require "core.autocmds"
require "core.keymapping"

-- Themes
require "themes.tokyonight"
-- require("themes.ayu")
-- require "themes.gruvbox"

-- UI
require "plugins.dashboard"
require "plugins.neotree"
require "plugins.bufferline"

-- Syntax
require "plugins.treesitter"

-- Dev tools, LSP
require "plugins.mason"
require "plugins.lsp"
require "plugins.cmp"
require "plugins.none-ls"
require "plugins.dap"

-- Nav, Git etc
require "plugins.telescope"
require "plugins.gitsigns"
require "plugins.aerial"
require "plugins.comment"
