RSpec.describe Array do
  subject(:sally) do
    ['Sally', 25]
  end

  it 'has two elements' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'the same array object' do
    expect(subject).to eq(sally)
  end
end
