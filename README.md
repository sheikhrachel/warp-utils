# warp-utils

warp-utils is a catch-all for utils I use with my [Warp](https://www.warp.dev/) terminal

## Current State

- [themes] - custom warp terminal themes
- [utils] - handy bash scripts
- [zshrc] - general purpose [oh my zsh](https://ohmyz.sh/) settings & aliases

## Themes

Following the steps at Warp's [Custom Themes documentation](https://docs.warp.dev/appearance/custom-themes), the `themes/` folder is a drop-in solution for your `~/.warp/themes/` folder.

From this project's directory, we can create the `~/.warp` directory:
```zsh
mkdir -p ~/.warp
```

and copy this `themes/` folder over to it:

```zsh
cp themes ~/.warp
```

and then, you can use `Cmd + ,` to open up Warp's settings and see the custom themes under `Appearance`.

## Utils

### update git repos

This script can be dropped into any directory that contains a lot of git repos.

It supports repos with either `main` or `master` main branches, and concurrently runs a
```zsh
git switch {one of main | master} && git pull --ff-only
```
across all git repo directories in the parent directory.

## Zshrc

This file is a one-to-one drop in for your `~/.zshrc` file, with a dependency on having installed two things:
- [oh my zsh](https://ohmyz.sh/) (open source zsh config management)
- [spaceship](https://spaceship-prompt.sh/getting-started/) (the zsh shell theme)

## License

MIT

