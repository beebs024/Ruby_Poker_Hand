Feature: compares two hands and determines the winning hand

  Scenario: high cards
    When comparing high cards
    Then the higher card wins

  Scenario: high card vs pair
    When a comparing a high card and a pair
    Then the pair wins

  Scenario:high card vs two pair
    When comparing a high card and two pair
    Then the two pair wins

  Scenario: high card vs three of a kind
    When compairing a high card vs three of a kind
    Then the three of a kind wins

  Scenario: high card vs straight
    When comparing a high card and a straight
    Then the straight wins

  Scenario: high card vs flush
    When comparing a high card to a flush
    Then the flush wins

  Scenario: high card vs full house
    When comparing a high card to a full house
    Then the full house wins

  Scenario: high card vs four of a kind
    When comparing a high card to four of a kind
    Then the four of a kind wins

  Scenario: high card vs straight flush
    When comparing a high card to a straight flush
    Then the straight flush wins

  Scenario: high card vs royal flush
    When comparing a high card to a royal flush
    Then the royal flush wins

  Scenario: pair vs two pair
    When comparing a pair to two pair
    Then two pair wins

  Scenario: pair vs three of a kind
    When comparing a pair to three of a kind
    Then three of a kind wins

  Scenario: pair vs straight
    When comparing a pair to a straight
    Then straight wins

  Scenario: pair vs flush
    When comparing a pair for a flush
    Then the flush wins

  Scenario: pair vs full house
    When comparing a pair to full house
    Then the full house wins here

  Scenario: pair vs four of a kind
    When comparing a pair to four of a kind
    Then four of a kind wins over a pair

  Scenario: pair vs straight flush
    When comparing a pair to a straight flush
    Then the straight flush wins over a pair

  Scenario: pair vs royal flush
    When comparing a pair to a royal flush
    Then the royal flush wins over the pair

  Scenario: two pair vs three of a kind
    When comparing two pair to three of a kind
    Then the three of a kind wins over two pair

  Scenario: two pair vs straight
    When comparing two pair and a straight
    Then the straight wins over two pair

  Scenario: two pair vs flush
    When comparing two pair and a flush
    Then the flush wins over two pair

  Scenario: two pair vs full house
    When comparing two pair and a full house
    Then the full house wins over two pair

  Scenario: two pair vs four of a kind
    When comparing two pair and four of a kind
    Then four of a kind wins over two pair

  Scenario: two pair vs straight flush
    When comparing two pair and a straight flush
    Then straight flush wins over two pair

  Scenario: two pair vs royal flush
    When comparing two pair and a royal flush
    Then the royal flush wins over two pair

  Scenario: three of a kind vs straight
    When comparing three of a kind and a straight
    Then the straight wins over three of a kind

  Scenario: three of a kind vs flush
    When comparing three of a kind and a flush
    Then the flush wins over three of a kind

  Scenario: three of a kind vs full house
    When comparing three of a kind and a full house
    Then the full house wins over three of a kind

  Scenario: three of a kind vs four of a kind
    When comparing three of a kind and four of a kind
    Then four of a kind wins over three of a kind

  Scenario: three of a kind vs straight flush
    When comparing three of a kind and a straight flush
    Then the straight flush wins over three of a kind

  Scenario: three of a kind vs royal flush
    When comparing three of a kind and a royal flush
    Then the royal flush wins over three of a kind

  Scenario: straight vs flush
    When comparing a straight and a flush
    Then the flush wins over a straight

  Scenario: straight vs full house
    When comparing a straight and a full house
    Then the full house wins over the straight

  Scenario: straight vs four of a kind
    When comparing a straight and four of a kind
    Then four of a kind wins over the straight

  Scenario: straight vs straight flush
    When comparing a straight and a straight flush
    Then the straight flush wins over the straight

  Scenario: straight vs royal flush
    When comparing a straight and royal flush
    Then the royal flush wins over the straight

  Scenario: flush vs full house
    When comparing a flush and a full house
    Then the full house wins over the flush

  Scenario: flush vs four of a kind
    When comparing a flush and four of a kind
    Then four of a kind wins over the flush

  Scenario: flush vs straight flush
    When comparing a flush and a straight flush
    Then the straight flush wins over the flush

  Scenario: flush vs royal flush
    When comparing a flush and a royal flush
    Then the royal flush wins over the flush

  Scenario: full house vs four of a kind
    When comparing a full house and four of a kind
    Then four of a kind wins over the full house

  Scenario: full house vs straight flush
    When comparing a full house and a straight flush
    Then the straight flush wins over the full house

  Scenario: full house vs royal flush
    When comparing a full house and a royal flush
    Then the royal flush wins over the full house

  Scenario: four of a kind vs straight flush
    When comparing four of a kind and a straight flush
    Then the straight flush wins over four of a kind

  Scenario: four of a kind vs royal flush
    When comparing four of a kind and a royal flush
    Then the royal flush wins over four of a kind

  Scenario: straight flush vs royal flush
    When comparing a straight flush to a royal flush
    Then the royal flush wins over the straight flush

    Scenario: Both players have four of a kind.
      When both players have a four of a kind
      Then the higher four of a kind wins

      Scenario: Both players have three of a kind
        When both players have a three of a kind
        Then the player with the higher three of a kind wins

        Scenario: Both players have a full house
          When both players have a full house
          Then the three of a kind determines the winner

          Scenario: Both players have two pair
            When Both players have two pair
            Then the winner is the one with the higher pair

            Scenario: Same High pair different low pair
              When both players have the same high pair but different low pair
              Then the player with the higher low pair wins

              Scenario: Same high and low pairs
                When both players have the same high and low pairs
                Then the winner is the player with higher last card

