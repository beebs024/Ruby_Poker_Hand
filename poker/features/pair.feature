Feature: Having two cards with the same value results in a pair

  Scenario: Having two of the same value card results in a pair
    When I have two of the same card
    Then it is a pair

    Scenario: Not having exactly two of a card value
      When I have more or less than two of the same card value
      Then it is not a pair