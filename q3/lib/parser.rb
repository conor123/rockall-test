def parse_url(uri)
	# url = url
	p uri
	uri = URI(uri)
	response = Net::HTTP.get(uri)
	JSON.parse(response)
end