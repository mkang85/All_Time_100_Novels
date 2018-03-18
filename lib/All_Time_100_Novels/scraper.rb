class AllTime100Novels::Scraper
  def get_page
    title_info = []
    doc = Nokogiri::HTML(open("http://entertainment.time.com/2005/10/16/all-time-100-novels/slide/all/"))
    titles = doc.css(".items a")
    titles.each do |title|
      position = title.attr("data-pos")
      url = title.attr("href")
        #binding.pry
      title_name = title.text
      title_info << {title_name: title_name, url: url, position: position}
    end
    title_info
  end



end