require 'player'

describe Player do

  let(:player) {Player.new("Andrew")}

  context "upon initialize it" do

    it "shoud have a name" do
      expect(player.name).to eq "Andrew"
    end
  end 
  
end