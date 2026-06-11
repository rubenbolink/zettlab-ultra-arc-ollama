# Zettlab Ultra Arc Ollama

A hardened, high-performance Docker setup for running [Ollama](https://ollama.com) on Intel Core Ultra (Meteor Lake) systems.
This container utilizes native Intel Arc iGPU hardware acceleration via Vulkan and the `xe` Linux kernel driver.
Succesfully tested it with Ollama 0.30.7.

## Features
- **Hardware Accelerated:** Native Vulkan-based GPU offloading for Meteor Lake iGPUs.
- **Optimized:** Pre-configured with Flash Attention and high-performance memory tuning.
- **Stable:** Solves the common C++ segmentation faults found in community forks by using the official Ollama binary.

## Prerequisites
- Linux host with a kernel supporting the `xe` driver.
- Docker & Docker Compose installed.
- Access to Intel iGPU render nodes (typically `/dev/dri/renderD128`).

## Getting Started

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/rubenbolink/zettlab-ultra-arc-ollama.git](https://github.com/rubenbolink/zettlab-ultra-arc-ollama.git)
   cd zettlab-ultra-arc-ollama

## Configure Paths:
Edit the docker-compose.yml file to point the volumes to your desired model storage directory.

## Deploy:
```
bash
sudo docker compose up -d --build
```

##Performance Tuning
This setup is optimized for the Intel Arc architecture.

OLLAMA_NUM_PARALLEL: Adjust based on your available system RAM.
