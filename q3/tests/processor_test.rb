require 'test/unit'
require 'net/http'
require 'json'
require 'stock_ticker'
require 'processor'
require 'logger'

# require_relative "../lib/processor"
# require_relative "../lib/logger"


class TestProcessor < Test::Unit::TestCase
  
  def test_processor_good_data
    data = '[
  {
    "currency": "USD",
    "ticker": "H",
    "exchange": "USNYSE",
    "id": "US4485791028",
    "price": 51.3100,
    "name": "Hyatt Hotels Corporation"
  },
  {
    "currency": "USD",
    "ticker": "WNRP",
    "exchange": "USOTC",
    "id": "US9561524094",
    "price": 465.0000,
    "name": "West Suburban Bancorp Inc"
  }]'
    result = Processor::process_data(JSON.parse(data))
    assert_equal( "WNRP", result[1]['WNRP'] )
  end

  def test_processor_bad_data
    data = false
    result = Processor::process_data(data)
    assert_false(result)
  end
end
