# Practicalli AstroNvim User Configuration

Clojure development and more with [AstroNvim version 4](https://github.com/AstroNvim/AstroNvim)

**NOTE: AstroNvim v4+ configuration only**.  For AstroNvim version 3, use [practicalli/astronvim-config](https://github.com/practicalli/astronvim-config)

This is a new project, so constructive feedback on plugin choice and configuration organisation is most welcome.

> [Practicalli Neovim](https://practical.li/neovim/) describes the Clojure REPL workflow, rich Git and GitHub clients and easy management of plugins and tools using this configuration.


## 🛠️ Installation

- [Kitty Terminal](https://practical.li/engineering-playbook/command-line/kitty-terminal/)
- [Neovim 0.10.x](https://github.com/neovim/neovim/releases/tag/v0.10.0)
- [Practicalli Neovim Configuration](https://practical.li/neovim/configuration/astronvim/) details install AstroNvim and Practicalli AstroNvim Config
- [Clojure install](https://practical.li/clojure/install/)

Clone the Practicalli AstroNvim User Config repository (optionally creating a fork first should customisation be required)

```shell
git clone git@github.com:practicalli/astronvim-user-config $HOME/.config/nvim
```

Run `nvim` command and wait for all plugins to update

```shell
nvim
```

### Multiple Neovim configs

Clone to `$HOME/.config/astronvim` if there is an existing neovim configuration and use the `NVIM_APPNAME=astronvim nvim` command to start Neovim with AstroNvim configuration

Create a shell alias to run the new configuration, e.g. in `.bashrc` or `.zshrc` (or a `shell-aliases` file that eash shell rc file sources)

```config
alias astro="NVIM_APPNAME=astronvim nvim"
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

`lua/plugins/example-config.lua` shows how to modify and extend the AstroNvim configuration.  Existing Plugin configurations can be overridden or added to.  New plugins can be added, often in their own file (to make them easier to be optional).


## Sponsor Practicalli

[![Sponsor Practicalli via GitHub](https://raw.githubusercontent.com/practicalli/graphic-design/live/buttons/practicalli-github-sponsors-button.png)](https://github.com/sponsors/practicalli-johnny/)

All sponsorship funds are used to support the continued development of [Practicalli series of books and videos](https://practical.li/), although most work is done at personal cost and time.

Thanks to [Cognitect](https://www.cognitect.com/), [Nubank](https://nubank.com.br/) and a wide range of other [sponsors](https://github.com/sponsors/practicalli-johnny#sponsors) for your continued support
