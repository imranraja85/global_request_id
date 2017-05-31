# Global Request Id

GlobalRequestId is a rails gem that makes your correlation id (X-REQUEST-ID) globally avaiable during your entire http request. The primary use case this fulfills is this makes your correlation id known and accessible during the execution of your business logic. This is of particular importance when invoking services where you would like to forward the request id as a header to your other services for some distributed tracing goodness.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'global_request_id'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install global_request_id

## Usage

`GlobalRequestId.retrieve` should retrieve the X-REQUEST-ID

## Todos
 * add tests
 * add sidekiq middleware to inject request id

## Inspired by..

This gem was inspired 'Building Microservices' by Sam Newman.
And uses [the request_store gem](https://github.com/steveklabnik/request_store) for thread local storage.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/global_request_id. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
