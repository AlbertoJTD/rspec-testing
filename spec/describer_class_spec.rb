class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end


RSpec.describe King do
  # subject { King.new('John') }
  # let(:charles) { King.new('Charles') }

  # described_class is a RSpec helper method that returns the class that is being tested
  subject { described_class.new('John') }
  let(:charles) { described_class.new('Charles') }
  

  it 'represents a King name' do
    expect(subject.name).to eq('John')
    expect(charles.name).to eq('Charles')
  end
end
