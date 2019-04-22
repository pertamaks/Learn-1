Before do

  @driver = Selenium::WebDriver.for :chrome
  @wait = Selenium::WebDriver::Wait.new(:timeout=>10)
  @driver.manage.timeouts.implicit_wait = 3

end

After do |scenario|

  if scenario.failed?
    gmbr = scenario.name
    @driver.save_screenshot(gmbr+".png")
    embed(gmbr+".png", "image/.png")
  end

  @driver.quit

end