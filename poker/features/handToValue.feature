Feature: turns the true/false returns of a hand checks into a numeric value

  Scenario: Has a royal flush
    When A player has a royal flush
    Then the value is ten

  Scenario: player hand has a straight flush
    When the player has a hand with straight flush
    Then the value is nine

  Scenario: has four of a kind
    When the player has four of a kind
    Then the value is eight

  Scenario: has a full house
    When the player has a hand with full house
    Then the value is seven

  Scenario: has a flush
    When the player has a flush
    Then the value is six

  Scenario: has a straight
    When the player hand has a straight
    Then the value is five

  Scenario: has three of a kind
    When the player hand has three of a kind
    Then the value is four

  Scenario: has two pair
    When the player hand has two pair
    Then the value is three

  Scenario: has pair
    When the player hand has a pair
    Then the value is two

  Scenario: has no card combinations
    When the player hand does not have any other card combinations
    Then the value is one
