When(/^I have two of the same card$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(4,"Hearts", 4),
                     Card.new(5,"Hearts", 5),
                     Card.new(6,"Hearts", 6)
                 ])
end

Then(/^it is a pair$/) do
  expect(@hand.hasPair).to be(true)
end

When(/^I have more or less than two of the same card value$/) do
  @hand=Hand.new([
                     Card.new(1,"Hearts", 14),
                     Card.new(2,"Hearts", 2),
                     Card.new(4,"Hearts", 4),
                     Card.new(5,"Hearts", 5),
                     Card.new(6,"Hearts", 6)
                 ])
end

Then(/^it is not a pair$/) do
  expect(@hand.hasPair).to be(false)
end