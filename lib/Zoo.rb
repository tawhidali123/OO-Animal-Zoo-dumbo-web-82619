class Zoo
    attr_reader :name, :location
    @@all_zoo = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all_zoo << self
    end

    def self.all
        return @@all_zoo
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end 
    end 
    

    def animals_species
        species_arr = self.animals.map {|animal| animal.species}
        species_arr.uniq
    end 

    def find_by_species(species)
        self.animals.select {|animal| animal.species == species}
    end 

    def animal_nicknames
        self.animals.map {|animal| animal.nickname}
    end 

    def self.find_by_location(location)
        self.all.select {|zoo| zoo.location == location}
    end 

end
