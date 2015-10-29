module StoriesHelper
  extend self
  def plural? units, value
    value.to_i == 1 ? units : "#{units}s"
  end

  def minutes_to_words(minutes)
    minutes = Integer(minutes)
    minutes = 1 if minutes == 0
    hour = 60
    day = hour * 24
    month = Integer(day * 30.4)
    year = Integer(12 * month)
    if minutes < hour
      "#{minutes} #{plural?("min", minutes)}"
    elsif minutes < day
      hours = (minutes/hour).to_i
      "#{hours} #{plural?("hour", hours)}"
    elsif minutes < month
      days = (minutes/day).to_i
      "#{days} #{plural?("day", days)}"
    elsif minutes < year
      months = (minutes/month).to_i
      "#{months} #{plural?("month", months)}"
    else
      years = (minutes/year).to_i
      "#{years} #{plural?("year", years)}"
    end
  end

end
