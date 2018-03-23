When(/^a player is dealt the appropriate card values and suits$/) do
  @hand=Hand.new([
                     Card.new(1,"Hearts", 14),
                     Card.new(10,"Hearts", 10),
                     Card.new(11,"Hearts", 11),
                     Card.new(12,"Hearts", 12),
                     Card.new(13,"Hearts", 13)
                 ])
end

Then(/^the player has a royal flush$/) do
  expect(@hand.hasRoyalFlush).to be(true)
end

When(/^a player is dealt anything other than ten, jack, queen, king, ace of the same suit$/) do
  @hand=Hand.new([
                     Card.new(1,"Spades", 1),
                     Card.new(10,"Hearts", 10),
                     Card.new(11,"Clubs", 11),
                     Card.new(12,"Hearts", 12),
                     Card.new(9,"Hearts", 9)
                 ])
end

Then(/^the player does not have a royal flush$/) do
  expect(@hand.hasRoyalFlush).to be(false)
end