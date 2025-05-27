FROM hackinglab/alpine-ttyd-bash:latest

RUN apk add --no-cache nodejs

COPY server.js /server.js
COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 7681 3000

CMD ["/start.sh"]
