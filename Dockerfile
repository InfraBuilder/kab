FROM alpine:3

RUN apk add curl bash ncurses \
    && curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl \
    && curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl-convert" \
    && install -o root -g root -m 0755 kubectl-convert /usr/local/bin/kubectl-convert \
    && curl -LO "https://github.com/itaysk/kubectl-neat/releases/latest/download/kubectl-neat_linux_amd64.tar.gz" \
    && tar -xf kubectl-neat_linux_amd64.tar.gz \
    && rm kubectl-neat_linux_amd64.tar.gz \
    && install -o root -g root -m 0755 kubectl-neat /usr/local/bin/kubectl-neat \
    && curl -LO "https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64" \
    && install -o root -g root -m 0755 yq_linux_amd64 /usr/local/bin/yq \
    && mkdir /data

COPY kab /usr/local/bin/kab
WORKDIR /data
ENV PS1="\h:\w> "