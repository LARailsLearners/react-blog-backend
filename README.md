# README

````
$ curl http://localhost:3000/articles
[{"id":1,"title":"Rails","body":"I like it","created_at":"2016-10-15T23:20:01.691Z","updated_at":"2016-10-15T23:20:01.691Z"}]

$ curl http://localhost:3000/articles -X POST -d "article[title]=Test"
$ curl http://localhost:3000/articles
[{"id":1,"title":"Rails","body":"I like it","created_at":"2016-10-15T23:20:01.691Z","updated_at":"2016-10-15T23:20:01.691Z"},{"id":2,"title":"Test","body":null,"created_at":"2016-10-15T23:42:23.394Z","updated_at":"2016-10-15T23:42:23.394Z"}]

$ curl http://localhost:3000/articles/2 -X DELETE
$ curl http://localhost:3000/articles
[{"id":1,"title":"Rails","body":"I like it","created_at":"2016-10-15T23:20:01.691Z","updated_at":"2016-10-15T23:20:01.691Z"}]

$ curl http://localhost:3000/articles/1 -X PUT -d "article[title]=Test"
$ curl http://localhost:3000/articles
[{"id":1,"title":"Test","body":"I like it","created_at":"2016-10-15T23:20:01.691Z","updated_at":"2016-10-15T23:43:24.090Z"}]
```
