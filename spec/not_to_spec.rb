RSpec.describe 'not_to method' do
  it 'check that two values do not match' do
    # expect(5).not_to eq(5)
    expect('Hello').not_to eq('hello')
    expect(5).not_to eq(10)
  end
end