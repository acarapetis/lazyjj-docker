# lazyjj-docker

A distroless docker image of lazyjj, and a wrapper script to run it easily.

## Installation

Download the bash script [lazyjj](./lazyjj) into anywhere on your PATH (e.g.
~/.local/bin/), e.g.

```sh
curl -f https://raw.githubusercontent.com/acarapetis/lazyjj-docker/refs/heads/main/lazyjj \
    -o ~/.local/bin/lazyjj && chmod +x ~/.local/bin/lazyjj
```

## Usage
Type `lazyjj` from any jj repo.

This script requires jj installed on your host to work - alternatively, you can manually
launch the container using an explicit directory:

```sh
docker run -it -v /my/repo:/src --workdir /src acarapetis/lazyjj
```

To build from source, clone this repo and run:

```sh
docker build -t acarapetis/lazyjj .
```


## Limitations

Only designed to work with jj user config stored in $XDG_CONFIG_HOME/.config: if you're
using ~/.jjconfig.toml, please move it to ~/.config/jj/config.toml instead.
