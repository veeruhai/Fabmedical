host="fabmedical-718867.mongo.cosmos.azure.com"
username="fabmedical-718867"
password="aK8lxgX6pKkfW9DKz9MVmdbxhnbauu2CAKf91UqC8vpRpOCnwhzyQ5hxRWDGRcNwoBOm5FjZvSKjdbgdd6l75w=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done