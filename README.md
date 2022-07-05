# UrlBuilder

A simple ruby implementation of the builder pattern to create urls. 
Supports dynamically adding path segments and query parameters as well as custom path segment separator characters.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add url_builder

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install url_builder

## Usage

Instantiate the builder class with the base url and then add segments and query params as needed.

    builder = UrlBuilder::Builder.new(base_url: 'www.example.com')
    builder.add_segment("foo")
    builder.add_segment("bar")
    builder.add_query_param("key", "value")
    builder.to_s # "www.example.com/foo/bar?key=value"
 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/url_builder.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
