Given(/^User pergi ke situs$/) do
  @driver.navigate.to "http://automationpractice.com/"
  judul = @driver.title
  puts "Anda membuka #{judul}" if judul == 'My Store'
end

And(/^User masuk ke menu sign\-in$/) do
  btn = @driver.find_element(xpath:'//*[@class="login"]')
  judul = @driver.title
  btn.click if @wait.until{btn.displayed?}
  puts "Anda masuk menu #{judul}"
end

And(/^User memasukkan "([^"]*)" dan membuat akun baru$/) do |email|
  fld = @driver.find_element(id:'email_create')
  puts "Email dimasukkan" do
  fld.send_keys email if @wait.until{fld.displayed?}
  end
end

Then(/^User akan masuk kedalam menu registrasi$/) do
  btn = @driver.find_element(id:'SubmitCreate')
  jdl = @driver.title
  btn.click
  puts "Anda masuk ke #{jdl}" if @wait.until{jdl.displayed?}
end

And(/^User mengisi semua mandatoy field$/) do
  radio = @driver.find_element(id:'uniform-id_gender1')
  name1 = @driver.find_element(id:'customer_firstname')
  name2 = @driver.find_element(id:'customer_lastname')
  pssw = @driver.find_element(id:'passwd')
  lhr1 = @driver.find_element(id:'days')
  lhr2 = @driver.find_element(id:'months')
  lhr3 = @driver.find_element(id:'years')
  addss = @driver.find_element(id:'address1')
  puts "Mr terpilih" do
    radio.click if @wait.until{radio.displayed?}
  end
  puts "Nama dimasukkan" do
    name1.send_keys fname if @wait.until{name1.displayed?}
    name2.send_keys lname if @wait.until{name2.displayed?}
  end
  puts "Password dimasukkan" do
    pssw.send_keys passw if @wait.until{pssw.displayed?}
  end
end

And(/^User klik tombol registrasi$/) do
  pending
end

Then(/^Registrasi berhasil dilakukan$/) do
  pending
end