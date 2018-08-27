
# deck.rb

require_relative 'card'

class Deck
  attr_reader :cards
  def initialize
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
      end
    end
  end

  def draw
    # returns a card
    return @cards[0]
  end

  def shuffle
    # shuffles the deck
    @cards.shuffle!
  end
end


puts Deck.new.cards[0]
