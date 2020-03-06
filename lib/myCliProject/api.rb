class MyCliProject::API

    def fetch(game)
        url = "https://api.rawg.io/api/games/#{game}"
        response = HTTParty.get(url)
        binding.pry
        #response["results"].each do |game|
            #puts game["name"]

    end


end