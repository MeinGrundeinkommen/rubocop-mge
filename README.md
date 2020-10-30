# Rubocop::Mge

MeinGrundeinkommen-specific analysis for our projects, as an extension to [RuboCop](https://github.com/rubocop-hq/rubocop).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-mge', require: false
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rubocop-mge

## Usage

You need to tell RuboCop to load the Mge extension. There are three
ways to do this:

### RuboCop configuration file

Put this into your `.rubocop.yml`.

```yaml
require: rubocop-mge
```

Alternatively, use the following array notation when specifying multiple extensions.

```yaml
require:
  - rubocop-other-extension
  - rubocop-mge
```

Now you can run `rubocop` and it will automatically load the RuboCop RSpec
cops together with the standard cops.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Currently outside contribution to this gem in not possible.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
