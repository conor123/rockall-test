#!/usr/bin/env ruby
require 'net/http'
require 'json'
require 'validator'
require 'parser'
require 'printer'
require 'processor'
require 'stock_ticker'
require 'logger'

puts "***********************************\n*** Welcome to market data v1.0 ***\n***********************************\n"

market_data = Parser::parse_uri(Validator::validate_input(ARGV))

p custom_data = Processor::process_data(market_data)
