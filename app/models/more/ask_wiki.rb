require 'open-uri'
require 'json'
 
language = 'en'
 
print 'What do you need to know? : '
article = URI::encode gets.chomp
 
request_url = "http://#{language}.wikipedia.org/w/api.php?action=parse&page=#{article}&format=json&prop=text&section=0"
 
open(request_url) do |file|
  content = JSON.parse(file.read())['parse']['text'].first[1]
  content_text = content.gsub(/<\/?[^>]+>/, '')
  content_text = content_text.gsub(/[[:space:]]+/, ' ')
  content_text = content_text.gsub(/&#[0-9]+;/,'')
  content_text = content_text.gsub(/\[[0-9]+\]/,'')
  puts content_text
end
