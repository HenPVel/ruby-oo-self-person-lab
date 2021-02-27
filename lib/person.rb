# your code goes here

require 'Pry'


class Person

    attr_reader :name, :happiness,:hygiene
    attr_accessor :bank_account
    
    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end

    def happiness=(happiness_level)
        if happiness_level > 10
            @happiness=10
        elsif happiness_level <0
                @happiness=0
        else happiness_level>0 && happiness_level<10
            @happiness=happiness_level
        end
    end

def hygiene=(hygiene_level)
    if hygiene_level > 10
        @hygiene=10
    elsif hygiene_level <0
            @hygiene=0
    else @hygiene=hygiene_level
    end
end

def happy?
    if @happiness > 7
        return true
    else return false
    end
end

def clean?
    if @hygiene > 7
        return true
    else return false
    end
end

def get_paid(salary)
    @bank_account+=salary
    pp 'all about the benjamins'
end

def take_bath
   self.hygiene+=4
    pp '♪ Rub-a-dub just relaxing in the tub ♫'
end

def work_out
    self.hygiene-=3
    self.happiness+=2
    pp '♪ another one bites the dust ♫'
end

def call_friend(friend_instance)
    self.happiness+=3
    friend_instance.happiness+=3
    pp "Hi #{friend_instance.name}! It's #{self.name}. How are you?"
end

def start_conversation(person_to_converse_with,topic)
    if topic=='politics'
        self.happiness-=2
        person_to_converse_with.happiness-=2
        'blah blah partisan blah lobbyist'
    
    elsif topic=='weather'
        self.happiness+=1
        person_to_converse_with.happiness+=1
        'blah blah sun blah rain'
    
    else
        'blah blah blah blah blah'
    end

end

# 
# 
# 
# 
# 

end
