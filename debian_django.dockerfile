FROM python:latest

VOLUME ["/working"]
WORKDIR /working
# Install Django!
RUN python -m pip install Django

# Pillow does image viewing
RUN python -m pip install Pillow

# Config time
#RUN cd root && \
#	git init /root && \
#	git remote add origin https://github.com/probablySophie/alpine-config && \
#	git fetch && \
#	git checkout -t origin/main && \
#	cd ..

ENV ENV="/root/.profile"


# Import Django
# RUN python -m import django

