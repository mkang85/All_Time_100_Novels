
class AllTime100Novels::CLI

  def call
    list_titles
    menu
  end

  def list_titles
    puts "Welcome to Time Magazine's 100 Best English Language Novels"
    puts "All the titles"
  end

  def menu
    puts "Would you like to see the whole list or go by letter?"
  end
end
