
# class AllTime100Novels::CLI
#
#   def call
#     welcome
#     list_titles
#     menu
#   end
#
#   def welcome
#     puts "Welcome to Time Magazine's 100 Best English Language Novels!"
#     puts "There are 100 novels broken down in letter ranges:"
#   end
#
#   def list_titles
#     puts "A-B"
#     puts "C-D"
#     puts "F-G"
#     puts "H-I"
#     puts "L-N"
#     puts "O-R"
#     puts "S-T"
#     puts "U-W"
#   end
#
#   def list_title_range
#     @titles = AllTime100Novels::Titles
#   end
# 
#
#   def menu
#     puts "Please select the letter range starting with the first letter.  For example for 'A-B', you may simply type 'A' or 'a'."
#     input = nil
#     while input != "exit"
#     input = gets.strip.downcase
#     case input
#     when "a"
#       list_title_range.a
#       puts "Please select the title number:"
#       title_info
#     when "c"
#       list_title_range.c
#       puts "Please select the title number:"
#     when "f"
#       puts "List of F-G"
#       puts "Please select the title number:"
#     when "h"
#       puts "List of H-I"
#       puts "Please select the title number:"
#     when "l"
#       puts "List of L-N"
#       puts "Please select the title number:"
#     when "o"
#       puts "List of O-R"
#       puts "Please select the title number:"
#     when "s"
#       puts "List of S-T"
#       puts "Please select the title number:"
#     when "u"
#       puts "U-W"
#       puts "Please select the title number:"
#     when "y" || "z"
#       puts "Suprisingly, there are no novels that start with 'y' or 'z' that made the list! Please choose again. As a reminder, you can type 'list' for the letter ranges, and 'exit' to leave the program!"
#     when "list"
#       puts list_titles
#     when "exit"
#       puts "Thanks for stopping by!"
#     else
#       puts "Sorry, invalid selection. Please select a letter range, type 'list' to see the letter ranges again, or 'exit' to exit the program!"
#     end
#
#   end
# end
#
# end
