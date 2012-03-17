
# Installation

```
  $ git clone git://github.com:ayosec/grape-mongoid.git
  $ cd grape-mongoid
  $ bundle install --binstubs
  $ bin/thin start
```

# Example with curl

```
$ curl -s http://localhost:3000/ | json_pp
[]

$ curl -s -d 'failed=1' http://localhost:3000/ | json_pp
{
   "errors" : {
      "name" : [
         "can't be blank"
      ]
   }
}

$ curl -s -d 'name=this+item&foo=bar&this=that' http://localhost:3000/ | json_pp
{
   "thingId" : "4f64a387d1dd1b129d000002"
}

$ curl -s http://localhost:3000/ | json_pp
[
   {
      "created_at" : "2012-03-17T14:45:27+00:00",
      "updated_at" : "2012-03-17T14:45:27+00:00",
      "_id" : "4f64a387d1dd1b129d000002",
      "name" : "this item",
      "foo" : "bar",
      "this" : "that"
   }
]

$ curl -s -d 'name=second+item' http://localhost:3000/ | json_pp
{
   "thingId" : "4f64a394d1dd1b129d000003"
}

$ curl -s http://localhost:3000/ | json_pp
[
   {
      "created_at" : "2012-03-17T14:45:27+00:00",
      "updated_at" : "2012-03-17T14:45:27+00:00",
      "_id" : "4f64a387d1dd1b129d000002",
      "name" : "this item",
      "foo" : "bar",
      "this" : "that"
   },
   {
      "created_at" : "2012-03-17T14:45:40+00:00",
      "updated_at" : "2012-03-17T14:45:40+00:00",
      "_id" : "4f64a394d1dd1b129d000003",
      "name" : "second item"
   }
]
```
