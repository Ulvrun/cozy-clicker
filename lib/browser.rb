
class Browser

  require 'selenium-webdriver'

  attr_reader :browser

  def initialize(browser)

    # parameter 'browser' could receive sequence of symbols as argument - :ff, :firefox, :chrome
    puts "Look what's happened! You've opened a browser: #{browser}"
    @browser = Selenium::WebDriver.for(browser)

  end

  public

  def open_url(start_url)

    puts "Let's see what is going on with #{start_url}. I heard about this site and its pretty nice!"
    browser.get(start_url)

  end

  def close_browser

    puts 'Session is ended: Parent and Child browser windows are closed. Make a coffee and relax :)'
    browser.quit

  end

  private

end

