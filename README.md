# fwknop-client-docker

A minimal Docker image for [fwknop](https://www.cipherdyne.org/fwknop/) client (Single Packet Authorization).

## Requirements

- Docker
- `~/.fwknoprc`

## Setup

```bash
git clone https://github.com/ishii-masaki-646/fwknop-client-docker.git
ln -s /path/to/fwknop-client-docker/scripts/fwknop.sh /usr/local/bin/fwknop
```

PATH の通った場所に symlink を張ることで、任意のディレクトリから実行できる。

## Usage

```bash
fwknop -n fumidai-1
fwknop -n fumidai-2
fwknop -n fumidai-3
```

初回のみ Docker イメージの pull が走り、以降はキャッシュが使われる。

ノックによってホストマシンの IP に対してファイアウォールが開くので、その後は通常通り ssh 等で接続できる。
