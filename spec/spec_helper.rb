require 'coveralls'
Coveralls.wear!

require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end

require_relative '../lib/mbti'
