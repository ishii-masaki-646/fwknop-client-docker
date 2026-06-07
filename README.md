# fwknop-client-docker

A minimal Docker image for [fwknop](https://www.cipherdyne.org/fwknop/) client (Single Packet Authorization).

## Requirements

- Docker
- `~/.fwknoprc`

## Usage

```bash
docker compose run --rm fwknop -n fumidai-1
docker compose run --rm fwknop -n fumidai-2
docker compose run --rm fwknop -n fumidai-3
```

`~/.fwknoprc` はバインドマウントされる。初回のみイメージのビルドが走り、以降はキャッシュが使われる。

ノックによってホストマシンの IP に対してファイアウォールが開くので、その後は通常通り ssh 等で接続できる。
