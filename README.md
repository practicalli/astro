# Practicalli Astro Configuration

Clojure development and more with [AstroNvim version 4](https://github.com/AstroNvim/AstroNvim)

> [Practicalli Neovim](https://practical.li/neovim/) describes the Clojure REPL workflow, rich Git and GitHub clients and easy management of plugins and tools using this configuration.


## 🛠️ Installation

- [Kitty Terminal](https://practical.li/engineering-playbook/command-line/kitty-terminal/)
- [Neovim 0.10.x](https://github.com/neovim/neovim/releases/tag/v0.10.0) (0.9.x will also work)
- [Practicalli Neovim Configuration](https://practical.li/neovim/configuration/astronvim/) details install AstroNvim and Practicalli Astro Config
- [Clojure install](https://practical.li/clojure/install/)

Clone the Practicalli Astro repository (optionally creating a fork first should customisation be required)

```shell
git clone git@github.com:practicalli/astro $HOME/.config/nvim
```

Run `nvim` command and wait for all plugins to update

```shell
nvim
```

### Multiple Neovim configs

Clone to `$HOME/.config/astronvim` if there is an existing neovim configuration and use the `NVIM_APPNAME=astronvim nvim` command to start Neovim with AstroNvim configuration

Create a shell alias to run the new configuration, e.g. in `.bashrc` or `.zshrc` (or a `shell-aliases` file that each shell rc file sources)

```config
alias astro="NVIM_APPNAME=astro nvim"
```

Load the alias into the current shell (or open a new shell)

```shell
source shell-aliases
```

Run `astro` and wait for the plugins to update

```shell
astro
```

## Configuration

The configuration is based on the AstroNvim template config.  Changes to existing file have been kept to a minimum, except for `lua/community.lua` which has additional plugins from the AstroNvim Community repository.

`lua/plugins/example-config.lua` shows how to modify and extend the AstroNvim configuration.  This config is not loaded by defult.

Create your own `lua/plugins/user-name.lua` file to

- override default plugin configuration
- add new plugins (or create a new file for a plugin to make them easier to be optional) or by customising the `lua/plugins/user.lua` file.

> Lua files in the `lua/plugins` directory are loaded in alphabetical order

## Sponsor Practicalli

[![Sponsor Practicalli via GitHub](https://raw.githubusercontent.com/practicalli/graphic-design/live/buttons/practicalli-github-sponsors-button.png)](https://github.com/sponsors/practicalli-johnny/)

All sponsorship funds are used to support the continued development of [Practicalli series of books and videos](https://practical.li/), although most work is done at personal cost and time.

Thanks to [Cognitect](https://www.cognitect.com/), [Nubank](https://nubank.com.br/) and a wide range of other [sponsors](https://github.com/sponsors/practicalli-johnny#sponsors) for your continued support
