require 'json'

module DoomFortress
  class MessageHandler
    def self.handle_message(message)
      headers = JSON.parse!(message.headers)
      event = Event.new
      event.event_id = headers['eventId']
      event.topic = message.topic
      event.timestamp = headers['timestamp']
      event.event_type = headers['type']
      event.value = message.value
      event.save!
    end
  end
end
