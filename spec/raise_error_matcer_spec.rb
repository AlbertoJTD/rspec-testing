RSpec.describe 'raise_error matcher' do
  def some_method
    xy
  end

  class CustomError < StandardError; end

  it 'can check for any error' do
    expect { some_method }.to raise_error 
  end

  it 'can check for a specific error' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  it 'can check for a user-created error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end