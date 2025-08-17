FROM gcc

RUN apt-get update \
  && apt-get install -y --no-install-recommends musl-tools \
  && rm -rf /var/lib/apt/lists/*

RUN useradd --create-home --uid 1000 builder

USER builder
