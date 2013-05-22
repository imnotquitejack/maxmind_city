# MaxmindCity

A minimal wrapper around MaxMind's city-level lookup API.

## Installation

Add this line to your application's Gemfile:

    gem 'maxmind_city'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install maxmind_city

## Usage

    MaxmindCity.license_key = "YOUR_LICENSE_KEY"
    MaxmindCity.lookup "120.55.121.84"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
