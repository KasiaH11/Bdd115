@now
Feature: Logowanie do aplikacji

  Jako uzytkownik chce miec funkcjonalnosc
  logowania do aplikacji aby moc korzystac
  z zaawansowanych funkcji systemu

  Scenario: Poprawne logowanie do aplikacji
    Given Uzytkownik wpisuje adres strony internetowej
    When Uzytkownik wpisuje poprawny login
    And Uzytkownik wpisuje poprawen haslo
    And Uzytkownik klika przycisk Login
    Then Uzytkownik zostaje poprawnie zalogowany do aplikacji


    Scenario: Poprawne logowanie do aplikacji - wersja druga
      Given Uzytkownik przechodzi na strone "https://the-internet.herokuapp.com/login"
      When Uzytkownik wprowadza login "tomsmith"
      And Uzytkownik wprowadza haslo "SuperSecretPassword!"
      And Uzytkownik klika przycisk Login
      Then Uzytkownik zostaje poprawnie zalogowany do aplikacji



  Scenario: Niepoprawne logowanie do aplikacji - wersja druga
    Given Uzytkownik przechodzi na strone "https://the-internet.herokuapp.com/login"
    When Uzytkownik wprowadza login "tomsmith"
    And Uzytkownik wprowadza haslo "blablabla"
    And Uzytkownik klika przycisk Login
    Then Uzytkownik nie zostaje poprawnie zalogowany do aplikacji

  Scenario: Niepoprawne logowanie do aplikacji - wersja trzecia
    Given Uzytkownik przechodzi na strone "https://the-internet.herokuapp.com/login"
    When Uzytkownik wprowadza login "blablabla"
    And Uzytkownik wprowadza haslo "SuperSecretPassword!"
    And Uzytkownik klika przycisk Login
    Then Uzytkownik nie zostaje poprawnie zalogowany do aplikacji

  Scenario: Niepoprawne logowanie do aplikacji
    Given Uzytkownik wpisuje adres strony internetowej
    When Uzytkownik wpisuje poprawny login
    And Uzytkownik wpisuje niepoprawen haslo
    And Uzytkownik klika przycisk Login
    Then Uzytkownik nie zostaje poprawnie zalogowany do aplikacji

    @now
    Scenario Outline: Niepoprawene logowanie - wersja cztery
      Given Uzytkownik przechodzi na strone "https://the-internet.herokuapp.com/login"
      When Uzytkownik wprowadza loginek <loginek>
      And Uzytkownik wprowadza haslko <haselko>
      And Uzytkownik klika przycisk Login
      Then Uzytkownik nie zostaje poprawnie zalogowany do aplikacji

      Examples:
      | loginek | haselko |
      | tomsmith | blablabla |
      | blablabla | SuperSecretPassword! |
      | blablabla | blablabla |