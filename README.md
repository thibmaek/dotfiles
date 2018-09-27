# Dotfiles

<a href="https://www.notion.so/thibmaek/fe2901c724fb4cb1b1f3b0ec983d0634?v=a3bc3c1f87e844beb2991af004ae19d1">
  <img src="https://img.shields.io/badge/check-our%20roadmap-5362F5.svg" alt="Roadmap">
</a>

My personal collection of dotfiles for a macOS bash@4 env.
Comes with an installer script but can of course be copied file by file as well.

## Installing

```shell
$ chmod +x bin/install_repository.sh
$ cd bin && ./install_repository.sh

From github.com:thibmaek/dotfiles
 * branch            master     -> FETCH_HEAD
Already up to date.
This may overwrite existing files in your home directory. Are you sure? (y/n) y
building file list ... done
...

sent 5.12K bytes  received 48 bytes  10.34K bytes/sec
total size is 17.56M  speedup is 3397.49
```

## Updating to the latest version

Just run the install script again, it will detected changed files via the commits and only copy those to your home directory.
