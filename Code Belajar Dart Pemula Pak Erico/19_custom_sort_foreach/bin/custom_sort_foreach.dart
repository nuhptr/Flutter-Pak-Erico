void main(List<String> arguments) {
  var persons = <Person>[
    Person('Admin', 23),
    Person('Member', 50),
    Person('Merchant', 44),
    Person('Distributor', 21),
    Person('Admin', 21),
    Person('Merchant', 24),
  ];

  // persons.sort((p1, p2) => p1.age - p2.age); untuk integer cara manual

  persons.sort((p1, p2) {
    if (p1.role.compareTo(p2.role) != 0) {
      return p1.role.compareTo(p2.role);
    } else {
      return p1.age.compareTo(p2.age);
    }
  }); // urut sesuai abjad

  /**
   * if (p1.roleweight - p2.roleweight != 0 ) {
   * return p1.roleweight - p2.roleweight;} 
   * else {
   * return p1.age.compareTo(p2.age)}
   */

  persons.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);
}
