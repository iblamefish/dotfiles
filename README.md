# Clinton's dotfiles - forked from Mathias’s dotfiles then customised

## Installation

I highly recommend forking [Mathias's dotfiles](https://github.com/mathiasbynens/dotfiles) and customising your own set, but if you think that my customisations are more awesome than unicorns, I have included some brief installation instructions below. For more detailed instructions, take a look at [Mathias's README](https://github.com/mathiasbynens/dotfiles)

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`, with `~/dotfiles` as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/slightlymore/dotfiles.git && cd dotfiles && ./bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
./bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
./bootstrap.sh -f
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/mathiasbynens/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh}
```

To update later on, just run that command again.

## Feedback

Suggestions/improvements
[please suggest upstream](https://github.com/mathiasbynens/dotfiles/issues)!

