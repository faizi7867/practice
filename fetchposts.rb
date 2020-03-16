require 'httparty'
class FetchData
  def get_posts(xyz)
    post = HTTParty.get("https://jsonplaceholder.typicode.com/#{xyz}")
    puts post
    end
  def get_comments(comments,post_id = 1 )
    comments = HTTParty.get("https://jsonplaceholder.typicode.com/#{comments}?postId=#{post_id}")
    comments.each do |comment|
        puts comment["postId"]
        puts comment["body"]
    end
  end
end

get_data = FetchData.new
# get_data.get_posts("comments")
# post_id = 2
get_data.get_comments("comments",post_id=2)