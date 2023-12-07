class Character {
  String name;
  int health;

  Character(this.name, this.health);

  void takeDamage(int damage) {
    health -= damage;
    print('$name took $damage damage. Remaining health: $health');
  }

  void attack(Character target, int damage) {
    print('$name performs an attack on ${target.name}.');
    target.takeDamage(damage);
  }

  void showInfo() {
    print('$name - Health: $health');
  }
}

class Hero extends Character {
  String superpower;

  Hero(String name, this.superpower) : super(name, 150);

  void useSuperpower() {
    print('$name uses superpower: $superpower');
  }

  @override
  void attack(Character target, int damage) {
    print('$name performs a heroic attack on ${target.name}.');
    target.takeDamage(damage);
  }
}

void main() {
  var enemy = Character('Evil Enemy', 100);
  var hero = Hero('Superhero', 'Flight');

  enemy.showInfo();
  hero.showInfo();

  hero.attack(enemy, 20);
  hero.useSuperpower();

  enemy.showInfo();
  hero.showInfo();
}
