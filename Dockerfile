FROM debian:latest

# set locales
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8

# install dependencies 
ARG TARGETARCH
RUN apt-get update && apt-get install -y \
	tini adduser wget fortune-mod make \
	&& rm -rf /var/lib/apt/lists/* \
	# create fortune user and give sudo
	&& adduser --home /var/lib/fortune fortune --disabled-password --gecos "" \
	# install ttyd
	&& wget -O /usr/bin/ttyd https://github.com/tsl0922/ttyd/releases/latest/download/ttyd.${TARGETARCH} \
	&& chmod +x /usr/bin/ttyd

# install
COPY --chown=fortune . /var/lib/fortune/anarsizm
WORKDIR /var/lib/fortune/anarsizm
RUN make install distro=debian \
	&& chown -R fortune:fortune /var/lib/fortune/anarsizm

# switch fortune user
USER fortune

# local requirements
ENV PATH="${PATH}:/usr/games"
ARG MAX_CLIENTS
ENV MAX_CLIENTS="${MAX_CLIENTS}"
ARG TTYD_PORT
ENV TTYD_PORT="${TTYD_PORT}"
EXPOSE ${TTYD_PORT}

# set ENTRYPOINT
# starting the application with tini
ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ttyd -m ${MAX_CLIENTS} -p ${TTYD_PORT} bash -c /var/lib/fortune/anarsizm/loop.sh
