
# Sinatra Template

A simple template for sinatra projects

## Environment
* Ruby 2.6.6
* Sinatra 2.1.0
* MDBootstrap 4.19.1
* slim


## Development

Sinatras autoreload feature is active, it will reload all `*.rb` files in `/lib` (feel free to watch other directories too).

### without docker

1. Bundle gems locally:

```
$ bundle install
```

2. Run app from root. Will load app on http://localhost:4567 by default.

```
$ bundle exec rackup config.ru -p 4567

[2020-09-15 08:22:52] INFO  WEBrick 1.4.2
[2020-09-15 08:22:52] INFO  ruby 2.6.6 (2020-03-31) [x86_64-linux]
[2020-09-15 08:22:52] INFO  WEBrick::HTTPServer#start: pid=30080 port=4567
```

### with docker

Just fire up `docker-compose`

```
docker-compose up
```