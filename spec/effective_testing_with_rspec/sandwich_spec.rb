# frozen_string_literal: true

Sandwich = Struct.new(:taste, :toppings)

RSpec.describe 'An ideal sandwich' do
  before { @sandwich = Sandwich.new('delicious', []) }

  # Using a method for an instance variable of Sandwich
  # def sandwich
  #   @sandwich ||= Sandwich.new('delicious', [])
  # end

  it 'is delicious' do
    # sandwich = Sandwich.new('delicious', [])
    taste = @sandwich.taste

    expect(taste).to eq('delicious')
  end

  it 'let me add toppings' do
    # sandwich = Sandwich.new('delicious', [])
    @sandwich.toppings << 'cheese'
    toppings = @sandwich.toppings

    expect(toppings).not_to be_empty
  end
end
