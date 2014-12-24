require 'ruby-pinyin'
require_relative 'utils'

module Jia
  class User
    # Get given name
    #
    #   Jia::User.new.given_name # => '萌'
    def given_name
      @given_name ||= Jia::Utils.load_data('given_name').sample
    end

    # Get surname
    #
    #   Jia::User.new.surname # => '林'
    def surname
      @surname ||= Jia::Utils.load_data('surname').sample
    end

    # Get full name
    #
    #   Jia::User.new.full_name # => '林萌'
    def full_name
      "#{surname}#{given_name}"
    end

    # Get email
    #
    #   Jia::User.new.email # => 'lin.meng123@qq.com'
    #   Jia::User.new.email(safe: true) # => 'lin.meng123@example.com'
    def email(safe:false)
      @email ||= -> {
        domains = if safe
                    ['example.com']
                  else
                    Jia::Utils.load_data('email_domain')
                  end
        account = ::PinYin.of_string(full_name).join('.')
        suffix = rand(999)
        "#{account}#{suffix}@#{domains.sample}"
      }.call
    end

    # Get phone number
    #
    #   Jia::User.new.phone # => '18100000000'
    def phone
      @phone ||= -> {
        mac = Jia::Utils.load_data('phone_mac').sample
        area_code = rand(9999).to_s.center(4, rand(9).to_s)
        user_identifier = rand(9999).to_s.center(4, rand(9).to_s)
        "#{mac}#{area_code}#{user_identifier}"
      }.call
    end
  end
end
