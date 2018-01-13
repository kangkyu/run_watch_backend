# Run-Watch Backend

## Endpoints

```
curl 'http://localhost:3000/api/episodes' -H 'Authorization: Token token=abc...'
curl 'http://localhost:3000/api/episodes/1' -H 'Authorization: Token token=abc...'
curl -X POST "http://localhost:3000/api/episodes" -d "{\"title\":\"New Episode\",\"number\":\"3\"}" -H "Content-Type: application/json" -H "Authorization: Token token=abc..."
curl -X PUT "http://localhost:3000/api/episodes/1" -d "{\"title\":\"Times Square\"}" -H "Content-Type: application/json" -H "Authorization: Token token=abc..."
```

## TODO

+ Make endpoints authenticated
+ Add more endpoints
+ write test code
+ build a client app
+ expire and refresh token
+ use client key and client secret
+ deploy to Heroku
+ add Admin model and login
