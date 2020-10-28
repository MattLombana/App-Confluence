# App-Confluence

## First Time Prerequisites

1. `rm ./Data/postgres/.gitkeep`
2. Run [Traefik](https://github.com/MattLombana/App-Traefik)

## Running the Containers

1. Update the following environment variables in [docker-compose.yml](./Docker/docker-compose.yml)
    * `ATL_PROXY_NAME=confluence.example.com`
    * `POSTGRES_PASSWORD=changeme`
2. Update the following line in [docker-compose.yml](./Docker/docker-compose.yml)
    * ``- "traefik.http.routers.confluence.rule=Host(`localhost`)" # Domain Name``
3. Run `docker-compose -f ./Docker/docker-compose.yml up -d`

## First Time Setup

1. Visit <https://your-ip>
2. Add a valid license key
3. Set up "Your Own Database"
    * `Database Type: PostgreSQL`
    * `Setup type: Simple`
    * `Hostname: confluence_db`
    * `Port: 5432`
    * `Database Name: confluencedb`
    * `Username: confluence`
    * `Password: $POSTGRES_PASSWORD` (This should be what you set in the docker-compose file)
4. Load Content by following the wizard.
