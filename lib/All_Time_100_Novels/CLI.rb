
class AllTime100Novels::CLI

  def call
    welcome
    AllTime100Novels::Scraper.new.get_page #Here I want to just see where I left off.
    #AllTime100Novels::Scraper.make_titles - This is to populate my titles.
    #just wanted to see this update
    list_titles
    menu
  end

  def welcome
    puts "Welcome to Time Magazine's 100 Best English Language Novels!"
    puts "There are 100 novels broken down in letter ranges:"
  end

  def list_titles
    puts "A-B"
    puts "C-D"
    puts "F-G"
    puts "H-I"
    puts "L-N"
    puts "O-R"
    puts "S-T"
    puts "U-W"
  end

  # def list_title_range
  #   @titles = AllTime100Novels::Titles
  # end

  def get_titles(num1, num2)
    titles = AllTime100Novels::Scraper.all
    #binding.pry
    while num1 <= num2
      puts "#{titles[num1][:position]}.  #{titles[num1][:title_name]}"
      num1 += 1
    end
  end


  def menu
    puts "Please select the letter range starting with the first letter.  For example for 'A-B', you may simply type 'A' or 'a'."
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    case input
    when "a"
      get_titles(1, 17)
      puts "Please select the title number:"
    when "c"
      get_titles(18, 31)
      puts "Please select the title number:"
    when "f"
        get_titles(32, 39)
      puts "Please select the title number:"
    when "h"
      get_titles(40, 48)
      puts "Please select the title number:"
    when "l"
      get_titles(49, 65)
      puts "Please select the title number:"
    when "o"
      get_titles(66, 80)
      puts "Please select the title number:"
    when "s"
      get_titles(81, 93)
      puts "Please select the title number:"
    when "u"
      get_titles(94, 100)
      puts "Please select the title number:"
    when "y" || "z"
      puts "Suprisingly, there are no novels that start with 'y' or 'z' that made the list! Please choose again. As a reminder, you can type 'list' for the letter ranges, and 'exit' to leave the program!"
    when "list"
      puts list_titles
    when "exit"
      puts "Thanks for stopping by!"
    else
      puts "Sorry, invalid selection. Please select a letter range, type 'list' to see the letter ranges again, or 'exit' to exit the program!"
    end

  end
end

end
