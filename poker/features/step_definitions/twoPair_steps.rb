When(/^a player is dealt two copies of two different face values$/) do
  @hand=Hand.new([
                     Card.new(3,"Spades", 3),
                     Card.new(3,"Hearts", 3),
                     Card.new(4,"Clubs", 4),
                     Card.new(4,"Hearts", 4),
                     Card.new(6,"Hearts", 6)
                 ])
end

Then(/^the player has two pair$/) do
  expect(@hand.hasTwoPair).to be(true)
end

When(/^a player does not ahve two copies of two different face values$/) do
  @hand=Hand.new([
                     Card.new(3,"Spades", 3),
                     Card.new(3,"Hearts", 3),
                     Card.new(4,"Clubs", 4),
                     Card.new(4,"Hearts", 4),
                     Card.new(4,"Hearts", 4)
                 ])
end

Then(/^the player does not have two pair$/) do
  expect(@hand.hasTwoPair).to be(false)
end