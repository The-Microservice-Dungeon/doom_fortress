class GameConsumer < Racecar::Consumer
  subscribes_to "status"
  subscribes_to "movement"
  subscribes_to "mining"
  subscribes_to "fighting"
  subscribes_to "regeneration"
  subscribes_to "trades"
  subscribes_to "robot-destroyed"



  def process(message)
    target = Event.new({event_id: message.headers["eventId"],topic: message.topic,timestamp: message.headers["timestamp"],event_type: message.headers["type"],value: message.value.to_s})
    target.save
    puts "Received message: #{message.value}"
  end
end
