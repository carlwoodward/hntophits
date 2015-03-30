
module HN

  extend self

  def valid_hn_id(elem)
    String(elem) =~ /^\d+$/ ? true : false
  end

  def process_latest_hn_num_one(hn_id:, date:, href:, description:)
    Story.process_latest_scrape(
        hd_id: hn_id, date: date, href: href,
        description: description)
  end

end
