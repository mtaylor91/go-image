FROM images.home.mtaylor.io/base:latest
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
RUN curl -fsSL https://go.dev/dl/go1.21.5.linux-amd64.tar.gz | tar xzCf / -
ENV PATH="/go/bin:${PATH}"
