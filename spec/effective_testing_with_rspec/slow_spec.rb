# rspec --profile 2 ./spec/effective_testing_with_rspec/slow_spec.rb
# rspec --profile 2 => shows the slowest tests
# rspec -e sleeping ./spec/effective_testing_with_rspec => this will run only the specs with 'sleeping' in the name

RSpec.describe 'The sleep() method' do
  it('can sleep for 0.1 second') { sleep 0.1 }
  it('can sleep for 0.2 second') { sleep 0.2 }
  it('can sleep for 0.3 second') { sleep 0.3 }
  it('can sleep for 0.4 second') { sleep 0.4 }
  it('can sleep for 0.5 second') { sleep 0.5 }
  it('can sleep for 0.6 second') { sleep 0.6 }
  it('can sleep for 0.7 second') { sleep 0.7 }
  it('can sleep for 0.8 second') { sleep 0.8 }
  it('can sleep for 0.9 second') { sleep 0.9 }
  it('can sleep for 1 second') { sleep 1 }
end
