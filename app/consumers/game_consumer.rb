class GameConsumer < Racecar::Consumer
  subscribes_to "roundStatus"

  def process(message)
    puts "Received message: #{message.value}"
  end
end
