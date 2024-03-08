FROM alpine:latest

# Add Hugo (Static Site Generator)
RUN apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community hugo

# Add Git (its Git)
RUN apk add git

