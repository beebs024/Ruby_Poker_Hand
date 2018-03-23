When(/^a player has five consecutive cards$/) do
  @hand=Hand.new([
                     Card.new(1,"Hearts", 14),
                     Card.new(10,"Spades", 10),
                     Card.new(11,"Hearts", 11),
                     Card.new(12,"Hearts", 12),
                     Card.new(13,"Hearts", 13)
                 ])
end

Then(/^they have a straight$/) do
  expect(@hand.hasStraight).to be(true)
end

When(/^a player does not have five consecutive cards$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Spades", 2),
                     Card.new(6,"Hearts", 6),
                     Card.new(1,"Hearts", 14),
                     Card.new(12,"Hearts", 12)
                 ])
end

Then(/^they do not have a straight$/) do
  expect(@hand.hasStraight).to be(false)
end