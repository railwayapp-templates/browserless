#!/bin/sh

parallel --ungroup --halt now,done=1 ::: \
    "exec ./start_browserless.sh" \
    "exec ./start_caddy.sh"; \
    false