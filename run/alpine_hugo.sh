#!/bin/bash
docker run --rm -u \`id -u\`:\`id -g\` --name hugo_dev --mount src="$(pwd)",target=/hugo,type=bind -p 1313:1313 -w /hugo -it alpine/hugo
