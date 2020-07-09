psql -d demo -U demo -c "\copy demo.person FROM '/docker-entrypoint-initdb.d/person.csv' CSV HEADER"
psql -d demo -U demo -c "\copy demo.account FROM 'docker-entrypoint-initdb.d/account.csv' CSV HEADER"
psql -d demo -U demo -c "\copy demo.transactions FROM 'docker-entrypoint-initdb.d/transactions.csv' CSV HEADER"
