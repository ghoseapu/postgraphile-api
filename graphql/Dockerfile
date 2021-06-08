FROM node:alpine
LABEL description="Instant high-performance GraphQL API for your PostgreSQL database https://github.com/graphile/postgraphile"

# Install PostGraphile and PostGraphile connection filter plugin
RUN npm install -g postgraphile
#RUN npm install -g postgraphile-plugin-connection-filter
#RUN npm install -g @graphile-contrib/pg-simplify-inflector
RUN npm install -g @graphile/pg-aggregates
#RUN npm install postgraphile -c aggregates12 -s mygraphile --append-plugins @graphile/pg-aggregates

EXPOSE 5000
ENTRYPOINT ["postgraphile", "-n", "0.0.0.0"]