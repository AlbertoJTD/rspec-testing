class Coffee
  attr_reader :ingredients

  def initialize
    @ingredients ||= []
  end

  def add(ingredient)
    @ingredients << ingredient
  end

  def price
    1.00 + (ingredients.size * 0.25)
  end
end

RSpec.configure do |config|
  config.filter_run_when_matching(focus: true)
  config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe 'A cup of coffee' do
  let(:coffee) { Coffee.new }

  it 'costs $1' do
    expect(coffee.price).to eq(1.00)
  end

  # fcontext 'with milk' do => focus on this context
  context 'with milk' do
    before { coffee.add :milk }

    it 'costs $1.25' do
      expect(coffee.price).to eq(1.25)
    end
  end

  # Missing implementation
  it 'is light in color' do
    pending 'Color not implemented'

    expect(coffee.color).to be(:light)
  end

  it 'is cooler than 200 degrees Fahrenheit' do
    pending 'Temperature not implemented'

    expect(coffee.temperature).to be < 200.0
  end
end
