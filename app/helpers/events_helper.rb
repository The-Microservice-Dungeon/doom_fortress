module EventsHelper
  def getTemplate(topic, value, event_type)
    json = JSON.parse(value)
    case topic
    when"mining"
      return {action: "mining", target: json["resourceType"]}
    when"fighting"
      return {action: "fighting", target: "robot"}
    when"moving"
      return {action: "moving", target: "robot"}
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
    when"destroyed"
      return {action: "destroyed", target: "robot_dead"}
    else
      return {action: "unknown", target: "unknown"}
    end
  end
end
