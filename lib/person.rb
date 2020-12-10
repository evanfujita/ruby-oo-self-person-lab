require 'pry'

class Person

    @@all = []
    attr_reader :name, :happiness
    attr_writer :hygiene
    attr_accessor :bank_account


    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @@all << self
    end

    def self.all
        @@all
    end

    def happiness
        if @happiness

    end
    
    def work_out
        self.happiness = -2
    end

end

marc = Person.new("Marc")

binding.pry
