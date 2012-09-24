#!usr/bin/env ruby
# -*- coding: utf-8 -*-

require "pp"
require "zlib"
require "tweetstream"
require "pit"
def configure()
  pit = Pit.get("teenst_dev", :require =>{
      "CONSUMER_KEY" => "consumer_key",
      "CONSUMER_SECRET" => "cousumer_secret",
      "OAUTH_TOKEN" => "OAuth_token",
      "OAUTH_TOKEN_SECRET" => "token_secret"
    })
  TweetStream.configure do |config|
    config.consumer_key       = pit["CONSUMER_KEY"]
    config.consumer_secret    = pit["CONSUMER_SECRET"]
    config.oauth_token        = pit["OAUTH_TOKEN"]
    config.oauth_token_secret = pit["OAUTH_TOKEN_SECRET"]
    config.auth_method        = :oauth
  end
end

configure()

client = TweetStream::Client.new


Zlib::GzipWriter.open('tweet.txt.gz') do |gz|
  client.sample do |status|
    next unless status.user.lang == "ja"
    gz.puts "***Scheme Start***"
    gz.puts "NAME: #{status.user.name}"
    gz.puts "SCREEN_NAME: #{status.user.screen_name}"
    gz.puts "TEXT: #{status.text}"
    gz.puts "USER_LOC: #{status.user.location}"
    gz.puts "***Scheme End***"
  end
end
