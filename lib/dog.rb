# Add your code here
class Dog 

    attr_accessor :name
@@all = [] 

def initialize(name)
 @name = name
 save
end 

def save 
 @@all << self
end 

 def self.all 
    @@all 
 end 

 def self.print_all 
  
    Dog.all.map do |dog| 
      puts dog.name
    end

 end

 def self.clear_all
   
    Dog.all.clear
end


end 