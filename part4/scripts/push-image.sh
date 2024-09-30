# Your Solution

#!/bin/bash

# Logging into Azure Container Registry
az acr login --name sit722acrpart4

# Pushing the book_catalog image
docker push sit722acrpart4.azurecr.io/book_catalog_service:latest

# Pushing the inventory_management image
docker push sit722acrpart4.azurecr.io/inventory_management_service:latest

echo "Docker images for book_catalog and inventory_management have been pushed to Azure Container Registry."
