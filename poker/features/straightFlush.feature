Feature: players can achieve a straight flush provided they have 5 consecutive card values
  with the same suit

  Scenario: the player is dealt a straight and a flush, but not a royal flush
    When the player is dealt both a straight and a flush
    Then the player has a straight flush

    Scenario: the player is not dealt a straight or a flush
      When the player does not have a straight and a flush
      Then the player does not have a straight flush

      Scenario:The player is dealt a royal flush
        When the player is dealt a royal flush, which is still a straight flush
        Then the player's hand value is royal flush