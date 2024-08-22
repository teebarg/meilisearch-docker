# Define variables
COMPOSE=docker compose

# Start Meilisearch service
up:
	$(COMPOSE) up -d

# Stop the service
down:
	$(COMPOSE) down

# View logs
logs:
	$(COMPOSE) logs -f

# Restart the service
restart:
	$(COMPOSE) down
	$(COMPOSE) up -d

# Build the images
build:
	$(COMPOSE) build

# Remove stopped containers and unused volumes
clean:
	$(COMPOSE) down -v
	$(COMPOSE) rm -f
