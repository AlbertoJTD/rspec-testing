RSpec.describe 'Math calculations' do
  it 'sum 2 numbers' do
    expect(1 + 9).to eq(10)
  end

  it 'division reminder is 1' do
    expect(3 % 2).to eq(1)
  end

  it 'multilicate 2 numbers' do
    expect(5 * 5).to eq(25)
  end

  it 'substract 2 numbers to 10' do
    expect(10 - 2).to eq(8)
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
    expect(2 * 2).to eq(4)
    expect(3 / 3).to eq(1)
    expect(4 - 4).to eq(0)
  end
end