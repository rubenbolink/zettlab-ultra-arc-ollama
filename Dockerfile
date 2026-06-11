FROM ubuntu:24.04

# Added the official Mesa Vulkan drivers for Intel Arc
RUN apt-get update && apt-get install -y \
    curl pciutils clinfo zstd \
    intel-opencl-icd libze1 libze-intel-gpu1 \
    mesa-vulkan-drivers vulkan-tools

# Install the OFFICIAL latest version of Ollama directly from the source
RUN curl -fsSL https://ollama.com/install.sh | sh

# Force Ollama to broadcast and strictly use the Vulkan rendering engine
ENV OLLAMA_HOST=0.0.0.0
ENV OLLAMA_VULKAN=1

EXPOSE 11434
ENTRYPOINT ["ollama"]
CMD ["serve"]
