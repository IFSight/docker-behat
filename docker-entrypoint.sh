#!/bin/sh

export TERM=xterm-256color

# start the X virtual framebuffer so Firefox has a place to display
/usr/bin/Xvfb :99 -ac &

# run behat under the tests director, should be mounted via docker
cd /tests && behat --colors --format-settings='{"output_styles":{"comment":["white"]}}'

