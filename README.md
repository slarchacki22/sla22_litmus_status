# README

Litmus Status Application

localhost:3000/status - root (main status page)

API

Create
curl -X POST \
  'http://localhost:3000/api/v1/status?current_status=true&status_message=Running%20smoothly' \
  -H 'cache-control: no-cache' \
  -H 'postman-token: 7313e7ef-2fe8-d2f9-8cbc-21d8225856f7'

Update
curl -X PUT \
  'http://localhost:3000/api/v1/status/32?status_message=updating%2032%20record' \
  -H 'cache-control: no-cache' \
  -H 'postman-token: 06f51e62-f35a-2d3f-d364-083b4aa45750'

Delete
curl -X DELETE \
  http://localhost:3000/api/v1/status/4 \
  -H 'cache-control: no-cache' \
  -H 'postman-token: d1c75d47-096d-17a6-4b74-c07c699bb0e8'