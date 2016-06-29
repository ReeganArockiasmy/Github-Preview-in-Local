#!/bin/bash
#
# Usage:
#    filename="Readme.md" ip="x.x.x.x" port="8000" run-github-page.sh
#

FILENAME=${filename:-"README.md"}
IP=${ip:-"localhost"}
PORT=${port:-"8000"}

URL="http://$IP:$PORT/readme.html"

QUERY="?filename=${FILENAME}"

chromium $URL$QUERY
