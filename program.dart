class Person {
  final String name;

  // Private constructor
  Person._internal(this.name);

  // Static cache field as a list
  static final List<Person> _cache = [];

  // Factory constructor
  factory Person(String name) {
    print(_cache);
    bool isNameIncluded = _cache.any((person) => person.name == name);
    if (isNameIncluded) {
     return _cache.first;
    } else {
      final person = Person._internal(name);
      _cache.add(person);
      return person;
    }
  }
}

void main() {
  // Creating instances using the factory constructor
  final person1 = Person('John');
  final person2 = Person('Harry');
  final person3 = Person('John');

  // Instances with the same name share the same instance in memory
  print(
      "Person1 name is : ${person1.name} with identity ${identityHashCode(person1)}");
  print(
      "Person2 name is : ${person2.name} with identity ${identityHashCode(person2)}");
  print(
      "Person3 name is : ${person3.name} with identity ${identityHashCode(person3)}");
}

// Helper function to print identity hashcode
int identityHashCode(Object obj) => obj.hashCode;

