FROM node

ARG BAZELISK=/usr/local/bin/bazel

RUN curl -sSL https://github.com/bazelbuild/bazelisk/releases/download/v1.3.0/bazelisk-linux-amd64 -o ${BAZELISK} \
  && chmod +x ${BAZELISK}
RUN bazel version
