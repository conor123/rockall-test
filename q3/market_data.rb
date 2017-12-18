#!/usr/bin/env ruby
require 'net/http'
require 'json'
require 'validation'
require 'parser'
require 'printer'
require 'processor'
require 'stock_ticker'

puts "***********************************\n*** Welcome to market data v1.0 ***\n***********************************\n"

input_array = ARGV

uri = validate_input(input_array)

market_data = parse_uri(uri)

p custom_data = process_data(market_data)

# print_custom_data(custom_data)
