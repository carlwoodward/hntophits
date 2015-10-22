module StoriesHelper
  extend self
  def minutes_to_words(minutes)
    minutes = Integer(minutes)
    minutes = 1 if minutes == 0
    hour = 60
    day = hour * 24
    month = Integer(day * 30.4)
    year = Integer(12 * month)
    if minutes < hour
      [minutes, minutes == 1 ? 'min' : 'mins']
    elsif minutes < day
      [(minutes/hour).to_i, (minutes/hour).to_i == 1 ? 'hour' : 'hours']
    elsif minutes < month
      [(minutes/day).to_i, (minutes/day).to_i == 1 ? 'day' : 'days']
    elsif minutes < year
      [(minutes/month).to_i, (minutes/month).to_i == 1 ? 'month' : 'months']
    else
      [(minutes/year).to_i, (minutes/year).to_i == 1 ? 'year' : 'years']
    end
  end

end
