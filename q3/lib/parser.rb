def parse_url(uri)
  uri = URI(uri)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end