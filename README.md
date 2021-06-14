# WeakestLink

Weakest link is a very lightweight gem which allows you to safely chain multiple methods together, without having to
repeat the safe navigation operator for each call.

### Example

#### Standard ruby
```ruby
my_array = rand > 0.5 ? [] : ['foo']
my_array.first&.length&.split&.join(" ")&.reverse # etc
```

#### Weakest Link
```ruby
require 'weakest_link'
my_array = rand > 0.5 ? [] : ['foo']
# start and end the sequence of safe calls with :£
my_array.£.first.length.split.join(" ").reverse.£ # etc
```

If `£` is not a convenient character, or you would prefer something else, you can also configure other aliases:

```ruby
WeakestLink.aliases = %i[€ foo]
my_array.€.first.length.split.join(" ").reverse.€ # etc
my_array.foo.first.length.split.join(" ").reverse.foo # etc
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'weakest_link'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install weakest_link

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/johansenja/weakest_link.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
