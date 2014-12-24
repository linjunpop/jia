# Jiǎ (假)

A ruby gem for generating random Chinese user data.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jia'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jia

## Usage

```ruby
fake_user = Jia::User.new
fake_user.surname #=> '林'
fake_user.given_name #=> '萌'
fake_user.full_name #=> '林萌'
fake_user.email #=> 'xxxx@sohu.com"'
fake_user.email(safe: true) #=> 'xxxx@example.com"'
fake_user.phone #=> '15500000000'
```

## Note

* The surname list comes from http://en.wikipedia.org/wiki/List_of_most_common_surnames_in_Asia
* The given name list comes from http://en.wikipedia.org/wiki/List_of_most_popular_given_names
* Phone numbers http://en.wikipedia.org/wiki/Telephone_numbers_in_China

## Contributing

1. Fork it ( https://github.com/[my-github-username]/jia/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
