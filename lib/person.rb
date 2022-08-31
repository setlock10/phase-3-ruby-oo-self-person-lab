require 'pry'
# your code goes here
class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account 

    def initialize (name)

        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end

    def happiness=(num)
        if num>10
            @happiness=10
        elsif num<0
            @happiness=0
        else
            @happiness=num
        end
    end

    def hygiene=(num)
        if num>10
            @hygiene=10
        elsif num<0
            @hygiene=0
        else
            @hygiene=num
        end
    end

    def clean?
        @hygiene>7
    end

    def happy?
        @happiness>7
    end

    def get_paid(amount)
        self.bank_account+=amount
        return "all about the benjamins"
    end

    def work_out
        self.hygiene-=3
        self.happiness+=2
        
        return "♪ another one bites the dust ♫"
    end

    def take_bath
        self.hygiene+=4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end


    



    

end


binding.pry
