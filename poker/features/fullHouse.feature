Feature: If a player is dealt three of a kind and a pair
  then the player has gotten a full house

  Scenario: the player has been dealt a pair and three of a kind
    When the player is dealt a pair and three of a kind
    Then the player has a full house

    Scenario: the player has not been dealt three of a kind and a pair
      When a player does not have three of a kind and a pair
      Then the player does not have a full house