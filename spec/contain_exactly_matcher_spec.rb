RSpec.describe 'contain_exactly matcher' do
  subject { [1, 2, 3] }

  describe 'long from syntax' do
    it 'should check for the presence of all elements' do
      # contain_exactly does not care about the order of elements, only the presence of elements
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(3, 2, 1)
      expect(subject).to contain_exactly(2, 3, 1)
      expect(subject).to contain_exactly(1, 3, 2)
    end
  end

  describe 'short form syntax' do
    it { is_expected.to contain_exactly(1, 2, 3) }
  end
end