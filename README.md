# lazyjj-docker

A distroless docker image of lazyjj.

## Installation & Usage

Download the shell script [lazyjj](./lazyjj) into anywhere on your PATH (e.g.
~/.local/bin/), then type `lazyjj` from any jj repo.

This script requires jj installed on your host to work - alternatively, you can manually
launch the container using an explicit directory:

```sh
docker run -it -v /my/repo:/src --workdir /src acarapetis/lazyjj
```

To build from source:

```sh
docker build -t acarapetis/lazyjj .
```
