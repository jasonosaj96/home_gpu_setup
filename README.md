# AI Workstation Setup

Docker Compose setup for running Open WebUI, Ollama, and Glances monitoring on your local AI workstation.

## Services

- **Open WebUI**: Web interface for LLMs at `http://localhost:3000`
- **Ollama**: Local LLM server at `http://localhost:11434`
- **Glances**: System monitoring at `http://localhost:61208`

## Quick Start

```bash
# Clone the repository
git clone <your-repo-url>
cd ai-workstation-setup

# Update ollama if needed
docker compose pull ollama

# Start all services
docker-compose up -d

# Check status
docker-compose ps
```

## Managing Ollama Models

### Pull a model
```bash
docker exec -it ollama ollama pull <model-name>

# Or using docker compose
docker compose exec ollama ollama pull <model-name>

# Example: Pull llama3
docker exec -it ollama ollama pull llama3
```

### Update Services
Update all services to latest versions:
```bash
docker compose pull
docker compose up -d
```

Update Ollama only (if you get a version error):
```bash
docker compose pull ollama
docker compose up -d ollama
```

## Access

Open WebUI: http://<your-server-ip>:3000
Glances: http://<your-server-ip>:61208
Ollama API: http://<your-server-ip>:11434
Data Persistence
Open WebUI data: ./open-webui-data
Ollama data: ./ollama-data
Initial Setup
Visit http://<your-server-ip>:3000 to set up Open WebUI
Ollama should be ready automatically at http://<your-server-ip>:11434
Glances monitoring available at http://<your-server-ip>:61208

# Clone on any machine
git clone <your-repo-url>
cd ai-workstation-setup

# Run setup (optional, services will start automatically)
./setup.sh

# Or start manually
docker-compose up -d

# Installing docker
Step 1: Update Software Repositories using the following command on the terminal.

sudo apt update
sudo-apt-update
Step 2: Install Docker using the following command

sudo apt install docker.io -y
sudo-apt-install
Step 3: Enable and start the docker service by using the following commands.

sudo systemctl enable docker --now
Step 4: Check Docker Version.

docker --version




Install the toolkit via [here](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)
so that it is vislsble