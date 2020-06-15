class Deck
    attr_reader :cards
    def initialize
        @cards = self.createDeck
    end
    def createDeck
        res = []
        Card.suits.each {|s| Card.ranks.each {|r| res.append(Card.new(s, r))}}
        res
    end
    def choose_card
        self.cards.slice!(rand(self.cards.count))
    end
end

class Card
    attr_reader :rank, :suit
    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end
    def self.suits
        ["Hearts", "Clubs", "Diamonds", "Spades"]
    end
    def self.ranks
        ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    end
end
