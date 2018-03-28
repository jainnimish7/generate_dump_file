# GenerateDumpFile

Create dump file in temporary folder of root directory, if folder not present in directory then it will create one. Open interactive prompt by typing 'irb' and 
$ require 'generate_dump_file'.
also do, $ require File.expand_path('../config/environment', __FILE__) 
and then run GenerateDumpFile.create

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'generate_dump_file'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install generate_dump_file

## Usage

Open interactive prompt by typing 'irb'

Now require follwing:
	
		$ require 'generate_dump_file'
		$ require File.expand_path('../config/environment', __FILE__)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jainnimish7/generate_dump_file.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
