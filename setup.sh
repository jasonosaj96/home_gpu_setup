#!/bin/bash

echo "Setting up AI Workstation..."

# Check if docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker first."
    exit 1
fi

# Check if docker-compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose not found. Installing..."
    sudo apt update
    sudo apt install -y docker-compose
fi

# Create data directories
mkdir -p open-webui-data ollama-data

# Start services
echo "Starting Docker services..."
docker-compose up -d

echo "Services started successfully!"
echo "Access Open WebUI at: http://localhost:3000"
echo "Access Glances at: http://localhost:61208"
echo "Ollama API at: http://localhost:11434"

# Show service status
docker-compose ps