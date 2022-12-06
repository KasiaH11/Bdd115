Feature: Logowanie do aplikacji

  Jako uzytkownik chce miec funkcjonalnosc
  logowania do aplikacji aby moc korzystac
  z zaawansowanych funkcji systemu

  Scenario: Poprawne logowanie do aplikacji
    Given Uzytkownik otwiera przegladarke
    And Uzytkownik wpisuje adres strony internetowej
    When Uzytkownik wpisuje poprawny login
    And Uzytkownik wpisuje poprawen haslo
    And Uzytkownik klika przycisk Login
    Then Uzytkownik zostaje poprawnie zalogowany do aplikacji

