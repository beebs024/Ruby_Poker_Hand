When(/^a player is dealt four of one face value$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(5,"Hearts", 5)
                 ])
end

Then(/^a player has a four of a kind$/) do
  expect(@hand.hasFourOfAKind).to be(true)
end

When(/^a player is not dealt four of one face value$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(5,"Hearts", 5),
                     Card.new(5,"Hearts", 5)
                 ])
end

Then(/^the player does not have four of a kind$/) do
  expect(@hand.hasFourOfAKind).to be(false)
end