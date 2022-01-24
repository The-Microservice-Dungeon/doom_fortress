module EventsHelper
  def getTemplate(topic, value)
    json = JSON.parse(value)
    case topic
    when"mining"
      return {action: "mining", target: json["resourceType"]}
    when"fighting"
      return {action: "fighting", target: "robot"}
    when"moving"
      return {action: "moving", target: "robot"}
    when"trades"
      return {action: "trades", target: "robot"}
    when"regeneration"
      return {action: "regeneration", target: "robot"}
    when"blocking"
      return {action: "blocking", target: "robot"}
    when"destroyed"
      return {action: "destroyed", target: "robot"}
    else
      return {action: "unknown", target: "robot"}
    end
  end
end
