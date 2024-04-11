FROM alpine:latest AS parallel

RUN apk add --no-cache parallel

FROM caddy:latest AS caddy

COPY Caddyfile ./

RUN caddy fmt --overwrite Caddyfile

FROM browserless/chrome:1-chrome-stable

ENV ENABLE_DEBUGGER=false
ENV DEBUG=browserless:server
ENV PRINT_NETWORK_INFO=false

COPY --from=caddy /srv/Caddyfile ./

COPY --from=caddy /usr/bin/caddy /usr/bin/caddy

COPY --from=parallel /usr/bin/parallel /usr/bin/parallel

CMD exec parallel --ungroup --halt now,done=1 ::: \
    "node ./build/index.js" \
    "caddy run --config Caddyfile --adapter caddyfile" 2>&1; \
    exit 1

