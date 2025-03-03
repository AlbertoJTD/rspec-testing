RSpec.describe Hash do
  subject(:alberth) do
    { a: 1, b: 5 }
  end

  it 'has two key-calue pairs' do
    expect(subject.length).to eq(2)
    expect(alberth.length).to eq(2)
  end

  context 'nested example' do
    it 'has two key-calue pairs' do
      expect(subject.length).to eq(2)
      expect(alberth.length).to eq(2)
    end
  end
end
