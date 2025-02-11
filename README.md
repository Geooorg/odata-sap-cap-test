# odata-sap-cap-test

# create SQLite DB 
cds deploy --to sqlite

# Running the app
cds run --profile sqlite
cds watch

## Retrieving users

### Generate EDMX

curl 'http://localhost:4004/odata/v4/real-estate/$metadata'  

### Retrieve all users
curl http://localhost:4004/odata/v4/real-estate/Users

### $filter: Select a specific user 
curl 'http://localhost:4004/odata/v4/real-estate/Users?$filter=ID%20eq%201'
or 
curl 'http://localhost:4004/odata/v4/real-estate/Users(1)'

### $select only this user's name
curl 'http://localhost:4004/odata/v4/real-estate/Users?$filter=ID%20eq%201&$select=Name'

### $expand - select Properties that belong to this user
curl 'http://localhost:4004/odata/v4/real-estate/Users?$filter=ID%20eq%201&$expand=Properties'
