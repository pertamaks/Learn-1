Given(/^User enter the website$/) do
  @driver.navigate.to "http://automationpractice.com/"
  judul = @driver.title
  puts "Anda membuka #{judul}" if judul == 'My Store'
end

And(/^User go to login page$/) do
  btn = @driver.find_element(xpath:'//*[@class="login"]')
  judul = @driver.title
  btn.click if @wait.until{btn.displayed?}
  puts "Anda masuk menu #{judul}"
end

When(/^User enter the '([^"]*)' and '([^"]*)'$/) do |account, password|
  mel = @driver.find_element(css:'#email')
  wod = @driver.find_element(css:'#passwd')
  mel.send_keys(account) if @wait.until(mel.displayed?)
  wod.send_keys(password) if @wait.until(wod.displayed?)
  puts "Email dan Password dimasukkan" #if @wait.until{mel.get_attribute() != ""}
end

Then(/^User reach the my account page$/) do
  pending
end