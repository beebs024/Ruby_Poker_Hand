When(/^A player has a royal flush$/) do
  @hand=Hand.new([
                     Card.new(1,"Hearts", 14),
                     Card.new(10,"Hearts", 10),
                     Card.new(11,"Hearts", 11),
                     Card.new(12,"Hearts", 12),
                     Card.new(13,"Hearts", 13)
                 ])
end

Then(/^the value is ten$/) do
  expect(@hand.handToValue).to be(10)
end

When(/^the player has a hand with straight flush$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(3,"Hearts", 3),
                     Card.new(4,"Hearts", 4),
                     Card.new(5,"Hearts", 5),
                     Card.new(6,"Hearts", 6)
                 ])
end

Then(/^the value is nine$/) do
  expect(@hand.handToValue).to be(9)
end

When(/^the player has four of a kind$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(5,"Hearts", 5)
                 ])
end

Then(/^the value is eight$/) do
  expect(@hand.handToValue).to be(8)
end

When(/^the player has a hand with full house$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(5,"Hearts", 5),
                     Card.new(5,"Hearts", 5)
                 ])
end

Then(/^the value is seven$/) do
  expect(@hand.handToValue).to be(7)
end

When(/^the player has a flush$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(4,"Hearts", 4),
                     Card.new(6,"Hearts", 6),
                     Card.new(1,"Hearts", 14),
                     Card.new(12,"Hearts", 12)
                 ])
end

Then(/^the value is six$/) do
  expect(@hand.handToValue).to be(6)
end

When(/^the player hand has a straight$/) do
  @hand=Hand.new([
                     Card.new(1,"Hearts", 14),
                     Card.new(10,"Spades", 10),
                     Card.new(11,"Hearts", 11),
                     Card.new(12,"Hearts", 12),
                     Card.new(13,"Hearts", 13)
                 ])
end

Then(/^the value is five$/) do
  expect(@hand.handToValue).to be(5)
end

When(/^the player hand has three of a kind$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Spades", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(5,"Hearts", 5),
                     Card.new(6,"Hearts", 6)
                 ])
end

Then(/^the value is four$/) do
  expect(@hand.handToValue).to be(4)
end

When(/^the player hand has two pair$/) do
  @hand=Hand.new([
                     Card.new(3,"Spades", 3),
                     Card.new(3,"Hearts", 3),
                     Card.new(4,"Clubs", 4),
                     Card.new(4,"Hearts", 4),
                     Card.new(6,"Hearts", 6)
                 ])
end

Then(/^the value is three$/) do
  expect(@hand.handToValue).to be(3)
end

When(/^the player hand has a pair$/) do
  @hand=Hand.new([
                     Card.new(2,"Hearts", 2),
                     Card.new(2,"Hearts", 2),
                     Card.new(4,"Hearts", 4),
                     Card.new(5,"Hearts", 5),
                     Card.new(6,"Spades", 6)
                 ])
end

Then(/^the value is two$/) do
  expect(@hand.handToValue).to be(2)
end

When(/^the player hand does not have any other card combinations$/) do
  @hand=Hand.new([
                     Card.new(8,"Hearts", 8),
                     Card.new(2,"Spades", 2),
                     Card.new(6,"Hearts", 6),
                     Card.new(1,"Hearts", 14),
                     Card.new(12,"Hearts", 12)
                 ])
end

Then(/^the value is one$/) do
  expect(@hand.handToValue).to be(1)
end