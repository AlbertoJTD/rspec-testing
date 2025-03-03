RSpec.describe 'before and after hooks' do
  # 'before(:context)' and 'after(:context)' hooks are run once before and after all the examples
  before(:context) do
    puts "I am running only once before all examples"
  end
  after(:context) do
    puts "I am running only once after all examples"
  end

  # 'before' and 'after' hooks are run before and after the examples
  before(:example) do
    puts "I am running before each example"
  end
  after(:example) do
    puts "I am running after each example"
  end

  it 'is just a random example' do
    expect(1 + 1).to eq(2)
  end

  it 'is just another random example' do
    expect(7 * 7).to eq(49)
  end
end