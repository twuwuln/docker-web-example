FROM python:3.11

# Set environment variables to noninteractive to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update system and install common tools
RUN apt-get update && apt-get install -y \
    apt-utils \
    curl \
    vim \
    net-tools \
    iputils-ping \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

#install python dependency
RUN pip install flask
# Set working directory
WORKDIR /app

# Copy local code to the container
COPY . /app

# Default command (can be overridden)
CMD ["python", "app.py"]
