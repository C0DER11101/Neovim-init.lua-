# How I set up my  <img alt ="Neovim" width="120px" src="https://upload.wikimedia.org/wikipedia/commons/4/4f/Neovim-logo.svg"/>

This is my current directory structure(which I created along side this very nice [video](https://www.youtube.com/watch?v=J9yqSdvAKXY)).

```
~/.config
|
|____nvim/
     |
     |__init.lua
     |
     |__lua/
     |  |
     |  |__core/
     |     |
     |     |__basic.lua
     |     |
     |     |__plugin_config/
     |     |  |
     |     |  |__init.lua
     |     |  |__lualine.lua
     |     |  |__nvim-tree.lua
     |     |  |__plenary.lua
     |     |  |__telescope.lua
     |     |  |__webDevicon.lua
     |     |
     |     |__plugins.lua
     |
     |__plugin/
        |
        |__packer_compiled.lua
```

## <ins>First</ins>
* We install [`packer.nvim`](https://github.com/wbthomason/packer.nvim#packernvim). I found the [bootstrapping](https://github.com/wbthomason/packer.nvim#bootstrapping) way more easier. Copied the code from the bootstrapping section into `plugins.lua` in `lua/core/`.
* After this, make sure that you require `plugins.lua` in your `nvim/init.lua` file. After this, when you reopen `nvim/init.lua` packer will get installed automatically.

## <ins>Second</ins>
* To install a plugin for neovim, just open `plugins.lua` and type: `use <plugin-name-for-nvim>`(this is shown in the video).
* After adding the plugin names to `plugins.lua`, run `:PackerSync` from the file. The plugin(s) will get installed.
* Just installing is not enough, we need to setup the plugins so that we can use them via neovim's commandline.
* Create a directory `plugin_config` under `lua/core/`, in that create the lua files for each plugin. In each lua file, we will `require` the `setup()` of the plugins. For example: in `telescopse.lua`, we will require the setup of `telescope` as: `require("telescope").setup()`. If you want to you can also define some keymaps. There's more that you can do with these files, but since, it's my first with neovim's plugins, I have done it in a simple manner.

**I faced a problem with [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)**.

The problem was that the icons were not shown when I opened nvim-tree. `nvim-web-devicons` requires [patched fonts](https://www.nerdfonts.com/) so that the icons can be shown. So, I downloaded two fonts `JetBrainsMono Nerd fonts` and `Hack Nerd fonts`.

These will be downloaded as zip files, unzip them to a desired location. Install the fonts of your choice. Then head to your terminal and use the newly downloaded fonts as the terminal fonts. Then open nvim-tree in neovim. This solved the problem for me.

<p align="center">
&#9678; &#9678; &#9678;
</p>
