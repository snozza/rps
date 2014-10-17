require 'game'

describe Game do

  let(:game) {Game.new}
  let(:player) {double :player, object_id: 1000}
  
  context "Upon initialize it" do

    it "should have an array for players" do
      expect(game.players).to eq []
    end
  end

  context "It should be able to" do

    it "add a new player to the array" do
      expect{game.add_player(player)}.to change{game.players.count}.by 1
    end

    it "select a player based on object ID" do
      game.add_player(player)
      expect(game.player_select("1000")).to eq player
    end

    it "should have an array of Rock, Paper, Scissors"

  end
end