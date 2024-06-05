# with love to https://unix.stackexchange.com/a/359244
docker run -e XDG_RUNTIME_DIR=/tmp -e WAYLAND_DISPLAY=$WAYLAND_DISPLAY -v $XDG_RUNTIME_DIR/$WAYLAND_DISPLAY:/tmp/$WAYLAND_DISPLAY --user=$(id -u):$(id -g) --mount src="$(pwd)",target=/lagrange,type=bind --rm -it ubuntu/lagrange

