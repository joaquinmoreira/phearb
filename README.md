# Phearb

[![Gem Version](https://badge.fury.io/rb/phearb.svg)](https://badge.fury.io/rb/phearb) 
[![Build Status](https://travis-ci.org/joaquinrulin/phearb.svg?branch=master)](https://travis-ci.org/joaquinrulin/phearb)

Phearb is a library for handling connections to [**phear**](https://github.com/Tomtomgo/phearjs) servers. It allows ruby apps to easy fetch sites source code using phear.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'phearb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install phearb

## Configuration

Put these lines in the configuration section of you app. In rails you should probably add an `initializer` or in one of your `environment` files:

```ruby
Phearb.configure do |config|
  config.host = <host> # Defaults to 'localhost'
  config.port = <port> # Defaults to 8100
end
```

## Usage
```ruby
response = Phearb.fetch('http://www.google.com')
puts response.content if response.success
```

Simply calling `Phearb.fetch(<url>)` will do the job. It returns an `Phearb::Response` object wrapping the phearb server response with one method per key:
```js
{
  "success": true,
  "input_url": "http://such-website.com",
  "final_url": "http://www.such-website.com/",
  "had_js_errors": false,
  "content": "<html>rendered</html>",
  "request_headers": {},
  "response_headers": {
    "date": "Sun, 08 Feb 2015 15:11:22 GMT",
    "content-encoding": "gzip",
    "cache-control": "max-age=60",
    "content-type": "text/html; charset=utf-8"
  }
}
```

Then if you need access to the `final_url` you can call `response.final_url`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joaquinrulin/phearb.
