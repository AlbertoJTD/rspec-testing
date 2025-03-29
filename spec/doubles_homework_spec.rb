RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    # For each question, write the code that should go here
    database_connection = double('Database Connection', connect: true, disconnect: 'Goodbye')
    expect(database_connection.connect).to be_truthy
    expect(database_connection.disconnect).to eq('Goodbye')

    fs = double('File System')
    allow(fs).to receive(:read).and_return('Romeo and Juliet')
    allow(fs).to receive(:write).and_return(false)

    expect(fs.read).to eq('Romeo and Juliet')
    expect(fs.write).to be_falsey
  end
end
