class MyCliProject::Game
    attr_accessor :game_name
    @@all = []
    
    def initialize(game_name)
        @game_name = game_name
     
        @@all << self
    end

    def self.all
        @@all
    end

end