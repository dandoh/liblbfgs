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
