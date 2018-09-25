# frozen_string_literal: true
require 'chefspec'
require 'chefspec/berkshelf'

#Below looks at test coverage
RSpec.configure do |config|
  config.formatter = :documentation
end

at_exit { ChefSpec::Coverage.report! }
