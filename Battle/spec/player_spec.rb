require './lib/player.rb'

describe Player do
  subject(:name) { Player.new("Alessio")}

  it "returns its own name" do
    expect(subject.name).to eq "Alessio"
  end

  it 'should reduce hp' do
  	expect{subject.receive_damage}.to change{subject.hp}.by(-20)
  end
end
