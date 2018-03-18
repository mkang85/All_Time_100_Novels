class AllTime100Novels::Scraper
  def get_page
    doc = Nokogiri::HTML(open("http://entertainment.time.com/2005/10/16/all-time-100-novels/slide/all/"))
    binding.pry
  end


end
