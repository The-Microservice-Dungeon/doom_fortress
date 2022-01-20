class EventsJob < ApplicationJob
    queue_as :default

    def perform
        data = DoomFortress::GameService.get_event
        event = Event.new
        event.event_id = data['event_id']
        event.topic = data['topic']
        event.timestamp = data['timestamp']
        event.event_type = data['event_type']
        event.value = data['text']
        event.save
        self.class.set(wait: 5.seconds).perform_later
    end
end