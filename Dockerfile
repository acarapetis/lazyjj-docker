# rust:alpine will link everything statically
FROM rust:alpine AS build
RUN --mount=type=cache,target=/var/cache/apk apk add musl-dev
RUN cargo install --locked --bin jj jj-cli
RUN cargo install --locked lazyjj

FROM scratch
COPY --from=build /usr/local/cargo/bin/jj /usr/local/cargo/bin/lazyjj /
ENV PATH=/
ENTRYPOINT ["/lazyjj"]
