When(/^comparing high cards$/) do
  @hand1=Hand.new([
                      Card.new(8,"Hearts", 8),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
  @hand2=Hand.new([
                      Card.new(8,"Hearts", 8),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand4=Hand.new([
                      Card.new(8,"Hearts", 8),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
  @hand3=Hand.new([
                      Card.new(8,"Hearts", 8),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(13,"Hearts", 13)
                  ])
end

Then(/^the higher card wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
  expect(@hand4.compareHandTo(@hand4, @hand3)).to be(@hand3)
end

When(/^a comparing a high card and a pair$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
  @hand2=Hand.new([
                      Card.new(8,"Hearts", 8),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^the pair wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand1)
end

When(/^comparing a high card and two pair$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6),
                      Card.new(12,"Hearts", 12)
                  ])
  @hand2=Hand.new([
                      Card.new(8,"Hearts", 8),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^the two pair wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand1)
end

When(/^compairing a high card vs three of a kind$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(12,"Hearts", 12)
                  ])
  @hand2=Hand.new([
                      Card.new(8,"Hearts", 8),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^the three of a kind wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand1)
end

When(/^comparing a high card and a straight$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Spades", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
  @hand2=Hand.new([
                      Card.new(8,"Hearts", 8),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^the straight wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand1)
end

When(/^comparing a high card to a flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
  @hand2=Hand.new([
                      Card.new(8,"Hearts", 8),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^the flush wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand1)
end

When(/^comparing a high card to a full house$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6)
                  ])
  @hand2=Hand.new([
                      Card.new(8,"Hearts", 8),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^the full house wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand1)
end

When(/^comparing a high card to four of a kind$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6)
                  ])
  @hand2=Hand.new([
                      Card.new(8,"Hearts", 8),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^the four of a kind wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand1)
end

When(/^comparing a high card to a straight flush$/) do
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
  @hand1=Hand.new([
                      Card.new(8,"Hearts", 8),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^the straight flush wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a high card to a royal flush$/) do
  @hand1=Hand.new([
                     Card.new(1,"Hearts", 14),
                     Card.new(10,"Hearts", 10),
                     Card.new(11,"Hearts", 11),
                     Card.new(12,"Hearts", 12),
                     Card.new(13,"Hearts", 13)
                 ])
  @hand2=Hand.new([
                     Card.new(8,"Hearts", 8),
                     Card.new(2,"Spades", 2),
                     Card.new(6,"Hearts", 6),
                     Card.new(1,"Hearts", 14),
                     Card.new(12,"Hearts", 12)
                 ])
end

Then(/^the royal flush wins$/) do
  expect(@hand1.compareHandTo(@hand1,@hand2)).to be(@hand1)
end

When(/^comparing a pair to two pair$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^two pair wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a pair to three of a kind$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^three of a kind wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a pair to a straight$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Spades", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])

end

Then(/^straight wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a pair for a flush$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(5,"Hearts", 5),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^flush wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2).to be(@hand1))
end

When(/^comparing a pair to full house$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(6,"Hearts", 6),
                      Card.new(8,"Hearts", 8),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(12,"Hearts", 12),
                      Card.new(12,"Hearts", 12)
                  ])
end
Then(/^the full house wins here$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end


When(/^comparing a pair to four of a kind$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(6,"Hearts", 6),
                      Card.new(8,"Hearts", 8),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^four of a kind wins over a pair$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a pair to a straight flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(6,"Hearts", 6),
                      Card.new(8,"Hearts", 8),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
end

Then(/^the straight flush wins over a pair$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end



When(/^comparing two pair to three of a kind$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^the three of a kind wins over two pair$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing two pair and a straight$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Spades", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(1,"Hearts", 14),
                      Card.new(5,"Hearts", 5)
                  ])
end

Then(/^the straight wins over two pair$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing two pair and a flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^the flush wins over two pair$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing two pair and a full house$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(12,"Hearts", 12),
                      Card.new(12,"Hearts", 12),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^the full house wins over two pair$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing two pair and four of a kind$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2)
                  ])
end

Then(/^four of a kind wins over two pair$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing two pair and a straight flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
end

Then(/^straight flush wins over two pair$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing two pair and a royal flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(10,"Hearts", 10),
                      Card.new(11,"Hearts", 11),
                      Card.new(12,"Hearts", 12),
                      Card.new(13,"Hearts", 13)
                  ])
end

Then(/^the royal flush wins over two pair$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing three of a kind and a straight$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(1,"Hearts", 14),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(3,"Hearts", 3),
                      Card.new(2,"Spades", 2),
                      Card.new(4,"Hearts", 4),
                      Card.new(1,"Hearts", 14),
                      Card.new(5,"Hearts", 5)
                  ])
end

Then(/^the straight wins over three of a kind$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing three of a kind and a flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(1,"Hearts", 14),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(1,"Hearts", 14),
                      Card.new(12,"Hearts", 12)
                  ])
end

Then(/^the flush wins over three of a kind$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing three of a kind and a full house$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(1,"Hearts", 14),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2)
                  ])
end

Then(/^the full house wins over three of a kind$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing three of a kind and four of a kind$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(1,"Hearts", 14),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2)
                  ])
end

Then(/^four of a kind wins over three of a kind$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing three of a kind and a straight flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(1,"Hearts", 14),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
end

Then(/^the straight flush wins over three of a kind$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing three of a kind and a royal flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(1,"Hearts", 14),
                      Card.new(6,"Hearts", 6),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(10,"Hearts", 10),
                      Card.new(11,"Hearts", 11),
                      Card.new(12,"Hearts", 12),
                      Card.new(13,"Hearts", 13)
                  ])
end

Then(/^the royal flush wins over three of a kind$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a straight and a flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Spades", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(6,"Hearts", 6)
                  ])
end

Then(/^the flush wins over a straight$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a straight and a full house$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Spades", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6)
                  ])
end

Then(/^the full house wins over the straight$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a straight and four of a kind$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Spades", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6)
                  ])
end

Then(/^four of a kind wins over the straight$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a straight and a straight flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Spades", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
end

Then(/^the straight flush wins over the straight$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a straight and royal flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Spades", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(10,"Hearts", 10),
                      Card.new(11,"Hearts", 11),
                      Card.new(12,"Hearts", 12),
                      Card.new(13,"Hearts", 13)
                  ])
end

Then(/^the royal flush wins over the straight$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a flush and a full house$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(10,"Hearts", 10)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6),
                      Card.new(2,"Hearts", 2)
                  ])
