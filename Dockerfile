FROM guacamole/guacd
USER root
RUN groupadd --gid 1001 guacamole
RUN useradd --system --create-home --shell /sbin/nologin --uid 1001 --gid 1001 guacamole
RUN mkdir /var/lib/guacamole
RUN chown guacamole:guacamole /var/lib/guacamole
RUN apk update
RUN apk add font-ipa fontconfig && fc-cache -f
USER guacamole
RUN mkdir /var/lib/guacamole/drives
RUN mkdir /var/lib/guacamole/recordings
