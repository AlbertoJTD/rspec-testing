# It will use tha class provided in the RSpec.describe block to instantiate the subject
RSpec.describe Hash do
  # It implicitly creates a Hash object
  # let(:subject) { Hash.new }

  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = "Some Value"
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end