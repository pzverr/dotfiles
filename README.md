# Dotfiles

## Перед установкой

### Шрифты

Для иконок в [lf](https://github.com/gokcehan/lf) и [nvim](https://github.com/neovim/neovim)

Установить [Nerd Fonts](https://www.nerdfonts.com/font-downloads), например <i>JetBrainsMono Nerd Font</i>

Распаковать шрифты в ~/.local/share/fonts (или /usr/share/fonts, для всей системы)

```sh
unzip JetBrainsMono.zip -d ~/.local/share/fonts
```

и выполнить

```sh
fc-cache -f -v
```

### oh my zsh

Фреймворк для управления конфигурацией zsh

[Установка](https://ohmyz.sh/#install)

#### Плагины

[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)

[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)

### NodeJS

[Установка](https://github.com/nodesource/distributions#installation-instructions)

### GoLang

[Установка](https://go.dev/doc/install)

#### gopls - go language server

```sh
go install golang.org/x/tools/gopls@latest
```

### Rust

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### bat

[Скачать\Установить](https://github.com/sharkdp/bat/releases)

### fzf

[Скачать\Установить](https://github.com/junegunn/fzf/releases)

## Установка

```sh
chmod +x installdotfiles
```

```sh
./installdotfiles
```
