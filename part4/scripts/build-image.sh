# Your Solution

#!/bin/bash

# Building the Docker image for book_catalog
docker build -t sit722acrpart4.azurecr.io/book_catalog_service:latest ./book_catalog

# Building the Docker image for inventory_management
docker build -t sit722acrpart4.azurecr.io/inventory_management_service:latest ./inventory_management

echo "Docker images for book_catalog and inventory_management have been built successfully."
