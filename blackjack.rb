#To run this, run `ruby blackjack.rb` from the terminal

puts "Welcome to ruby blackjack"

################### SETTING UP ###################

#Creates a new player
class Player
    attr_accessor :name
    attr_accessor :bankroll
    attr_accessor :hand
    attr_accessor :total

    def initialize 
        @name = "player"
        @bankroll = 100
        @hand = []
        @total = total
    end
end

#Creates a deck and 52 cards
class Deck
    def initialize
        @faces = [*2..10, "J", "Q", "K", "A"]
        @suits = ["clurbs", "spurds", "hurts", "dimmys"]
        @cards = []

        #loop through each face
        @faces.each do |face|
            if face.class == Integer
                value = face 
            #if face is A (aka ace) the value is 11
            elsif face == "A"
                value = 11
            #all other faces (J, Q, K, A) are worth 10
            else
                value = 10
            end
        @suits.each do |suit|
        @cards << Card.new(face, suit, value)
        end
    end
    #shuffle cards
    @cards.shuffle!
    end

    def deal (num, player)
        num.times {@cards.shift.generate_card(player)}
    end

end

class Card
    attr_accessor :value
    attr_accessor :face
    attr_accessor :suit

    def initialize value 
        @value = value
        @face = face
        @suit = suit
    end

    #generate a card from the deck
    def generate_card (player)
        new_card = Card.new face, suit, value
        player.hand << new_card
        #update total for player
        player.total = player.total + new_card.value
    end

end


################### CREATES PLAYER AND HOUSE ###################

human = Player.new "Human", 1000
the_house = Player.new "The hizzy (or dealerdood)", 10000

puts human.name
puts human.bankroll
puts the_house.name
puts the_house.bankroll

deck []

################### PLAYING THE GAME ###################

#Get player info
puts "Hi player, what's your name?"
name = gets.chomp
puts "\n\nWelcome #{name}."
human.name = "#{name}"

#Asks to play
puts "The game is Blackjack, want me to deal you in?"

#Start game
loop do
    puts "Deal me or quit table"
    deal_me = gets.chomp.downcase
        #If human quits table, end loop
        if deal_me == quits
            puts "You're no fun"
            break
        else
            #reset hand and value for players
            human.hand.clear
            human.total = 0
            the_house.hand.clear
            the_house.total = 0

            #deals cards
            puts "\n\nHere're your cards:"
            deck = Deck.new
            deck.deal(2, human)
            #shows the player their cards, the cards will be index 0 and 1 in the array
            puts "The #{human.hand[0].face} of #{human.hand[0].suit}"
            puts "The #{human.hand[1].face} of #{human.hand[1].suit}\n\n"
            
            #deal house cards
            deck.deal(2, the_house)
            puts "The dealer's first card is:"
            puts "The #{the_house.hand[0].face} of #{the_house.hand[0[.suit}\n\n"

