# 🚀 AI Workstation Setup

A complete Docker Compose setup for running Open WebUI, Ollama, and Glances monitoring on your local AI workstation.

---

## 📦 Services

| Service | Description | Access URL |
|---------|-------------|------------|
| **Open WebUI** | Web interface for LLMs | `http://localhost:3000` |
| **Ollama** | Local LLM server | `http://localhost:11434` |
| **Netdata** | Real-time system & GPU monitoring | `http://localhost:19999` |

---

## ⚡ Quick Start

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

## 🌐 Access Points

Once services are running, access them at:

- **Open WebUI**: `http://<your-server-ip>:3000`
- **Netdata Dashboard**: `http://<your-server-ip>:19999`
- **Ollama API**: `http://<your-server-ip>:11434`

---

## 💾 Data Persistence

Your data is stored locally in the following directories:

- **Open WebUI data**: `./open-webui-data`
- **Ollama models**: `./ollama-data`

These directories ensure your configurations and downloaded models persist across container restarts.

---

## 🎯 Initial Setup

1. **Visit Open WebUI**: Navigate to `http://<your-server-ip>:3000` to complete the initial setup
2. **Ollama Ready**: The Ollama service will be automatically available at `http://<your-server-ip>:11434`
3. **Monitor System**: Check real-time system and GPU metrics at `http://<your-server-ip>:19999`

---

## 🔧 Installation

### Method 1: Using Setup Script

```bash
# Clone on any machine
git clone <your-repo-url>
cd ai-workstation-setup

# Run setup script
./setup.sh
```

### Method 2: Manual Start

```bash
# Start services manually
docker-compose up -d
```

---

## 🐳 Installing Docker

### Step 1: Update Software Repositories

```bash
sudo apt update
```

### Step 2: Install Docker

```bash
sudo apt install docker.io -y
```

### Step 3: Enable and Start Docker Service

```bash
sudo systemctl enable docker --now
```

### Step 4: Verify Installation

```bash
docker --version
```

---

## 🎮 GPU Support (NVIDIA)

To enable GPU acceleration for your AI models, install the NVIDIA Container Toolkit:

**Installation Guide**: [NVIDIA Container Toolkit Documentation](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html)

This ensures your GPUs are visible and accessible to Docker containers.

---

## 📊 Netdata Monitoring Features

Netdata provides comprehensive real-time monitoring optimized for AI/ML workstations:

### What's Monitored

- **🎯 Dual GPU Monitoring**: Real-time NVIDIA GPU metrics via `nvidia-smi`
  - GPU utilization and temperature
  - Memory usage per GPU
  - Power consumption
  - Clock speeds

- **💻 System Resources**:
  - CPU usage per core
  - RAM and swap memory
  - Disk I/O and space
  - Network traffic

- **🐳 Docker Containers**: Per-container resource usage via cgroups
  - CPU and memory usage
  - Network I/O
  - Block I/O

- **⚙️ Application Monitoring**: Track specific processes and applications

### Configuration

The Netdata configuration is optimized for AI workloads with:
- 1-second update interval for real-time metrics
- 1-hour history retention
- Docker container monitoring enabled
- NVIDIA GPU collector enabled

Access the dashboard at `http://<your-server-ip>:19999` to view all metrics in real-time.

---

## 📝 Notes

- All services are configured to restart automatically on system reboot
- Make sure ports 3000, 11434, and 19999 are available on your system
- For GPU support, ensure NVIDIA drivers are properly installed before setting up the Container Toolkit

---

## 🆘 Troubleshooting

**Services not starting?**
```bash
# Check logs
docker-compose logs -f

# Restart services
docker-compose restart
```

**GPU not detected?**
- Verify NVIDIA drivers: `nvidia-smi`
- Check Container Toolkit installation
- Restart Docker service: `sudo systemctl restart docker`

---

## 📄 License

[Your License Here]

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
