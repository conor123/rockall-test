class Parser
  def self.parse_uri(uri)
    begin
      if uri.is_a? String
        uri = URI(uri)
        response = Net::HTTP.get(uri)
        JSON.parse(response)
      else
        puts "> Error! URI not a string!"
        return false
      end
    rescue JSON::ParserError => e
      puts "> ERROR: not JSON!"
      puts "#{e}"
      return false
    end
  end
end