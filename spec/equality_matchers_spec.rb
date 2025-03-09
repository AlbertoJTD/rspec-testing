RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  context 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  context 'eql matcher' do
    it 'tests for value and the same data type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)

      expect(a).to eql(3.0)
      expect(b).to eql(3)
    end
  end

  context 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d) # This checks for value ✅
      expect(c).to eql(d) # This checks for value and type ✅

      expect(c).to equal(e) # This checks for object identity, because it has the same object location ✅
      expect(c).to be(e) # 'be' is an alias for 'equal'

      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3])
    end
  end
end
