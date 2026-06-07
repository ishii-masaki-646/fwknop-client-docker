# fwknop-client-docker

A minimal Docker image for [fwknop](https://www.cipherdyne.org/fwknop/) client (Single Packet Authorization).

## Usage

```bash
docker compose run --rm fwknop -A tcp/22 -a YOUR_IP -D TARGET_HOST --key-gen
```

Mount your `~/.fwknoprc` via `docker-compose.yaml`.
