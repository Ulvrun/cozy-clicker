require_relative 'lib/browser'
require_relative 'lib/element'

browser = Browser.new(:chrome)

browser.open_url('http://www.google.com')

search = Element.new('Search',"//input[@id='lst-ib']")

puts "I found it! Your element with the name #{search.name} is hiding under #{search.element} identifier!"

browser.close_browser