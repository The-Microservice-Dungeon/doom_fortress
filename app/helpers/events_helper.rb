module EventsHelper
  def getTemplate(topic, value, event_type)
    json = JSON.parse(value)
    case topic
    when"status"
      return {action: json["status"], target: "galaxy"}
    when"mining"
      return {action: "mining", target: json["resourceType"]}
    when"fighting"
      return {action: "fighting", target: "robot"}
    when"moving"
      return {action: "moving", target: "universe"}
    when"trades"
      event_data = event_type.split('-')
      if event_data[0] == 'buy'
        return {action: "buy", target: event_data[1]}
      else
        return {action: "sell", target: event_data[1]}
      end
    when"regeneration"
      return {action: "regeneration", target: "robot"}
    when"blocking"
      return {action: "blocking", target: "robot"}
    when"robot-destroyed"
      return {action: "fighting", target: "robot_dead"}
    else
      return {action: "notfound", target: "notfound"}
    end
  end
end
