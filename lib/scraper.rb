require 'httparty'
require 'nokogiri'
require 'byebug'

def scraper_address
  url = "https://www.wework.com/l/new-york-city--NY"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  weworks = []
  wework_locations = parsed_page.css('div.marketCard__CardContainer-dDQEUQ.fFmWjV') # 59 wework locations
  wework_locations.each do |wework_location|
    weworks << wework_location.css('h2.sc-htpNat.hyNoHH').text
  end
  puts weworks.count
  weworks
end

def scraper_full_address
  url = "https://www.wework.com/l/new-york-city--NY"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  weworks = []
  wework_locations = parsed_page.css('div.marketCard__CardContainer-dDQEUQ.fFmWjV') # 59 wework locations
  wework_locations.each do |wework_location|
    weworks << wework_location.css('div.sc-bxivhb.dHqnfT').text
  end
  puts weworks.count
  weworks
end

scraper_address


# first.css('h2.sc-htpNat.hyNoHH').text
# => "199 Water St"

# first.css('div.sc-bxivhb.dHqnfT').text
# => "199 Water Street New York NY 10038"

# EXAMPLE OF GETTING URL:
# parsed_page.css('a')[70].attributes["href"].value
# => "/buildings/1-little-w-12th-st--new-york-city--NY"
## FULL URL --> https://www.wework.com/buildings/1-little-w-12th-st--new-york-city--NY
