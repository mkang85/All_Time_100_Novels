class AllTime100Novels::Scraper

  @@all = []

  def get_page
    title_info = []
    doc = Nokogiri::HTML(open("http://entertainment.time.com/2005/10/16/all-time-100-novels/slide/all/"))
    titles = doc.css(".items a")
    titles.each do |title|
      position = title.attr("data-pos")
      url = title.attr("href")
      title_name = title.text
      @@all << {title_name: title_name, url: url, position: position}
    end
  end

  def self.all
    @@all
  end

  def self.title_page(num)
    doc = Nokogiri::HTML(open(@@all[num][:url]))
    summary = doc.css(".has-titles div  div p:nth-child(3)").text
    author = doc.css(".has-titles div div aside div div p:nth-child(1)").text
    release_date = doc.css(".has-titles div div aside div div p:nth-child(2)").text
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts author
    puts release_date
    puts "``````````````````````````````````"
    puts summary
    puts "``````````````````````````````````"
    puts "Would you like to see another selection?(Y/N)"
  end


end
