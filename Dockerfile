FROM ubuntu:latest
RUN apt-get update && apt-get install -yq sudo dnsutils netcat vim gitlab-cli jq python3 libxml2-utils && apt-get clean && rm -rf /var/lib/apt/lists
RUN groupadd -g 999 appuser && \
    useradd -d /home/appuser -m -u 999 -s /bin/bash -g appuser appuser
USER appuser
CMD bash
