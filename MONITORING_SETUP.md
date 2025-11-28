# Netdata Monitoring Setup for AI/ML Workstation

## Overview
Netdata provides comprehensive, real-time monitoring for your dual NVIDIA GPU AI workstation with a beautiful web interface.

## What's Being Monitored

### GPU Metrics (Both Cards)
- GPU utilization percentage
- Memory usage and available memory
- Temperature readings
- Fan speeds
- Power consumption
- Clock speeds (core and memory)
- Performance states

### System Metrics
- **CPU**: Per-core usage, load average, context switches
- **RAM**: Usage, available, cached, buffers, swap
- **Storage**: Disk space, I/O operations, read/write speeds
- **Network**: Bandwidth usage, packets, errors
- **Processes**: Top processes by CPU/RAM usage

### Container Metrics
- Per-container CPU and memory usage
- Container network I/O
- Container disk I/O
- All your Docker containers (open-webui, ollama, netdata)

## Deployment Instructions

### 1. Stop the old monitoring service
```bash
cd /Users/jason/Documents/personal_repos/home_gpu_setup/ai_workstation_setup
docker-compose down glances
```

### 2. Start Netdata
```bash
docker-compose up -d netdata
```

### 3. Access the Dashboard
Open your browser and navigate to:
```
http://localhost:19999
```

Or if accessing remotely:
```
http://<your-server-ip>:19999
```

## Dashboard Navigation

### Key Sections to Check:
1. **Overview** - System summary at a glance
2. **CPUs** - Per-core utilization and detailed metrics
3. **Memory** - RAM usage breakdown
4. **Disks** - Storage space and I/O performance
5. **Network** - Bandwidth and traffic
6. **nvidia_smi** - Both GPU cards with all metrics
7. **Containers** - Docker container resource usage

## Features

- **Real-time Updates**: 1-second refresh rate
- **Historical Data**: 1 hour of data retention (configurable)
- **Beautiful UI**: Modern, responsive dashboard
- **No Configuration Needed**: Auto-detects both GPUs
- **Low Overhead**: Minimal resource usage
- **Alerts**: Built-in anomaly detection

## Troubleshooting

### If GPU metrics don't show up:
1. Check if nvidia-smi works on the host:
   ```bash
   nvidia-smi
   ```

2. Check Netdata logs:
   ```bash
   docker logs netdata-monitor
   ```

3. Verify NVIDIA runtime is working:
   ```bash
   docker run --rm --runtime=nvidia nvidia/cuda:12.0-base nvidia-smi
   ```

### To restart Netdata:
```bash
docker-compose restart netdata
```

## Customization

Edit `netdata.conf` to adjust:
- Update frequency
- Data retention period
- Which metrics to collect

Edit `nvidia-smi.conf` to adjust:
- GPU polling interval
- Specific GPU metrics to monitor

## Comparison to Glances

**Netdata advantages:**
- Much better looking UI
- More detailed GPU metrics
- Better performance graphs
- Historical data with zoom/pan
- Per-container monitoring
- Anomaly detection
- More customizable

**Port Change:**
- Old (Glances): Port 61208
- New (Netdata): Port 19999
