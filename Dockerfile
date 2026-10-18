FROM alpine:3.18
WORKDIR /app
COPY . .
CMD ["/bin/sh"]
