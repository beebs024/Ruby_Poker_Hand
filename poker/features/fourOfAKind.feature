Feature: Determines whether a player has four of a kind

  Scenario:A player was dealt four copies of the same face value
    When a player is dealt four of one face value
    Then a player has a four of a kind

    Scenario: A player was not dealt four of one face value
      When a player is not dealt four of one face value
      Then the player does not have four of a kind