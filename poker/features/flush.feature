Feature: flush in the game of poker
  Scenario: Successfully draw a flush
    When I have five cards of the same suit
    Then I have a flush

    Scenario: Do not have a flush
      When I have less than five cards with the same suit
      Then I do not have a flush
