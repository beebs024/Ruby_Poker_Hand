When(/^a player is dealt three of the same face value$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Spades", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(5,"Hearts", 5),
                     Card.new(6,"Hearts", 6)
                 ])
end

Then(/^the player has a three of a kind$/) do
  expect(@hand.hasThreeOfKind).to be(true)
end

When(/^a player is not dealt three of the same face value$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Spades", 2),
                     Card.new(3,"Hearts", 3),
                     Card.new(5,"Hearts", 5),
                     Card.new(6,"Hearts", 6)
                 ])
end

Then(/^the player does not have a three of a kind$/) do
  expect(@hand.hasThreeOfKind).to be(false)
end