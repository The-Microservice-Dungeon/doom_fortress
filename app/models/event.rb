class Event < ApplicationRecord
    after_create_commit { broadcast_append_to 'events' }
end
