#!/bin/sh

parallel --ungroup --halt now,done=1 ::: \
    "./start_browserless.sh" \
    "./start_caddy.sh"

false