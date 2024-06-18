docker run --rm \
	--mount src="$(pwd)",target=/scripts,type=bind \
	-it powershell/graph

