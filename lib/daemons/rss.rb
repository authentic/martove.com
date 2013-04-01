#!/usr/bin/env ruby

# You might want to change this
ENV["RAILS_ENV"] ||= "development"

require File.dirname(__FILE__) + "/../../config/application"
Rails.application.require_environment!

$running = true
Signal.trap("TERM") do
  $running = false
end

while ($running) do
  feed_url="http://tvi.ua/rss"
  FeedEntry.update_from_feed_continuously(feed_url, delay_interval = 5.minutes)
end