end

Then(/^the full house wins over the flush$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a flush and four of a kind$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(10,"Hearts", 10)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6)
                  ])
end

Then(/^four of a kind wins over the flush$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a flush and a straight flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(10,"Hearts", 10)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
end

Then(/^the straight flush wins over the flush$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a flush and a royal flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(10,"Hearts", 10)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(10,"Hearts", 10),
                      Card.new(11,"Hearts", 11),
                      Card.new(12,"Hearts", 12),
                      Card.new(13,"Hearts", 13)
                  ])
end

Then(/^the royal flush wins over the flush$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a full house and four of a kind$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6)
                  ])
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6)
                  ])
end

Then(/^four of a kind wins over the full house$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a full house and a straight flush$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
end

Then(/^the straight flush wins over the full house$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a full house and a royal flush$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(10,"Hearts", 10),
                      Card.new(11,"Hearts", 11),
                      Card.new(12,"Hearts", 12),
                      Card.new(13,"Hearts", 13)
                  ])
end

Then(/^the royal flush wins over the full house$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing four of a kind and a straight flush$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
end

Then(/^the straight flush wins over four of a kind$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing four of a kind and a royal flush$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(10,"Hearts", 10),
                      Card.new(11,"Hearts", 11),
                      Card.new(12,"Hearts", 12),
                      Card.new(13,"Hearts", 13)
                  ])
end

