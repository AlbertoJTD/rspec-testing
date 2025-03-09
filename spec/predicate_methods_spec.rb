RSpec.describe 'precidate methods and predicate matchers' do
  it 'can be tested with Ruby methods' do
    result = 12 / 2
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    # zero? method will converted to be_zero
    # empty? method will converted to be_empty

    expect(16 / 2).to be_even
    expect([]).to be_empty
    expect(0).to be_zero
    expect(9).to be_odd
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end
