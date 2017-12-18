#!/usr/bin/env ruby
require 'net/http'
require 'json'
require 'validation'
require 'parser'
require 'printer'
require 'processor'
require 'stock_ticker'
require 'logger'

puts "***********************************\n*** Welcome to market data v1.0 ***\n***********************************\n"

market_data = parse_uri(validate_input(ARGV))

p custom_data = process_data(market_data)
