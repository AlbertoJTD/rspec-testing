class HotCholocate
  def drink
    'Delicious'
  end

  def discard
    'PLOP!'
  end

  def purchase(number)
    "Awesome, I just purchased #{number} more hot cholocate beverages!"
  end
end


class Coffe
  def drink; end
  def discard; end
  def purchase(number); end
end

RSpec.describe HotCholocate do
  it 'respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:discard, :purchase)
  end

  it { is_expected.to respond_to(:discard) }

  it 'confirms and object can respond to a method with arguments' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end
end

