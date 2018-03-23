When(/^I have five cards of the same suit$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(4,"Hearts", 4),
                     Card.new(6,"Hearts", 6),
                     Card.new(1,"Hearts", 14),
                     Card.new(12,"Hearts", 12)
                 ])
end

Then(/^I have a flush$/) do
  expect(@hand.hasFlush).to be(true)
end

When(/^I have less than five cards with the same suit$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(4,"Spades", 4),
                     Card.new(6,"Hearts", 6),
                     Card.new(1,"Hearts", 14),
                     Card.new(12,"Hearts", 12)
                 ])
end

Then(/^I do not have a flush$/) do
  expect(@hand.hasFlush).to be(false)
end