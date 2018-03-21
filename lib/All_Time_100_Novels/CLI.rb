
class AllTime100Novels::CLI

  def call
    welcome
    AllTime100Novels::Scraper.new.get_page
    menu
  end

  def welcome
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Welcome to Time Magazine's 100 Best English Language Novels!"
    puts "This list is broken down alphabetically, and not by ranking."
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
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


  def get_titles(num1, num2)
    titles = AllTime100Novels::Scraper.all
    while num1 <= num2
      puts "#{titles[num1][:position]}.  #{titles[num1][:title_name]}"
      num1 += 1
      end
  end


  def print_title_page(num)
     title = AllTime100Novels::Scraper.title_page(num)
  end


  def menu
    puts "Please type a letter in the range you would like to select!"
    list_titles
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    case input
    when "a", "b"
      puts ""
      get_titles(1, 17)
      puts "Please select the title number:"
      num = gets.strip.to_i
      print_title_page(num)
        input = gets.strip.downcase
        if input == "y"
          menu
        else
          puts ""
          puts "Thanks for stopping by!"
        end
    when "c", "d"
      puts ""
      get_titles(18, 31)
      puts "Please select the title number:"
      num = gets.strip.to_i
      print_title_page(num)
      input = gets.strip.downcase
      if input == "y"
        menu
      else
        puts ""
        puts "Thanks for stopping by!"
      end
    when "f", "g"
        puts ""
      get_titles(32, 39)
      puts "Please select the title number:"
      num = gets.strip.to_i
      print_title_page(num)
      input = gets.strip.downcase
      if input == "y"
        menu
      else
        puts ""
        puts "Thanks for stopping by!"
      end
    when "h", "i"
        puts ""
      get_titles(40, 48)
      puts "Please select the title number:"
      num = gets.strip.to_i
      print_title_page(num)
      input = gets.strip.downcase
      if input == "y"
        menu
      else
        puts ""
        puts "Thanks for stopping by!"
      end
    when "l", "n"
      puts ""
      get_titles(49, 65)
      puts "Please select the title number:"
      num = gets.strip.to_i
      print_title_page(num)
      input = gets.strip.downcase
      if input == "y"
        menu
      else
        puts ""
        puts "Thanks for stopping by!"
      end
    when "o", "r"
      puts ""
      get_titles(66, 80)
      puts "Please select the title number:"
      num = gets.strip.to_i
      print_title_page(num)
      input = gets.strip.downcase
      if input == "y"
        menu
      else
        puts ""
        puts "Thanks for stopping by!"
      end
    when "s", "t"
      puts ""
      get_titles(81, 93)
      puts "Please select the title number:"
      num = gets.strip.to_i
      print_title_page(num)
      input = gets.strip.downcase
      if input == "y"
        menu
      else
        puts ""
        return "Thanks for stopping by!"
      end
    when "u", "w"
      puts ""
      get_titles(94, 100)
      puts "Please select the title number:"
      num = gets.strip.to_i
      print_title_page(num)
      input = gets.strip.downcase
      if input == "y"
        menu
      else
        puts ""
        puts "Thanks for stopping by!"
      end
    when "y", "z", "e", "j", "k", "q", "v"
      puts "Suprisingly, there are no novels that start with 'e', 'j', 'k', 'q', 'v', 'y' or 'z' that made the list! Please choose again. As a reminder, you can type 'list' for the letter ranges, and 'exit' to leave the program!"
    when "list"
        menu
    when "exit"
      return "Thanks for stopping by!"
    else
      puts "Sorry, invalid selection. Please select a letter range, type 'list' to see the letter ranges again, or 'exit' to exit the program!"
    end
  end
  exit
end

end
