RSpec.describe 'not_to method' do
  it 'check that two values do not match' do
    # expect(5).not_to eq(5)
    expect('Hello').not_to eq('hello')
    expect(5).not_to eq(10)
  end

  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq(10)
    expect([1, 2, 3]).not_to equal([1, 2, 3])
    expect(10).not_to be_odd

    expect([1, 2, 3]).not_to be_empty
    expect(nil).not_to be_truthy

    expect('New York').not_to start_with('car')
    expect('New York').not_to end_with('city')

    expect(5).not_to respond_to(:length)
    expect([:a, :b, :c, :d]).not_to include(:x)

    expect { 11 / 3 }.not_to raise_error(NameError)
  end
end