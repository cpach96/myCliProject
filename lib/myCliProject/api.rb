class MyCliProject::API

    def fetch(game_name)
        url = "https://api.rawg.io/api/games/#{game_name}"
        response = HTTParty.get(url)
            description = response["description"]
            release_date = response["released"]
            image_url = response["background_image"]
            MyCliProject::Game.new(game_name,description,release_date)
    end

    #This method controls the info pulled from RAWG API including the games description and release date. 


end