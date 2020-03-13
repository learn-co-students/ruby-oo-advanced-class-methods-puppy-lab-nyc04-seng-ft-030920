require 'pry'

class Dog 
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        save
    end 

    def self.all 
        @@all
    end 

    def self.clear_all
        @@all.clear
    end 

    def self.print_all
        Dog.all.each { |pup|
            puts pup.name
        }
    end 

    def save
        @@all << self
    end 

    # binding.pry
end 