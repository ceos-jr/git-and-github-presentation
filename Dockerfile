FROM alpine:3.12 AS base
WORKDIR /app

RUN apk add --no-cache \
    curl \
    git \
    jq \
    tar \
    bash \
    libc6-compat \
    openssh-client && \
    curl -L https://github.com/maaslalani/slides/releases/download/v0.9.0/slides_0.9.0_linux_amd64.tar.gz \
    -o slides.tar.gz && \
    tar -xzf slides.tar.gz && \
    rm slides.tar.gz

COPY slides.md dracula.json /app/

RUN ssh-keygen -q -t ed25519 -f id_ed25519 -N '' && \
    chmod +x /app/slides.md && \
    git config --global init.defaultBranch main && \
    git config --global user.email "tubias@example.com" && \
    git config --global user.name "Tubias"


ENV PORT=3000
ENTRYPOINT /app/slides serve --keyPath /root/.ssh/id_rsa --host "0.0.0.0" --port $PORT /app/slides.md

# CMD ["/app/slides", "serve", "--keyPath", "/root/.ssh/id_rsa", "--host", "0.0.0.0", "--port", "8080", "/app/slides.md"]
