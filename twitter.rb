require 'twitter'

# Referencias
# https://github.com/sferik/twitter/tree/master/examples
# https://github.com/sferik/twitter/blob/master/examples/Search.md
# https://github.com/american0


client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "YOUR_CONSUMER_KEY"
    config.consumer_secret     = "YOUR_CONSUMER_SECRET"
    config.access_token        = "YOUR_ACCESS_TOKEN"
    config.access_token_secret = "YOUR_ACCESS_SECRET"
  end

#   def collect_with_max_id(collection=[], max_id=nil, &block)
#     response = yield(max_id)
#     collection += response
#     response.empty? ? collection.flatten : collect_with_max_id(collection, response.last.id - 1, &block)
#   end
  
# This post a tweet #########################################################
# client.update("I'm tweeting with @gem!")

# Search #############################################
# client.search("#cat AND #lost", result_type: "recent").take(1).each do |tweet|
#     puts tweet.text
#   end

search_options = {
    result_type: "recent",
    geocode: "-23.5505,-46.6333,100km"
}

client.search("cachorro AND perdido", search_options).take(1).each do |tweet|
    client.retweet tweet
    puts "---------------------"
    puts tweet.text
    puts "---------------------"
    puts tweet.user.screen_name
  end