# Meilisearch Docker Project

This project sets up and deploys Meilisearch using Docker and Docker Compose. It includes a `docker-compose.yml` file for easy orchestration, a `Makefile` for streamlined command execution, and a `.gitignore` file to manage what gets committed to version control.

## Features

* **Meilisearch**: A powerful, fast, and easy-to-use search engine.
* **Docker & Docker Compose**: For containerized deployment and management.
* **Makefile**: Simplified commands for managing the lifecycle of the service.
* **Persistent Storage**: Data stored in Docker volumes to survive container restarts.

## Prerequisites

* **Docker**: Ensure Docker is installed on your system. Install Docker
* **Docker Compose**: Make sure Docker Compose is installed. Install Docker Compose

## Setup

1. Clone the Repository

```bash
git clone https://github.com/yourusername/meilisearch-docker.git
cd meilisearch-docker
```
2. Configure Environment Variables

Create a `.env` file in the root directory to store your environment variables:

```bash
MEILI_MASTER_KEY=your_master_key_here
```

3. Build and Start the Services

Use the `Makefile` to build and start the services:

```bash
make up
```

This command will:

* Build the Docker image for Meilisearch (if needed).
* Start the Meilisearch service in the background.

4. Access Meilisearch

Once the service is up and running, you can access Meilisearch at:

```bash
http://localhost:7700
```

5. Stop the Services

To stop the Meilisearch service, run:

```bash
make down
```

## Project Structure

```bash
meilisearch-docker/
├── docker-compose.yml    # Docker Compose configuration
├── Dockerfile            # Dockerfile for Meilisearch (optional if using a pre-built image)
├── Makefile              # Makefile for managing Docker commands
├── .env                  # Environment variables (not committed to version control)
├── .gitignore            # Files and directories to ignore in version control
└── README.md             # This README file
```

## Notes

* **Persistent Storage**: The data stored by Meilisearch is persisted in the `meili_data` Docker volume.
* **Environment Variables**: Sensitive data like the `MEILI_MASTER_KEY` should be kept secure and not committed to version control. Use environment variables for this purpose.

## Contributing

Feel free to fork this repository, create a new branch, and submit a pull request if you would like to contribute.

## License

This project is licensed under the MIT License.
