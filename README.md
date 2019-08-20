# L-BFGS Solver
- Fork from [https://github.com/chokkan/liblbfgs]()

## Prerequisite
- MacOS: 
    - `brew install autoconf automake libtool`
- Ubuntu:
    - `apt install automake libtool libtool-bin`

## Installation
- `./autogen.sh`
- `./configure`
- `make`
- `make install` (might need `sudo make install` because the header need to be copied to `usr/local/lib`
- Ensure `/usr/local/lib` is in your `$LB_LIBRARY_PATH` by adding this to 
your `~/.bashrc` (or `~/.zshrc` if you're using zsh):
    - `export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib"`
