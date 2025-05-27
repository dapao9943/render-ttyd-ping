FROM hackinglab/alpine-ttyd-bash:latest

RUN apk add --no-cache nodejs

COPY server.js /server.js

EXPOSE 7681 3000

CMD ["sh", "-c", "ttyd -p 7681 -c $HL_USER_USERNAME:$HL_USER_PASSWORD bash & node /server.js"]
