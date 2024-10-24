FROM alpine:latest

# Add Go (programming language, needed for Hugo apparently)
RUN apk add --no-cache git make musl-dev go

# Add Hugo (Static Site Generator)
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community hugo

# Add Git (its Git)
RUN apk add git

# Config time
RUN cd root && \
	git init /root && \
	git remote add origin https://github.com/probablySophie/alpine-config && \
	git fetch && \
	git checkout -t origin/main && \
	cd ..

ENV ENV="/root/.profile"

VOLUME ["/server"]
WORKDIR /server

