

require_relative 'spec_helper'

describe Deck do
  before do
    @my_deck = Deck.new
  end
  # Write tests for the Deck class.
  # What should you test?
  # 1.  Expected Behavior
  # 2.  Edge cases
  it 'Can return the first card' do
    expect(@my_deck.cards[0].to_s).must_equal "Ace of hearts"
  end

  it 'Can shuffle the cards in the deck' do
    @my_deck.shuffle
    expect(@my_deck.cards[0].to_s).wont_equal "Ace of hearts"
  end
end
