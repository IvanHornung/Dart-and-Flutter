void main() {
  var deck = new Deck();
  deck.shuffle();
  print(deck.cardsWithSuit('Diamonds'));
}


class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];
    for(var suit in suits) {
      for(var rank in ranks) {
        var card = new Card(rank, suit);
        cards.add(card);
      }
    }
  }

  toString() {
    return cards.toString();
  }

  //List<E> shuffle() is a built-in method
  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) {
      return card.suit == suit;
    });
  }
}

class Card {
  String suit;
  String rank;

  Card(this.suit, this.rank);

  toString() {
    return '$rank of $suit';
  }
}