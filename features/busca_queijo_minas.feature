Feature: Search for Queijo Minas on Google
    Scenario: Consultar por Queijo Minas
        Given I am at Google's homepage
        When I search for "Queijo Minas"
        Then the page title should be "Queijo Minas - Pesquisa Google"
