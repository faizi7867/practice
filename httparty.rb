require 'httparty'

response = HTTParty.get('https://jsonplaceholder.typicode.com/comments')
response.each_with_index  do |res,index|
    puts ("#{index+1} -  #{res["email"]}") if res["email"] == "Zola@lizzie.com"
    

end

