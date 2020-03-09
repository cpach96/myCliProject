class MyCliProject::Description
    attr_accessor :description,  :game_name , :release_date
    @@all = []
    
    def initialize(description,release_date)
        @description = description
        @release_date = release_date
        @@all << self
    end

    def self.all
        @@all
    end

end