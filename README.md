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

As an added benefit, we can automate running this script every morning with `cron`.

First, we'll configure our crontab util, which will open up a vim editor
```zsh
crontab -e
```

And then we can paste this in to have the update script run every morning at 7 am
```zsh
 0 7 * * * /bin/zsh /path/to/your/parent/directory/with/upgrade_git_repos.sh
```

> 0 is the minute
> 7 is the hour (in 24-hour context)
> the three `* * *`'s have the job run every day, of every month
> the `/bin/zsh` specifies this running in the zsh shell
> the `/path/to/your/parent/directory/with/upgrade_git_repos.sh` is the full path to the script

## Zshrc

This file is a one-to-one drop in for your `~/.zshrc` file, with a dependency on having installed two things:
- [oh my zsh](https://ohmyz.sh/) (open source zsh config management)
- [spaceship](https://spaceship-prompt.sh/getting-started/) (the zsh shell theme)

## License

MIT

