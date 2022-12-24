# Rails 6 API - Tom Kadwill

Tutorial following this playlist:

https://www.youtube.com/playlist?list=PLbTv9eGiI03u1-JFkFpPGsR_hMre6WX3e


## Requests

- GET /books
  - `curl http://localhost:3000/api/v1/books -v`
- POST /books 
  - `curl -H "Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxfQ.LsDBc77pnaGAayIYeTv98TEjixb-9X-cY3hchoPshpQ" --header "Content-Type: application/json" --request POST --data '{"book": {"title": "book title 1"}, "author": {"first_name": "Random", "last_name": "Author", "age": 66}}' http://localhost:3000/api/v1/books -v`
- DELETE /books/:id 
  - `curl --header "Content-Type: application/json" --request DELETE http://localhost:3000/api/v1/books/1 -v`
- POST /authenticate
  - `curl -X POST http://localhost:3000/api/v1/authenticate  -H "Content-Type: application/json" -d '{"username": "josh", "password": "pass"}'`