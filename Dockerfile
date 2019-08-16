from node:10.16-alpine

RUN apk add --no-cache bash curl tini

RUN npm install --save dd-trace

ENV PORT 8080
ENTRYPOINT ["/sbin/tini", "--", "/docker-entrypoint.sh"]
EXPOSE 8080
CMD ["start"]
