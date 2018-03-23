When(/^a player has other hand combinations$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Spades", 2),
                     Card.new(6,"Hearts", 6),
                     Card.new(1,"Hearts", 14),
                     Card.new(12,"Hearts", 12)
                 ])
end

Then(/^their high card is still the card with the highest value$/) do
  expect(@hand.highCardCheck).to be(14)
end

When(/^a player has an ace as a high card$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(4,"Spades", 4),
                     Card.new(6,"Hearts", 6),
                     Card.new(1,"Hearts", 14),
                     Card.new(12,"Hearts", 12)
                 ])
end

Then(/^the high card value returned is fourteen$/) do
  expect(@hand.highCardCheck).to be(14)
end

When(/^a player does not have any other hand combinations$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(4,"Spades", 4),
                     Card.new(6,"Hearts", 6),
                     Card.new(5,"Hearts", 5),
                     Card.new(12,"Hearts", 12)
                 ])
end

Then(/^their high card is the card with the highest value$/) do
  expect(@hand.highCardCheck).to be(12)
end