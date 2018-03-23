Feature: A high card is what determines the winner if both players have the same
  hand value.  This can mean that it is a high card that is also used in the creation of
  other hands

  Scenario: a player has no other hand combinations and does not have an ace
    When a player does not have any other hand combinations
    Then their high card is the card with the highest value

  Scenario: A player with other hand combinations also has a high card
      When a player has other hand combinations
      Then their high card is still the card with the highest value

  Scenario: a player has an ace as high card
    When a player has an ace as a high card
    Then the high card value returned is fourteen
