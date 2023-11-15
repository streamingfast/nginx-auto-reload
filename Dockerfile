FROM nginx:1.25

COPY ./watch-and-reload.sh /app/watch-and-reload.sh
COPY ./docker-entrypoint.sh /app/docker-entrypoint.sh

RUN chmod +x /app/docker-entrypoint.sh /app/watch-and-reload.sh

RUN apt-get update && apt-get install -y inotify-tools

ENTRYPOINT [ "/app/docker-entrypoint.sh" ]
CMD [ "nginx" ]
