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

# Start all services
docker-compose up -d

# Check status
docker-compose ps

Access

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