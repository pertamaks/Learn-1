Feature: User ingin melakukan registrasi
  Scenario Outline: User masuk ke situs dan melakukan registrasi dengan data asli
    Given User pergi ke situs
    And  User masuk ke menu sign-in
    And User memasukkan "<email>" dan membuat akun baru
    Then User akan masuk kedalam menu registrasi
    And User mengisi semua mandatoy field
    And User klik tombol registrasi
    Then Registrasi berhasil dilakukan
    Examples:
    |email|
    |jajal1@email.com|