When(/^the player is dealt a pair and three of a kind$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(5,"Hearts", 5),
                     Card.new(5,"Hearts", 5)
                 ])
end

Then(/^the player has a full house$/) do
  expect(@hand.hasFullHouse).to be(true)
end

When(/^a player does not have three of a kind and a pair$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(5,"Hearts", 5),
                     Card.new(6,"Hearts", 6)
                 ])
end

Then(/^the player does not have a full house$/) do
  expect(@hand.hasFullHouse).to be(false)
end