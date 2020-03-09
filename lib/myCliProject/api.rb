class MyCliProject::API

    def fetch(game_name)
        url = "https://api.rawg.io/api/games/#{game_name}"
        MyCliProject::Game.new(game_name)
        response = HTTParty.get(url)
            description = response["description"]
            release_date = response["released"]
            MyCliProject::Description.new(description,release_date)
    end


end