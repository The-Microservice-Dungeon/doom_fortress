module EventsHelper
  def getTemplate(topic, value, event_type)
    json = JSON.parse(value)
    case topic
    when"status"
      return {source: "jesus", action: json["status"], target: "galaxy"}
    when"mining"
      return {source: "robot_alive", action: "mining", target: json["resourceType"]}
    when"fighting"
      return {source: "robot_alive", action: "fighting", target: "robot"}
    when"moving"
      return {source: "robot_alive", action: "moving", target: "universe"}
    when"trades"
      event_data = event_type.split('-')
      if event_data[0] == 'buy'
        return {source: "player", action: "buy", target: event_data[1]}
      else
        return {source: "player", action: "sell", target: event_data[1]}
      end
    when"regeneration"
      return {source: "robot_alive", action: "regeneration", target: "robot"}
    when"blocking"
      return {source: "robot_alive", action: "blocking", target: "robot"}
    when"robot-destroyed"
      return {source: "robot_alive", action: "fighting", target: "robot_dead"}
    else
      return {source: "robot_alive", action: "notfound", target: "notfound"}
    end
  end
end
