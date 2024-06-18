# with love to https://unix.stackexchange.com/a/359244
docker run --network=host --env DISPLAY=127.0.0.1:11.0 --privileged --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -v /tmp/.X11-unix:/tmp/.X11-unix --rm --mount src="$(pwd)",target=/lagrange,type=bind --rm -it ubuntu/lagrange

