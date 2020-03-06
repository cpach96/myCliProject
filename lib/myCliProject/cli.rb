class MyCliProject::Cli

    def call
        puts "Welcome to my first project!"
        puts "What video game would you like to know about?"
        input = gets.chomp.gsub!(" ","-")
        
       # puts "Ah #{input} great game! What would you like to know"
       # puts "Type either 'description', or 'release date'"

        MyCliProject::API.new.fetch(input)
    end

end