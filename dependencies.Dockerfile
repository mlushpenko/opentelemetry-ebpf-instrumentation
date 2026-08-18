# This is a renovate-friendly source of Docker images.
FROM busybox:musl@sha256:32b5cdad7cce41dfd53d0ae06baebcf8357a147ee7694dc706911c373bc30c37 AS busybox-musl
FROM davidanson/markdownlint-cli2:v0.23.2@sha256:839558fd0d36c46da0e01ea84fd1d20a2822b5a8a60c16dc9708f0bb7c9e903b AS markdown
FROM gradle:9.7.0-jdk21-noble@sha256:7818865626870c3bfd7847482bce8462e1e436a02e0b1c7737c0c47a06a1a6de AS gradle-java
FROM ghcr.io/astral-sh/uv:python3.9-trixie-slim@sha256:2c6eb5765f18332a912a2e1ca44a1b1e3b10f805a0e593680bc7b33fdd10a7d2 AS python39
FROM ghcr.io/astral-sh/uv:python3.14-trixie-slim@sha256:dc360d7e5f968c682e8b59e83027a315a0232dead15cb9dfe3e707a12ba390e1 AS python314
FROM golang:1.26.6@sha256:0d1d3a794be25f809dd2cb3160d8c73276c4056a9f8242a138e908ddeee7b6b6 AS golang
FROM otel/weaver:v0.25.1@sha256:9ad46ca9cd4fa5974b121f886aa3e9946a8ef8ea905001a96c018d21f9db87ca AS weaver
