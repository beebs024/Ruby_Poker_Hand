Feature: As a player, obtaining three cards of the same value
  results in a three of a kind

  Scenario: The player is dealt three of the same face value
    When a player is dealt three of the same face value
    Then the player has a three of a kind

    Scenario: the player is not dealt three of the same face value
      When a player is not dealt three of the same face value
      Then the player does not have a three of a kind