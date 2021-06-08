# postgraphile-api

- PostGraphile automatically detects tables, columns, indexes, relationships, views, types, functions, comments, and more — providing a GraphQL server that is highly intelligent about your data, and that automatically updates itself without restarting when you modify your database.
- Tables and columns that you don't GRANT access to will not be exported via GraphQL when using --no-ignore-rbac
- No need for complex server architectures, containers, etc: PostGraphile is pure Node.js and can be embedded in your existing Node.js project
- Issue requests to your PostGraphile API without network roundtrips, fantastic for React SSR
- Implement authorization via PostgreSQL's RBAC and Row-Level Security features, get full-stack security you can trust

# Start Instruction

- npm run start
- sample.sql is used to populate data initially for test purpose. You may delete this file
