# NVIM

Neovim Lua configuration with common editor key bindings and native LSP support.

* Native LSP configurations: [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* Auto LSP configurator: [mason.nvim](https://github.com/williamboman/mason.nvim)
* LSP autocomplete support: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* Auto detect indentation: [vim-sleuth](https://github.com/tpope/vim-sleuth)
* Line indentation guides: [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
* Git signs in number column: [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

## Installation

```
git clone --recurse-submodules https://github.com/yuriusudev/nvim.git $HOME/.config/nvim
```

### Update

```
git pull
git submodule update --recursive --remote
```

> [!Tip]
> Run [`:Mason`](https://github.com/williamboman/mason.nvim#commands) to manually select and install native Language Servers.
> or configure [`mason-lspconfig`](https://github.com/williamboman/mason-lspconfig.nvim#default-configuration) to automatically install supported Language Servers.

## Keymaps

> [!Tip]
> Default `<Leader>` key is mapped as `<Space>` key.

### Editor

<table>
  <tr>
    <th>Mode(s)</th>
    <th>Key</th>
    <th>Function</th>
  </tr>
  <tr>
    <td><code>n</code> • <code>i</code> • <code>v</code></td>
    <td><kbd>Ctrl</kbd> + <kbd>w</kbd></td>
    <td>Close the current buffer</td>
  </tr>
  <tr>
    <td><code>n</code> • <code>i</code> • <code>v</code></td>
    <td><kbd>Ctrl</kbd> + <kbd>s</kbd></td>
    <td>Save the current buffer content</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Tab</kbd></td>
    <td>Switch to the next tab buffer</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Shift</kbd> + <kbd>Tab</kbd></td>
    <td>Switch to the previous tab buffer</td>
  </tr>
  <tr>
    <td><code>v</code></td>
    <td><kbd>Tab</kbd></td>
    <td>Increase indent of current selected line(s)</td>
  </tr>
  <tr>
    <td><code>v</code></td>
    <td><kbd>Shift</kbd> + <kbd>Tab</kbd></td>
    <td>Decrease indent of current selected line(s)</td>
  </tr>
  <tr>
    <td><code>n</code> • <code>i</code> • <code>v</code></td>
    <td><kbd>Del</kbd></td>
    <td>Delete key does not yank characters</td>
  </tr>
  <tr>
    <td><code>n</code> • <code>i</code> • <code>v</code></td>
    <td><kbd>Ctrl</kbd> + <kbd>x</kbd></td>
    <td>Cut the current line or selected texts</td>
  </tr>
  <tr>
    <td><code>n</code> • <code>i</code> • <code>v</code></td>
    <td><kbd>Ctrl</kbd> + <kbd>c</kbd></td>
    <td>Copy the current line or selected texts</td>
  </tr>
  <tr>
    <td><code>n</code> • <code>i</code> • <code>v</code></td>
    <td><kbd>Ctrl</kbd> + <kbd>v</kbd></td>
    <td>Paste text from clipboard</td>
  </tr>
  <tr>
    <td><code>n</code> • <code>i</code> • <code>v</code></td>
    <td><kbd>Ctrl</kbd> + <kbd>a</kbd></td>
    <td>Select all text</td>
  </tr>
  <tr>
    <td><code>n</code> • <code>i</code> • <code>v</code></td>
    <td><kbd>Ctrl</kbd> + <kbd>z</kbd></td>
    <td>Undo last action</td>
  </tr>
  <tr>
    <td><code>n</code> • <code>i</code> • <code>v</code></td>
    <td><kbd>Ctrl</kbd> + <kbd>y</kbd></td>
    <td>Redo last undo action</td>
  </tr>
  <tr>
    <td><code>n</code> • <code>i</code> • <code>v</code></td>
    <td><kbd>Shift</kbd> + <kbd>←</kbd> <kbd>↑</kbd> <kbd>↓</kbd> <kbd>→</kbd></td>
    <td>Select text using arrow keys</td>
  </tr>
</table>

### LSP

<table>
  <tr>
    <th>Mode(s)</th>
    <th>Key</th>
    <th>Function</th>
  </tr>
  <tr>
    <td><code>i</code></td>
    <td><kbd>Enter</kbd></td>
    <td>Confirm autocomplete selection</td>
  </tr>
  <tr>
    <td><code>i</code></td>
    <td><kbd>Esc</kbd></td>
    <td>Closes autocomplete dialog (does not return to <code>n</code>ormal mode)</td>
  </tr>
  <tr>
    <td><code>i</code></td>
    <td><kbd>Tab</kbd></td>
    <td>Select next item in autocomplete list</td>
  </tr>
  <tr>
    <td><code>i</code></td>
    <td><kbd>Shift</kbd> + <kbd>Tab</kbd></td>
    <td>Select previous item in autocomplete list</td>
  </tr>
  <tr>
    <td><code>i</code></td>
    <td><kbd>Shift</kbd> + <kbd>↑</kbd> <kbd>↓</kbd></td>
    <td>Scrolls up or down autocomplete documentation dialog</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>←</kbd> <kbd>→</kbd></td>
    <td>Switch between previous and next buffers</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>↑</kbd> <kbd>↓</kbd></td>
    <td>Shows previous or next diagnostic dialog</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>?</kbd></td>
    <td>Shows diagnostic dialog for the current highlighted symbol</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>/</kbd></td>
    <td>Shows diagnostic list buffer</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>r</kbd></td>
    <td><code>R</code>ename Symbol</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>c</kbd> + <kbd>a</kbd></td>
    <td><code>C</code>ode <code>A</code>ctions</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>f</kbd></td>
    <td><code>F</code>ormat Code</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>g</kbd> + <kbd>D</kbd></td>
    <td><code>G</code>oto <code>D</code>eclaration</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>g</kbd> + <kbd>r</kbd></td>
    <td><code>G</code>oto <code>R</code>eferences</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>g</kbd> + <kbd>i</kbd></td>
    <td><code>G</code>oto <code>I</code>mplementation</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>g</kbd> + <kbd>d</kbd></td>
    <td><code>G</code>oto <code>D</code>efinition</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>g</kbd> + <kbd>t</kbd></td>
    <td><code>G</code>oto <code>T</code>ype Definition</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>d</kbd></td>
    <td>Hover <code>D</code>ocumentation</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>s</kbd> + <kbd>h</kbd></td>
    <td><code>S</code>ignature <code>H</code>elp</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>w</kbd> + <kbd>a</kbd></td>
    <td><code>W</code>orkspace <code>A</code>dd Folder</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>w</kbd> + <kbd>r</kbd></td>
    <td><code>W</code>orkspace <code>R</code>emove Folder</td>
  </tr>
  <tr>
    <td><code>n</code></td>
    <td><kbd>Space</kbd> + <kbd>w</kbd> + <kbd>l</kbd></td>
    <td><code>W</code>orkspace <code>L</code>ist Folders</td>
  </tr>
</table>
