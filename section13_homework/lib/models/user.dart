enum Gender {
  male,
  female,
}

class User {
  final Gender gender;
  final int height;
  final int weight;
  final int age;

  User({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
  });
}