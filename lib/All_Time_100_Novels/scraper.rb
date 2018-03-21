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
    if num == 0
      puts "Please select a number between 1-100:"
      input = gets.to_i
      self.title_page(input)
    elsif num > 100
      puts "Please select a number between 1-100:"
      input = gets.to_i
      self.title_page(input)
    else
    doc = Nokogiri::HTML(open(@@all[num][:url]))
    title = doc.css("h2 i").text
    summary = doc.css(".has-titles div  div p:nth-child(3)").text
    author = doc.css(".has-titles div div aside div div p:nth-child(1)").text
    release_date = doc.css(".has-titles div div aside div div p:nth-child(2)").text
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts title
    puts author
    puts release_date
    puts "``````````````````````````````````"
    puts summary
    puts "``````````````````````````````````"
    puts "Would you like to see another selection?(Y/N)"
    end
  end


end
