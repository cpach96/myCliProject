class MyCliProject::Cli

    def call
        puts "Welcome to my first project!"
        puts "What video game would you like to know about?"
        input = gets.chomp.gsub!(" ","-")
        MyCliProject::API.new.fetch(input)
        show_games
           
    end

    def show_games
        puts "------------------------------"
        puts  MyCliProject::Description.all.last.description
        puts "------------------------------"
        continue_or_exit
    end

    def game_history
        MyCliProject::Game.all.each do |game|
            puts "-------------------------"
            puts "#{game.game_name}"
            puts "-------------------------"
        end
        continue_or_exit 
    end

    def continue_or_exit
        puts "Would you like to learn about another game? Specify y to create a new search, 'more options' or exit"
        input = gets.chomp.downcase
        if input == "y"
            call
        elsif input == "more options"
            puts "Specify your additional options for your search: 'release date', 'search history', or go back"
            new_input = gets.chomp.downcase
        if
            new_input == "release date"
            option_release_date

        elsif new_input == "search history"
            game_history

        elsif new_input == "go back"
            continue_or_exit
        else

        end

        elsif input == "exit"
            puts "Goodbye!"
        
        else 
            puts "input not recognized please try again"
            continue_or_exit
        end
    end

    def option_release_date
            puts "------------------------------"
            puts  MyCliProject::Description.all.last.release_date
            puts "------------------------------"
            continue_or_exit
    end

end