docker run --rm \
	-u \`id -u\`:\`id -g\` \
	--mount src="$(pwd)",target=/scripts,type=bind \
	-it powershell/graph

