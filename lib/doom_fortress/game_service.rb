require 'json'
require 'faraday'

module DoomFortress
  class GameService
    def self.get_game_time()
      #response = Faraday.get("http://#{default_host()}/games/#{get_running_game_id()}/time")
      return  {"gameTime" => 183, "roundCount" => 4, "roundTime" => rand(60)} #JSON.parse(response.body)
    end
    def self.default_host()
      return "localhost:8080"
    end
    def self.get_running_game_id()
      response = Faraday.get("http://#{default_host()}/games")
      games = JSON.parse(response.body)
      game = games.find do |world|
        world["gameStatus"] == "GAME_RUNNING"
      end
      return game["gameId"] unless game.nil?
    end
  end
end
