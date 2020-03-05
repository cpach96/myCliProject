class MyCliProject::Cli

    def call
        puts "Welcome to my first project! What game would you like to know about?"
        input = gets.chomp
        MyCliProject::API.new.fetch(input)
    end

end