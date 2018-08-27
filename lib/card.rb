
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

    if @value <= 13 && @value > 0
      @value = value
    else
      raise ArgumentError.new("Value is not between 1 and 13")
    end

    if [:hearts, :spades, :clubs, :diamonds].include? suit
      @suit = suit
    else
      raise ArgumentError.new("Suit is not hearts, spades, clubs or diamonds")
    end


  end

  def to_s
    suit = @suit
    value = @value
    case value
    when 1
      value = "Ace"
    when 11
      value = "Jack"
    when 12
      value = "Queen"
    when 13
      value = "King"
    end

  # def to_s
  #   @suit = suit
  #   @value = value
  #   case
  #   when value == 1
  #     @value = "Ace"
  #   when value == 11
  #     @value = "Jack"
  #   when value == 12
  #     @value = "Queen"
  #   when value == 13
  #     @value == "King"
  #   end

    return "#{value} of #{suit.to_s}"
  end

end
