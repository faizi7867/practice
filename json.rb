require 'httparty'
response = HTTParty.get('https://jsonplaceholder.typicode.com/posts')
puts response.first["id"]
puts response.last["id"]
