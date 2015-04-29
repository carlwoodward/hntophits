module StoriesHelper
  extend self
  def minutes_to_words(minutes)
    minutes = Integer(minutes)
    hour, day = 60, 60 * 24
    if minutes < hour
      "#{minutes}m"
    elsif minutes < day
      "#{minutes/hour}h"
    else
      "#{minutes/day}d"
    end
  end
end
