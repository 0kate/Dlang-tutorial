import std.stdio : writeln;

interface Animal {
  void makeNoise();

  final void multipleNoise(int n) {
    for (int i = 0; i < n; i++) {
      makeNoise();
    }
  }
}

class Dog : Animal {
  override void makeNoise() {
    writeln("Woof!");
  }
}

class Cat : Animal {
  override void makeNoise() {
    writeln("Meeoauw!");
  }
}

void main() {
  Animal dog = new Dog;
  Animal cat = new Cat;
  Animal[] animals = [dog, cat];
  foreach (animal; animals) {
    animal.multipleNoise(5);
  }
}
