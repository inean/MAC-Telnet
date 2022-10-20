FROM alpine:latest AS builder

# Install build dependencies
RUN apk add --no-cache diffutils build-base git gettext gettext-dev linux-headers openssl-dev meson

# Copy everything to /src
RUN mkdir /src
WORKDIR /src
ADD . /src/
RUN rm -rf builddir

# Build
RUN meson builddir
RUN meson compile -C builddir
ENV DESTDIR=/build
RUN meson install -C builddir
##
FROM alpine:latest

# Install runtime dependencies
RUN apk add --no-cache gettext-libs openssl-dev

# Copy build artifacts
COPY --from=builder /build/ /usr/

CMD ["/usr/bin/mactelnet"]
