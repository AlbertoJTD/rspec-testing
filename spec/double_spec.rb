RSpec.describe 'a random module' do
  it 'only allows defined methods to be invoked - V1' do
    stuntman = double('Mr. Danger', fall_off_ladder: 'Ouch', ligth_on_fire: true)

    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.ligth_on_fire).to eq(true)
  end

  it 'only allows defined methods to be invoked - V2' do
    stuntman = double('Mr. Danger')
    allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    allow(stuntman).to receive(:ligth_on_fire).and_return(true)

    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.ligth_on_fire).to eq(true)
  end

  it 'only allows defined methods to be invoked - V3' do
    stuntman = double('Mr. Danger')
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', ligth_on_fire: true)

    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.ligth_on_fire).to eq(true)
  end
end