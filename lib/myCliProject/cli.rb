class MyCliProject::Cli

    def call
        puts "::::::::::::::::::::::::::::::::::::"
        puts Rainbow("Welcome to my first project!").magenta.underline
        puts "::::::::::::::::::::::::::::::::::::"

        puts Rainbow("What video game would you like to know about?").yellow.underline
        input = gets.chomp.gsub!(" ","-")
        MyCliProject::API.new.fetch(input)
        show_games
           
    end

    #opens command line to start a new instance of game and accept query to search

    def show_games
        puts Rainbow("------------------------------").red
        puts  MyCliProject::Game.all.last.description
        puts Rainbow("------------------------------").red
        continue_or_exit
    end

    #Pulls description from last added instance of Game in the Description @@all array

    def continue_or_exit
        puts Rainbow("Would you like to learn about another game? Specify y to create a new search, 'more options' or exit").yellow.underline
        input = gets.chomp.downcase

        if input == "y"
            call

        elsif input == "more options"
            more_options
        
        elsif input == "exit"
            puts Rainbow("Goodbye!").blue.underline
        
        else 
            puts "input not recognized please try again"
            continue_or_exit
        end
    end

    #Method that controls all of the options associated with the program

    def more_options
        puts Rainbow("Specify your additional options for your search: 'release date', 'search history', or go back").yellow.underline
        input = gets.chomp.downcase
        
        if input == "release date"
            option_release_date
        
        elsif input == "search history"
            game_history

        elsif input == "go back"
            continue_or_exit
        
        else 
            puts "Input not recognized please try again"
            more_options
        end
    end

    #menu controller for more options
   
    def option_release_date
        puts Rainbow("------------------------------").red
            puts  MyCliProject::Game.all.last.release_date
        puts Rainbow("------------------------------").red
            continue_or_exit
    end

   #shows release date for current instance searched

    def game_history
        MyCliProject::Game.all.each do |game|
         puts Rainbow("------------------------------").red
            puts "#{game.game_name}"
         puts Rainbow("------------------------------").red
        end
        continue_or_exit 
    end

    #show history from @@all array in Description

end