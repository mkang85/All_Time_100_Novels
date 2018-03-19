class AllTime100Novels::Titles
  attr_accessor :author, :desciption, :year_released

  def self.make_from_index_page(title)
    title.url
  end


  def scrape_a
    doc = Nokogiri()
  end

  # def self.a # need to scrape each part of the a-b...c-d....or do I just go through with listing all of the titles, and then sorting them out based on the letter criteria later?
  # puts "1. A whatever"
  # puts "2. Another whatever"
  # puts "3. a last whatever"
  # end
  #
  # def self.c
  #   puts "1. see whatever"
  #   puts "2. see what"
  #   puts "3. see another what"
  # end
end
