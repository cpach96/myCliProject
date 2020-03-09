class MyCliProject::Cli

    def call
        puts "Welcome to my first project!"
        puts "What video game would you like to know about?"
        input = gets.chomp.gsub!(" ","-")
       # puts "Ah #{input} great game! What would you like to know"
       # puts "Type either 'description', or 'release date'
        MyCliProject::API.new.fetch(input)
        show_games
           
    end

    def show_games
        MyCliProject::Description.all.each.with_index(1) do |game,index|
           puts "----------------------------------------"
           puts "#{index}. #{game.description}"
           puts "----------------------------------------"
           next_option
        end
    end

    def next_option
        puts "Would you like to know more about the game you searched? Specify y or n"
        input = gets.chomp.downcase
        if input == "y"
                MyCliProject::Description.all.each.with_index(1) do |game,index|
                puts "----------------------------------------"
                puts "#{index}. #{game.release_date}"
                puts "----------------------------------------"
            end
        elsif input == "n"
            puts "Okay.. Would you like to search another game? Specify y or n"
            input = gets.chomp.downcase
        if
            input == "y"
            call
        else
            puts "Goodbye!"
            end
        end
    end

end