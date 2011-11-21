#!/usr/bin/env ruby

require 'rubygems'
require 'nokogiri'

f = File.open("#{ENV['HOME']}/Dropbox/tumblr_shenie.xml")
doc = Nokogiri::XML(f)
f.close

items = doc.css('item')

puts "#{items.size} items"

doc.css('item').each do |item|
  title = item.css('title').text
  title = item.css('description').text if title.empty?
  title = item.css('post_name').text if title.empty?
  content = item.css('content').text
  post_date = item.css('post_date').text[0..-4]

  next if content.empty?

  post = <<END
---
layout: post
title: "#{title}"
date: #{post_date}
comments: true
categories: 
---

#{content}
END

filename = "source/_posts/#{post_date.split.first}-#{title.gsub(/[,&'"?_!~;#:)@*%$]/, '').split.join('-').downcase[0..80]}.markdown"
  File.open(filename, 'w') do |f|
    f.puts post
  end

end

