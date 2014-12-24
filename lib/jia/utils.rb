require 'yaml'

module Jia
  class Utils
    # Read data file
    #
    #   load_data('email_domain') # => ['163.com', 'qq.com']
    #
    # Returns data in array
    def self.load_data(name)
      data_file = ::File.expand_path("../../data/#{name}.txt",  __FILE__)
      ::File.read(data_file).split("\n")
    end
  end
end
