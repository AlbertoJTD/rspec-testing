class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end


RSpec.describe Card do
  # Create a new instance of the Card class when each example is run
  # Lazy loading: This let method is instantiated just if it is called in the example, if it is not called it is not instantiated
  # Use '!' after 'let' to force the instantiation of the variable for each example
  let(:card) { Card.new('Ace', 'Spades') }
  # let(:x) { 1 + 1 }
  # let(:y) { x + 10}

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Expected #{comparison} but got #{card.suit}"
  end
end
