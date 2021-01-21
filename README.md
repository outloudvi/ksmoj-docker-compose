# KasumiOJ for docker-compose

## Usage

``` sh
git clone https://git.sr.ht/~outloudvi/ksmoj-docker-compose
cd ksmoj-docker-compose
# Do the configurations as said below
docker-compose up
```

## Configuration

Surely you need to modify the configuration...

### String changes

For all files in `build/`, `config/` and `docker-compose.yml`:

| Change... | To... |
|-----------|-------|
| `ksmoj.localhost` | Your site domain |
| `KasumiOJ Next` | Your website name |
| `KASUMIP73LCCPXlCKljysN` | A random key |
| `SECKEYb82eEwBFDhJ3PVKU` | Another random key |
| `SESSECsGDzkrK4OsbwAkC8` | A third random key |
| `MNTKEYyKABOWALlyxRB3VH` | A fourth random key |
| `ROTPWDZIrKxdDhNmiiyduG` | A fifth random key |

To get a random key, run:

``` sh
echo $(dd if=/dev/urandom | tr -dc A-Za-z0-9 | head -c${1:-16})
```

### SMTP configurations

For `config/api/config.yaml`:

| Change... | To... |
|-----------|-------|
| `noreply@ksmoj.localhost` | Mail sender address |
| `smtp://noreply:kasumi@mail.ksmoj.localhost:587` | A valid SMTP service |