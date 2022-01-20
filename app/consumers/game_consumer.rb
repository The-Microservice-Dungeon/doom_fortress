class GameConsumer < Racecar::Consumer
  subscribes_to "roundStatus"

  def process(message)
    target = Event.new({event_id: message.headers["eventId"],topic: message.topic,timestamp: message.headers["timestamp"],event_type: message.headers["type"],value: message.value.to_s})
    byebug
    target.save
    puts "Received message: #{message.value}"
  end
end
