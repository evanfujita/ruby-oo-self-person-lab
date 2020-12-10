require 'pry'

class Person

    @@all = []
    attr_reader :name, :happiness, :hygiene
    #attr_writer 
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

    def happiness=(happiness)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
        @happiness
    end
    
    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
        @hygiene
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def work_out
        self.happiness += 2
        self.hygiene += -3
        return "Another one bites the dust!"
    end

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end



end

marc = Person.new("Marc")

binding.pry
1