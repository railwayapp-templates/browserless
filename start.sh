#!/bin/sh

exec parallel --ungroup --halt now,done=1 ::: \
    "node ./build/index.js" \
    "caddy run --config Caddyfile --adapter caddyfile" 2>&1;