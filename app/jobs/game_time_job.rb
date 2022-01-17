class GameTimeJob < ApplicationJob
    queue_as: default

    def perfom(ticker)
        DoomFortress::GameService.get_game_time()
    end
end