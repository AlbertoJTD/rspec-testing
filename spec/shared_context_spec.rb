RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    10
  end

  let(:some_variable) { [1, 2, 3] }
end


RSpec.describe "first example group" do
  include_context 'common'

  it 'can use instance variables' do
    expect(@foods.length).to eq(0)
    @foods << 'hi'
    expect(@foods.length).to eq(1)
  end

  it 'can use helper methods' do
    expect(some_helper_method).to eq(10)
  end
end


RSpec.describe "second example group" do
  include_context 'common'

  it 'can use let variables' do
    expect(some_variable).to eq([1,2 , 3])
  end
end
