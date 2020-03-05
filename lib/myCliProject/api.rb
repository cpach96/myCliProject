class MyCliProject::API
    def fetch
        url = "https://api.rawg.io/api/games?dates=2001-01-01,2001-12-31&ordering=-rating"
        response = HTTParty.get(url)
        binding.pry
    end


end