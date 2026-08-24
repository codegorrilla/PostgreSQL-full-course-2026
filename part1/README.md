relation db => uses tables
tables connected using relationship

- users table
- post table
- comments table

1 post => 1 user
1 comment => 1 post

1 user => many posts

non-relational db => doesn't organise data using connected tables documents, key value pairs. => e.g. mongoDB

### When to use relational DB

- data has clear structure
- data has relationships
- strong validation at DB level required
- e.g. CRM app, banking app, e-commerce app

### When to use non-relational DB

- when data changes are very often.
- when your documents are independent, not much joins.
