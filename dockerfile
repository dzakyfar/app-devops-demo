FROM jenkins/jenkins:lts

USER root

# Install Maven, Git, Docker CLI
RUN apt-get update && \
    apt-get install -y maven git curl docker.io && \
    rm -rf /var/lib/apt/lists/*

USER jenkins
