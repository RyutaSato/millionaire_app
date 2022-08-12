enum Suite{
  spade,
  club,
  diamond,
  heart,
  joker,
  tears,
  rose,
  axe
}

abstract class Card{
  final Suite suite;
  final int number;
  final int strength;
  final String abilityName;
  bool isSelected = false;
  Card({
    required this.suite,
    required this.number,
    required this.strength,
    required this.abilityName
  });
  bool isAbleAbility(List<Card> cards);
  void ability(List<Card> cards);
}
abstract class CardAbility{
  late String abilityName;
  void ability(List<Card> cards);
  bool isAbleAbility(List<Card> cards);

}
mixin SandStorm on CardAbility{
  @override
  void ability(List<Card> cards, List<Card> selectedCards){
    if (isAbleAbility(selectedCards) && selectedCards.length == 3){
        // :TODO
    }
  }
  @override
  bool isAbleAbility(List<Card> cards){
    int cnt = 0;
    for(final card in cards) {
      if(card.number == 3)cnt++;
    }
    return cnt >= 3;
  }
}


class ThreeCard extends Card with SandStorm{
  ThreeCard({
    required super.suite,
    required super.number,
    required super.strength,
    required super.abilityName});

  @override
  void ability(List<Card> cards) {

    // TODO: implement ability
  }

  @override
  bool isAbleAbility() {
    // TODO: implement isAbleAbility
    throw UnimplementedError();
  }

}