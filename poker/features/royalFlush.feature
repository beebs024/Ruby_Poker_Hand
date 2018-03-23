Feature: a player dealt ten, jack, queen, king and ace of the same suit
  has a royal flush

  Scenario: A player is dealt the appropriate cards for a royal flush
    When a player is dealt the appropriate card values and suits
    Then the player has a royal flush

    Scenario: A player not dealt the required cards does not have a royal flush
      When a player is dealt anything other than ten, jack, queen, king, ace of the same suit
      Then the player does not have a royal flush