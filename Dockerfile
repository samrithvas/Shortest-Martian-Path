FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY Node.js  .
COPY style.css  .
COPY grid.js  .
COPY Clock.js  .
COPY Astar.js  .
COPY Dijkstra.js  .
COPY Script.js  .
COPY *.html .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
