class Parser
  def self.parse_uri(uri)
    begin
      uri = URI(uri)
      response = Net::HTTP.get(uri)
      JSON.parse(response)
    rescue JSON::ParserError => e
      abort "> ERROR: not JSON! Exiting!"
    end
  end
end