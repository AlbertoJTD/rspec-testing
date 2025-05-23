RSpec.describe 'allow method review' do
  it 'can customize return value for methods on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)

    expect(calculator.add).to eq(15)
    expect(calculator.add(3)).to eq(15)
    expect(calculator.add(3, 4)).to eq(15)
    expect(calculator.add(3, 4, 5)).to eq(15)
    expect(calculator.add('hello')).to eq(15)
  end

  it 'can stub one or more methods on a real object' do
    # It's not doing the real sum, it just pretends to do it
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10)
    expect(arr.sum).to eq(10)
  end

  it 'can return multilpe return values in sequence' do
    mock_array = double

    # This will return :c on the first call, :b on the second call, and nil on the third or any subsequent call
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil)
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
  end
end
