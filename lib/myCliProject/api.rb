class MyCliProject::API

    def fetch(game_name)
        url = "https://api.rawg.io/api/games/#{game_name}"
        response = HTTParty.get(url)
            description = response["description"]
            release_date = response["released"]
            image_url = response["background_image"]
        if description == nil
            puts "This title has not been entered into the database yet. Please try another search"
            MyCliProject::Cli.new.call
        else
            MyCliProject::Game.new(game_name,description,release_date)
        end
        
    end

    #This method controls the info pulled from RAWG API including the games description and release date. If the game doesnt exist in the database it will start a new search


end