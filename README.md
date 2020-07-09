# postgres-docker-sample
Create a sample postgres db in a docker container with a schema and data

##### What it does

> Create a local postgres container with a prebuilt schema with tables, views and data

##### How to use it

```
git clone git@github.com:pratio/postgres-docker-sample.git
cd postgres-docker-sample
./build.sh
```

##### How it works

When the script is executed
1. It will pull the base postgres image
2. Add the `.sql`, `.csv` and `.sh` files
3. The files will be executed in an alphabetical order
4. `setupdb.sql` will create the schema, tables and views
5. `transactions.sh` will then insert the `csv` files in the tables
6. The view will be updated
7. You can connect to postgres on the localhost with user,password and database name as demo



