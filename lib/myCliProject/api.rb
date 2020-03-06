class MyCliProject::API

    def fetch(game)
        url = "https://api.rawg.io/api/games/#{game}"
        MyCliProject::Game.new(game)
        response = HTTParty.get(url)
        description = response["description"]
        release_date = response["released"]
        binding.pry

        #for interation purposes
        #response["results"].each do |game|
            #puts game["name"]

    end


end