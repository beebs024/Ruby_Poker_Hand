Feature: determines whether a player has five consecutive cards
  which would mean they have a striaght

  Scenario:Player has five consecutive cards
    When a player has five consecutive cards
    Then they have a straight

    Scenario: Player does not have five consecutive cards
      When a player does not have five consecutive cards
      Then they do not have a straight