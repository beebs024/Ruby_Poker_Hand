When(/^the player is dealt both a straight and a flush$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(3,"Hearts", 3),
                     Card.new(4,"Hearts", 4),
                     Card.new(5,"Hearts", 5),
                     Card.new(6,"Hearts", 6)
                 ])
end

Then(/^the player has a straight flush$/) do
  expect(@hand.hasStraightFlush).to be(true)
end

When(/^the player does not have a straight and a flush$/) do
  @hand=Hand.new([
                     Card.new(1,"Spades", 1),
                     Card.new(3,"Hearts", 3),
                     Card.new(4,"Hearts", 4),
                     Card.new(5,"Hearts", 5),
                     Card.new(6,"Hearts", 6)
                 ])
end

Then(/^the player does not have a straight flush$/) do
  expect(@hand.hasStraightFlush).to be(false)
end

When(/^the player is dealt a royal flush, which is still a straight flush$/) do
  @hand=Hand.new([
                     Card.new(1,"Hearts", 14),
                     Card.new(10,"Hearts", 10),
                     Card.new(11,"Hearts", 11),
                     Card.new(12,"Hearts", 12),
                     Card.new(13,"Hearts", 13)
                 ])
end

Then(/^the player's hand value is royal flush$/) do
  expect(@hand.hasStraightFlush).to be(true)
end