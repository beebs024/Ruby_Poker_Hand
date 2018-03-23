Feature: if a player is dealt two copies of two different face values then
  they have two pair

  Scenario: A player is dealt two copies of two different face values
    When a player is dealt two copies of two different face values
    Then the player has two pair

    Scenario: A play who is not dealt two copies of two different face values
      When a player does not ahve two copies of two different face values
      Then the player does not have two pair