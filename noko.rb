require 'open-uri'
require 'nokogiri'
require 'json'
require 'jsoner'
url = 'https://www.codewars.com/users/leaderboard'
html = open(url)
doc = Nokogiri::HTML(html)
json = Jsoner.parse(doc)


puts json

