class GameTime < ApplicationRecord
    after_update_commit { broadcast_replace_to 'game_time' }
end
