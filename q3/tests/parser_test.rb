require 'test/unit'
require 'net/http'
require 'json'

require_relative "../lib/parser"

class TestParser < Test::Unit::TestCase
  
  def test_parse_good_uri
    uri = "http://alert-generation-question.rockall-laser.com/ffc9c8e9-f929-46db-ac5c-7c483c647568/marketdata.json"
    result = Parser::parse_uri(uri)
    assert_equal( "H",result[0]["ticker"] )
  end

  def test_parse_bad_uri
    uri = "https://www.w3schools.com/xml/note.xml"
    result = Parser::parse_uri(uri)
    assert_false(result)
  end
end
