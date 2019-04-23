Given(/^User pergi ke situs$/) do
  @driver.navigate.to "http://automationpractice.com/"
  judul = @driver.title
  puts "Anda membuka #{judul}" if judul == 'My Store'
end

When(/^User masuk ke menu sign\-in$/) do
  btn = @driver.find_element(xpath:'//*[@class="login"]')
  judul = @driver.title
  btn.click if @wait.until{btn.displayed?}
  puts "Anda masuk menu #{judul}"
end

When(/^User memasukkan email dan membuat akun baru$/) do
  fld = @driver.find_element(xpath:'//input[@id="email_create"]')
  puts "Email dimasukkan" do
    sleep(3)
    @wait.until {fld.displayed?}
      fld.click
      fld.send_keys 'jajal1@email.com'
    fld.get_attribute(xpath:'//input[@id="email_create"]') != ""
  end
end

Then(/^User akan masuk kedalam menu registrasi$/) do
  btn = @driver.find_element(id:"SubmitCreate")
  jdl = @driver.title
  puts "Anda masuk ke #{jdl}" do
    btn.click
  end
end

When(/^User mengisi semua mandatoy field$/) do
  radio = @driver.find_element(id:"uniform-id_gender1")
  name1 = @driver.find_element(id:"customer_firstname")
  name2 = @driver.find_element(id:"customer_lastname")
  pssw = @driver.find_element(id:"passwd")
  lhr1 = @driver.find_element(id:"days")
  lhr2 = @driver.find_element(id:"months")
  lhr3 = @driver.find_element(id:"years")
  addss = @driver.find_element(id:"address1")
  puts "Mr terpilih" do
    radio.click if @wait.until{radio.displayed?}
  end
  puts "Nama dimasukkan" do
    name1.send_keys 'fname' if @wait.until{name1.displayed?}
    name2.send_keys 'lname' if @wait.until{name2.displayed?}
  end
  puts "Password dimasukkan" do
    pssw.send_keys 'passw' if @wait.until{pssw.displayed?}
  end
  puts "Tanggal lahir dipilih" do
    lhr1.send_keys '13' if @wait.until{lhr1.displayed?}
  end
  puts "Bulan lahir dipilih" do
    lhr2.send_keys 'november' if @wait.until{lhr2.displayed?}
  end
  puts "Tahun Lahir dipilih" do
    lhr3.send_keys '1990' if @wait.until{lhr3.displayed?}
  end
  puts "Alamat dimasukkan" do
    addss.send_keys 'Jalan Kebajikan No. 14' if @wait.until{addss.displayed?}
  end
end

When(/^User klik tombol registrasi$/) do
  pending
end

Then(/^Registrasi berhasil dilakukan$/) do
  pending
end
