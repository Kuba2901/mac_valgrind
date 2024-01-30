FROM alpine:latest
RUN apk add gcc valgrind
RUN apk add musl-dev