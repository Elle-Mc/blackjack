#To run this, run `ruby blackjack.rb` from the terminal

puts "Welcome to ruby blackjack"

class Player
    attr_accessor :name
    attr_accessor :bankroll
    attr_accessor :hand

    def initialize 
        @name = "player"
        @bankroll = 100
        @hand = []
    end
end

class Card
    attr_accessor :value

    def initialize value 
        @value = value
    end
end

human = Player.new "Human", 1000
the_house = Player.new "The hizzy (or dealerdood)", 10000

puts human.name
puts human.bankroll
puts the_house.name
puts the_house.bankroll

deck []