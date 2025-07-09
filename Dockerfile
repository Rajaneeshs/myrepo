# Dockerfile for DevOps/SRE Debugging Tools
# Base image
FROM alpine:3.20

# Update and install network & application debugging tools
RUN apk update && \
    apk add --no-cache \
    curl \
    wget \
    iputils \
    net-tools \
    bind-tools \
    iproute2 \
    tcpdump \
    traceroute \
    nmap \
    busybox-extras \
    socat \
    lsof \
    strace \
    htop \
    vim \
    git \
    jq \
    less \
    ncdu \
    mtr \
    rsync \
    openssh-client \
    python3 \
    py3-pip \
    aws-cli \
    go

# Install additional Python debugging tools and AWS SDK for Python
RUN pip3 install --no-cache-dir httpie boto3

# Set default shell
SHELL ["/bin/sh", "-c"]

# Default command
CMD ["sh"]
