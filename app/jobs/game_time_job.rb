class GameTimeJob < ApplicationJob
    queue_as :default

    def perform
        data = DoomFortress::GameService.get_game_time
        target = GameTime.find_or_create_by(id: 1)
        target.update_attribute(:time, data['gameTime'])
        target.update_attribute(:round_count, data['roundCount'])
        target.update_attribute(:round_time, data['roundTime'])
        self.class.set(wait: 1.seconds).perform_later
    end
end