Then(/^the royal flush wins over four of a kind$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a straight flush to a royal flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(3,"Hearts", 3),
                      Card.new(4,"Hearts", 4),
                      Card.new(5,"Hearts", 5)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(10,"Hearts", 10),
                      Card.new(11,"Hearts", 11),
                      Card.new(12,"Hearts", 12),
                      Card.new(13,"Hearts", 13)
                  ])
end

Then(/^the royal flush wins over the straight flush$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^comparing a pair to a royal flush$/) do
  @hand1=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(1,"Spades", 1),
                      Card.new(6,"Hearts", 6),
                      Card.new(8,"Hearts", 8),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand2=Hand.new([
                      Card.new(1,"Hearts", 14),
                      Card.new(10,"Hearts", 10),
                      Card.new(11,"Hearts", 11),
                      Card.new(12,"Hearts", 12),
                      Card.new(13,"Hearts", 13)
                  ])
end

Then(/^the royal flush wins over the pair$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^both players have a four of a kind$/) do
  @hand1=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6)
                  ])
  @hand2=Hand.new([
                      Card.new(12,"Hearts", 12),
                      Card.new(12,"Spades", 12),
                      Card.new(12,"Hearts", 12),
                      Card.new(12,"Hearts", 12),
                      Card.new(6,"Hearts", 6)
                  ])
end

Then(/^the higher four of a kind wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand2)
end

When(/^both players have a three of a kind$/) do
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(12,"Hearts", 12),
                      Card.new(6,"Hearts", 6)
                  ])
  @hand1=Hand.new([
                      Card.new(12,"Hearts", 12),
                      Card.new(12,"Spades", 12),
                      Card.new(12,"Hearts", 12),
                      Card.new(2,"Hearts", 2),
                      Card.new(6,"Hearts", 6)
                  ])
end

Then(/^the player with the higher three of a kind wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand1)
end

When(/^both players have a full house$/) do
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(2,"Hearts", 2),
                      Card.new(12,"Hearts", 12),
                      Card.new(12,"Hearts", 12)
                  ])
  @hand1=Hand.new([
                      Card.new(12,"Hearts", 12),
                      Card.new(12,"Spades", 12),
                      Card.new(12,"Hearts", 12),
                      Card.new(6,"Hearts", 6),
                      Card.new(6,"Hearts", 6)
                  ])
end

Then(/^the three of a kind determines the winner$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand1)
end

When(/^Both players have two pair$/) do
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(8,"Hearts", 8),
                      Card.new(12,"Hearts", 12),
                      Card.new(12,"Hearts", 12)
                  ])
  @hand1=Hand.new([
                      Card.new(13,"Hearts", 13),
                      Card.new(13,"Spades", 13),
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Hearts", 2)
                  ])
end

Then(/^the winner is the one with the higher pair$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand1)
end

When(/^both players have the same high pair but different low pair$/) do
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(8,"Hearts", 8),
                      Card.new(13,"Hearts", 13),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand1=Hand.new([
                      Card.new(13,"Hearts", 13),
                      Card.new(13,"Spades", 13),
                      Card.new(1,"Hearts", 14),
                      Card.new(3,"Hearts", 3),
                      Card.new(3,"Hearts", 3)
                  ])
end

Then(/^the player with the higher low pair wins$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand1)
end

When(/^both players have the same high and low pairs$/) do
  @hand2=Hand.new([
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Spades", 2),
                      Card.new(8,"Hearts", 8),
                      Card.new(13,"Hearts", 13),
                      Card.new(13,"Hearts", 13)
                  ])
  @hand1=Hand.new([
                      Card.new(13,"Hearts", 13),
                      Card.new(13,"Spades", 13),
                      Card.new(1,"Hearts", 14),
                      Card.new(2,"Hearts", 2),
                      Card.new(2,"Hearts", 2)
                  ])
end

Then(/^the winner is the player with higher last card$/) do
  expect(@hand1.compareHandTo(@hand1, @hand2)).to be(@hand1)
end