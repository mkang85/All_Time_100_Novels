class AllTime100Novels::Scraper
  def get_page
    title_info = []
    doc = Nokogiri::HTML(open("http://entertainment.time.com/2005/10/16/all-time-100-novels/slide/all/"))
    titles = doc.css(".items a")
    titles_a = doc.css("i")
    binding.pry
    titles.for each do |title|
      position = title.attr("data-pos").value
      url = title.attr("href").value
    end
  end



end
