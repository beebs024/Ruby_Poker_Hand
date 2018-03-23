require_relative("card")
class Hand
  @hand=[]
  def initialize(array)
    @hand=array
    @hand = @hand.sort_by{|card| card.value}
    @uniqueValue = @hand.uniq{|card| card.value}
    @uniqueSuit = @hand.uniq{|card| card.suit}
    @numberOfEachFaceVal= Hash.new(0)
    @duplicateCard = @hand.each do |card|
      @numberOfEachFaceVal[card.value] +=1
        end
    end

  def highCardCheck
    if @hand[0].value==1
      return 1
    else
      return @hand[-1].value
    end
  end

  def hasPair
    if @uniqueValue.length==4&&@numberOfEachFaceVal.has_value?(2)
      return true
    else
      return false
    end
  end

  def hasTwoPair
    if @uniqueValue.length==3&&@numberOfEachFaceVal.has_value?(2)
      return true
    else
      return false
    end
  end

  def hasThreeOfKind
    if @uniqueValue.length==3&&@numberOfEachFaceVal.has_value?(3)
      return true
    else
      return false
    end
  end

  def hasStraight
    if @hand[-1].value!=14
      @hand.each_cons(2).all?{|card1, card2| card2.value==card1.value+1}
    elsif @hand[-1].value==14
      tempHand=@hand[0..3]
      tempHand.each_cons(2).all?{|card1, card2| card2.value==card1.value+1} && (@hand[3].value==13||@hand[3].value==5)
    end
  end

  def hasFlush
    if @uniqueSuit.length==1
      return true
    else
      return false
    end
  end

  def hasFullHouse
    if @uniqueValue.length==2&&@numberOfEachFaceVal.has_value?(3)&&@numberOfEachFaceVal.has_value?(2)
      return true
    else
      return false
    end
  end

  def hasFourOfAKind
    if @uniqueValue.length==2&&@numberOfEachFaceVal.has_value?(4)
      return true
    else
      return false
    end
  end

  def hasStraightFlush
    if hasStraight&&hasFlush
      return true
    else
      return false
    end
  end

def hasRoyalFlush
  if hasFlush&&hasStraight&&@hand[0].value==10&&@hand[-1].value==14
    return true
  else
    return false
  end
end

  def handToValue
    if hasRoyalFlush
      return 10
    elsif hasStraightFlush
      return 9
    elsif hasFourOfAKind
      return 8
    elsif hasFullHouse
      return 7
    elsif hasFlush
      return 6
    elsif hasStraight
      return 5
    elsif hasThreeOfKind
      return 4
    elsif hasTwoPair
      return 3
    elsif hasPair
      return 2
    else
      return 1
    end
  end

  def handsAreTied(hand1, hand2)
    if hand1.handToValue==8
      if hand1.grabFourOfKindFaceVal>hand2.grabFourOfKindFaceVal
        return hand1
      else
        return hand2
      end
    elsif hand1.handToValue==4 or hand1.handToValue==7
      if hand1.grabThreeOfKindValue>hand2.grabThreeOfKindValue
        return hand1
      elsif hand1.grabThreeOfKindValue<hand2.grabThreeOfKindValue
        return hand2
      end
    elsif hand1.handToValue==3 or hand1.handToValue==2
       compareOneOrTwoPairs(hand1, hand2)
    else
      everythingIsSomehowTiedNowGrabOverallHighCard(hand1, hand2)
    end
  end

  def everythingIsSomehowTiedNowGrabOverallHighCard(hand1, hand2)
    for i in (4).downto(0)
      if(hand1.grabHighCard(i)>hand2.grabHighCard(i))
        return hand1
      elsif(hand1.grabHighCard(i)<hand2.grabHighCard(i))
        return hand2
      end
    end
  end

  def grabFourOfKindFaceVal
    @numberOfEachFaceVal.select{|hash, key| key==4}.keys[0]
  end

  def grabThreeOfKindValue
     @numberOfEachFaceVal.select{|hash, key| key==3}.keys[0]

  end

  def grabPairValue
     @numberOfEachFaceVal.select{|hash, key| key==2}
  end
  def grabTwoPairFinalCard
    @numberOfEachFaceVal.select{|hash, key| key==1}.keys[0]
  end

  def grabHighCard(indexOfValue)
    @hand[indexOfValue].value
  end

  def compareOneOrTwoPairs(hand1, hand2)
    hand1LowPair = hand1.grabPairValue.keys[0]
    hand1HighPair = hand1.grabPairValue.keys[1]
    hand2LowPair = hand2.grabPairValue.keys[0]
    hand2HighPair = hand2.grabPairValue.keys[1]
    if hand1HighPair==hand2HighPair
      if hand1LowPair>hand2LowPair
        return hand1
      elsif hand1LowPair<hand2LowPair
        return hand2
      else
        if (hand1.grabTwoPairFinalCard>hand2.grabTwoPairFinalCard)
          return hand1
        else
          return hand2
        end
      end
    elsif hand1HighPair>hand2HighPair
      return hand1
    elsif hand1HighPair<hand2HighPair
      return hand2
    end
  end

  def compareHandTo(hand1, hand2)

    if hand1.handToValue>hand2.handToValue
      return hand1
    elsif hand1.handToValue<hand2.handToValue
      return hand2
    else
      handsAreTied(hand1, hand2)
    end
  end
end