# Rails 6 API - Tom Kadwill

Tutorial following this playlist:

https://www.youtube.com/playlist?list=PLbTv9eGiI03u1-JFkFpPGsR_hMre6WX3e


## Requests

- GET /books
  - `curl http://localhost:3000/books -v`
- POST /books 
  - `curl --header "Content-Type: application/json" --request POST --data '{"title": "w1", "author": "n1"}' http://localhost:3000/books -v`
- DELETE /books/:id 
  - `curl --header "Content-Type: application/json" --request DELETE http://localhost:3000/books/1 -v`