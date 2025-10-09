FROM jenkins/jenkins:lts

USER root

# Install Maven, Docker CLI, git, curl
RUN apt-get update && apt-get install -y \
    maven \
    docker.io \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Switch back to jenkins user
USER jenkins
