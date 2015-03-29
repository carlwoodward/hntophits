
module HN

  extend self

  def valid_hn_id elem
    String(elem) =~ /^\d+$/ ? true : false
  end

end
