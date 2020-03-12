class MyCliProject::Game
    attr_accessor :description,  :game_name , :release_date
    @@all = []
    
    def initialize(game_name, description,release_date)
        @game_name = game_name
        @description = description
        @release_date = release_date
        @@all << self
    end

    def self.all
        @@all
    end

end