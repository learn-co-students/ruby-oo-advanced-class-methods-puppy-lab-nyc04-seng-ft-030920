class Dog
attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        name_array = self.all.map {|dog| dog.name}
        name_array.each {|dog_name| puts dog_name}
    end
end