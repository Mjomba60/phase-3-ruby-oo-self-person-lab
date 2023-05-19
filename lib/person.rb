# your code goes here
class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    end

    def happiness= (happy)
        @happiness = happy_hygiene_meter(happy)[0]
    end

    def hygiene= (hygiene)
        @hygiene = happy_hygiene_meter(hygiene)[0]
    end

    def happy?
        happy_hygiene_meter(self.happiness)[1]
    end

    def clean?
        happy_hygiene_meter(self.hygiene)[1]
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness = self.happiness + 3
        person.happiness = person.happiness + 3
        "Hi #{person.name.capitalize}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        people = [person, self]
        case topic
        when "politics"
            update_hapiness(people, -2)
            "blah blah partisan blah lobbyist"
        when "weather"
            update_hapiness(people, 1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
        
    end

    def happy_hygiene_meter (value)
        result_arr = []
        if (value < 0)
            result_arr[0] = 0
        elsif (value > 10)
            result_arr[0] = 10
        else
            result_arr[0] = value
        end 
        result_arr[1] = result_arr[0] > 7 ? true : false
        return result_arr
    end

    def update_hapiness(people, int)
        people.each {|person| person.happiness = person.happiness + (int)}
    end

end
