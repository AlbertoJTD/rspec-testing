class Tea
  attr_reader :flavor, :temperature

  def initialize(flavor, temperature)
    @flavor = flavor
    @temperature = temperature
  end
end

RSpec.configure do |config|
  config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe Tea do
  let(:tea) { Tea.new(:earl_grey, 205.0) }

  it 'tastest like Earl Grey' do
    expect(tea.flavor).to be(:earl_grey)
  end

  it 'is hot' do
    expect(tea.temperature).to be > 200.0
  end
end
