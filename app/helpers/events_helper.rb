module EventsHelper
  def getTemplate(topic)
    case topic
    when"fighting"
      return {action: "fighting", target: "robot"}
    when"mining"
      return {action: "fighting", target: "robot"}
    when"moving"
      return {action: "fighting", target: "robot"}
    when"buying"
      return {action: "fighting", target: "robot"}
    when"regeneration"
      return {action: "fighting", target: "robot"}
    when"blocking"
      return {action: "fighting", target: "robot"}
    when"destroyed"
      return {action: "fighting", target: "robot"}
    else
      return {action: "fighting", target: "robot"}
    end
  end
end
