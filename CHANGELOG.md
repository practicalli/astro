# Unreleased

## Added
- snippets: markdown embedded code example - 4clojure
- community: json pack to format api responses, etc.

## Changed
- practicalli: disable neovim providers for node, perl, python, ruby
- snippets: fixed placeholder syntax without labels


# 2024-08-24 Refactor Clojure Which-key mappings

## Added
- after: conjure menu group names for clojure filetype plugin
- dev: dont ignore `after` directory pattern in .gitignore

# 2024-07-26 Initial release

## Added
- community: enable and import clojure pack
- readme: basic install instructions
- readme: use astronvim4 as the config location
- dev: gitignore inclusive patterns
- lazy: include zipPlugin to support Clojure LSP jar analysis
- plugin: astrocore enable spell & wrap options, set guifont for neovide
- community: add everforest theme and set as default
- community: ccc-nvim color picker and highlighter
- mappings: additional buffer key mappings
- mappings: additional telescope key mappings, project & file browser plugin
- mappings: additional telescope key mappings & file browser plugin
- community: nvim-surround motion plugin to support surrounding text
- community: rainbow-delimiters regexexplainer visual-multi editor support plugins
- community: spectre search and replace plugin
- community: neogit interactive git client & key mapping overrides
- mapping: set VM_leader for visual-multi plugin for multiple cursors
- community: noice UI replacement for messages, popups & command line
- mapping: add `SPC W` save as key binding prompting for file name
- snippets: luasnip plugin and json format snippets
- plugin: practicalli `fd` binding for `ESC` and startup banner
- plugin: example plugin file
- plugin: Octo github issues and pull requests
- mapping: add `Z z` to enable Zen mode distraction free editing
- clojure: conjure, paredit, parinfer, parpar & nvim-treesitter-sexp plugins
- neo-tree: override examples, show hidden in alternate style
- plantuml: key mapping to call out to plantuml jar or binary
- example-config: add new plugins & override existing plugin config
- clojure: which-key mappings for nvim-treesitter-sexp structural editing
- practicalli: move neovim options and key mappings from astrocore.lua
- practicalli: set everforest theme, remove from astroui.lua
- community: local fork to test clojure pack changes
- community: import clojure pack, add practicalli config overrides
- github: Octo plugin with <leader>gh keymaps
- community: `lsp_doc_border = true` adds border to hover docs & signature help
- readme: refactor install details & multiple config setup
- neogit: disable_signs = true otherwise fold signs duplicated
- community: disable project.nvim in favor of AstroNvim router
- github: Gists plugin and key maps
- practicalli: conjure eval comment & hightlight options
- community: neovide recipes for scaling functions & key mappings
- termux: use local lsp language servers when mason install not supported
- termux: disable mason from installing the lua_ls language server
- termux: neogit v0.0.1 for nvim 0.9.x support
- termux: conditional check for OS_TERMUX to load config
- practicalli: move to `user-practicalli.lua` to load config last
- practicalli: add conditional using `PRACTICALLI_ASTRO` environment variable
- termux: `clojure_lsp` server excluded from mason install
- termux: comment support for neovim 0.9.x
- community: flatten-nvm to open files and command output in existing neovim instance
- practicalli: add trim plugin to automatically remove whitespace
- community: example disable of plugins from an astro community pack
- practicalli: which-key vertical `helix` menu layout option
- practicalli: conjure sub-menus for which-key
- community: telescope live grep args search via file name pattern

## Changed
- readme: expand on description and use
- practicalli: conjure global options for practicalli workflow
- astrocore: reset file to original config from template
- clojure: add nvim-treesitter-sexp and comment paredit plugins
- community: 2 second navigation message timeout (nvim-notify)
- practicalli: include AstroCommunity options for neogit, noice & zen-mode
- practicalli: neogit key works consistently when set in plugin config
- termux: comment neogit plugin pin, neovim 0.10.0 released for termux
- practicalli: neogit key works consistently when set in plugin config
- practicalli: updated config for better-escape.nvim plugin rewrite
- community: import spectre from search category (was project)
- astro: capitalise Leader and LocalLeader within key mapping configuration.
