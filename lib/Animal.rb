class Animal
    attr_reader :species, :nickname, :zoo
    attr_accessor :weight
    @@all_animals = []

    def initialize(species, nickname, weight, zoo)
        @species = species
        @nickname = nickname
        @weight = weight
        @zoo = zoo          #assign this animal to a zoo (initilize when created)
        
        @@all_animals << self
    end


    #### this is a class method, call on Animal class  ##########
    def self.all
        return @@all_animals
    end

    def self.find_by_species(species)
        self.all.select {|animal| animal.species == species}
    end

end
