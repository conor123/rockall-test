#!/usr/bin/env ruby
require 'net/http'
require 'json'
require 'validation'
require 'parser'

puts "***********************************\n*** Welcome to market data v1.0 ***\n***********************************\n"

input_array = ARGV

uri = validate_input(input_array)

p parse_url(uri)
