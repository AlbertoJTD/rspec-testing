RSpec.shared_examples 'a Ruby object with a length method' do
  it 'should returns the number of items' do
    expect(subject.length).to eq(3)
  end
end


RSpec.describe Array do
  subject { [1, 2, 3] }

  # This line imports the shared example into the current context
  include_examples 'a Ruby object with a length method'

  # it 'should returns the number of items' do
  #   expect(subject.length).to eq(3)
  # end
end

RSpec.describe String do
  subject { 'abc' }

  include_examples 'a Ruby object with a length method'
  
  # it 'should returns the number of items' do
  #   expect(subject.length).to eq(3)
  # end
end

RSpec.describe Hash do
  subject { { x: 1, y: 2, z: 3 } }

  include_examples 'a Ruby object with a length method'

  # it 'should returns the number of items' do
  #   expect(subject.length).to eq(3)
  # end
end


class SausageLink
  def length
    3
  end
end

RSpec.describe SausageLink do
  subject { described_class.new }

  include_examples 'a Ruby object with a length method'

  # it 'should returns the number of items' do
  #   expect(subject.length).to eq(3)
  # end
end

