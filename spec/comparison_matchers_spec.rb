RSpec.describe 'Comparison Matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 5
    expect(8).to be < 15
    expect(1).to be >= -1
    expect(1).to be <= 1
  end

  # With this sintax, 'subject' will be 100
  describe 100 do # This is equal that use: subject { 100 }
    it { is_expected.to be > 90 }
    it { is_expected.to be <= 100 }
    it { is_expected.to be >= 100 }
    it { is_expected.not_to be < 99 }
  end
end
