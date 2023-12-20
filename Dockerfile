FROM node:18-alpine

COPY ./packages ./packages
COPY ./data/index.json ./index.json

# Install curl for healthcheck and tzdata for timezone support.
RUN apk --no-cache add curl tzdata

# Do not run as root.
RUN adduser --shell /bin/sh --disabled-password --gecos "" mockoon
RUN chown -R mockoon ./index.json
USER mockoon

EXPOSE 8081

ENTRYPOINT ["./packages/cli/bin/run","start","--disable-log-to-file","--data","./index.json","--port","8081"]

# Usage: docker run -p <host_port>:<container_port> mockoon-test