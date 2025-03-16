RSpec.describe 'start_with and end_with matcher' do
  describe 'caterpillar' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at the beginning or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to end_with(:d)
    end

    it { is_expected.to start_with(:a) }
    it { is_expected.to end_with(:d) }
  end

  # It does not work with hashes, because it may not keep the same order.
  # describe ({ a: 1, b: 2, c: 3 }) do
  #   it 'should check for key-value pairs at the beginning or end of the hash' do
  #     expect(subject).to start_with(:a => 1)
  #     expect(subject).to end_with(:c => 3)
  #   end

  #   it { is_expected.to start_with(:a => 1) }
  #   it { is_expected.to end_with(:c => 3) }
  # end
end