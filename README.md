# odata-sap-cap-test

# create SQLite DB 
cds deploy --to sqlite

# Running the app
cds run --profile sqlite
cds watch

curl http://localhost:4004/odata/v4/real-estate/Users
