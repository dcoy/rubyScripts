# Simple HTTP client to retrive any page
require 'net/http'

# puts "Enter a URL/URI: "
# userURI = gets.chomp

# # Clarify input
# puts "You just entered: #{userURI}"
# Basic GET request

uri = URI.parse('http://example.com/')
# # Shortcut
# response = Net::HTTP.get_response(uri)

# # Will print response.body
# Net::HTTP.get_print(uri)

# Full
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Get.new(uri.request_uri)

response = http.request(request)

response.code # => 301
response.body # => The body (HTML, XML, etc.)

# Headers are lowercased
response['cache-control'] # => public, max-age=2592000

puts "Response code: #{response.code}" # response.code

puts "Here is the response body:\n\n#{response.body}"
