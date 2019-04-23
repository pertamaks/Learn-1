Feature: User ingin melakukan registrasi
  Scenario: User masuk ke situs dan melakukan registrasi dengan data asli
    Given User pergi ke situs
    When  User masuk ke menu sign-in
    When User memasukkan email dan membuat akun baru
    Then User akan masuk kedalam menu registrasi
    When User mengisi semua mandatoy field
    When User klik tombol registrasi
    Then Registrasi berhasil dilakukan
