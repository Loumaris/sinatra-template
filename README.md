
# Sinatra Template

A simple template for sinatra projects

## Environment
* Ruby 2.6.5
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

[2020-03-03 21:07:09] INFO  WEBrick 1.4.2
[2020-03-03 21:07:09] INFO  ruby 2.6.5 (2019-10-01) [x86_64-linux]
[2020-03-03 21:07:09] INFO  WEBrick::HTTPServer#start: pid=19892 port=4567
```

### with docker

Just fire up `docker-compose`

```
docker-compose up
```