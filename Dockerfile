# Use the official Meilisearch image from Docker Hub
FROM getmeili/meilisearch:latest

# Expose the default Meilisearch port
EXPOSE 7700

# Set an entrypoint for the Meilisearch server
ENTRYPOINT ["./meilisearch"]

# Run the Meilisearch server
CMD ["--http-addr", "0.0.0.0:7700"]
