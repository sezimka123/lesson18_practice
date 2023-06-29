void main() {
  Dog dog = Dog(dogName: "dog", dogFood: "feed", dogLocation: "kennel");
  dog.eat();
  dog.makeNoise();
  dog.sleep();
  print("-" * 30);

  Cat cat = Cat(catName: "cat", catFood: "fish", catLocation: "cage");
  cat.eat();
  cat.makeNoise();
  cat.sleep();
  print("-" * 30);

  Horse horse =
      Horse(horseName: "horse", horseFood: "carrots", horseLocation: "stable");
  horse.eat();
  horse.makeNoise();
  horse.sleep();
  print("-" * 30);

  Student student = Student(firstName: "Indira", lastName: "Baizakova", group: "UGPr-19", averageMark: 4);
  student.getScholarship();
  print("-" * 30);

  Aspirant aspirant = Aspirant(aspirantFirstName: "Ira", aspirantLastName: "Lee", aspirantGroup: "UUPr-23", aspirantAverageMark: 5);
  aspirant.getScholarship();
}

class Animal {
  String name;
  String food;
  String location;

  Animal({
    required this.name,
    required this.food,
    required this.location,
  });

  void makeNoise() {
    print("$name goes like");
  }

  void eat() {
    print("$name eats");
  }

  void sleep() {
    print("$name sleeps at $location");
  }
}

class Dog extends Animal {
  final String dogName;
  final String dogFood;
  final String dogLocation;

  Dog({
    required this.dogName,
    required this.dogFood,
    required this.dogLocation,
  }) : super(
          name: dogName,
          food: dogFood,
          location: dogLocation,
        );

  @override
  void makeNoise() {
    print("$name goes like gav-gav");
  }

  void eat() {
    print("$name eats $food");
  }
}

class Cat extends Animal {
  final String catName;
  final String catFood;
  final String catLocation;

  Cat({
    required this.catName,
    required this.catFood,
    required this.catLocation,
  }) : super(
          name: catName,
          food: catFood,
          location: catLocation,
        );

  @override
  void makeNoise() {
    print("$name goes like meow");
  }

  void eat() {
    print("$name eats $food");
  }
}

class Horse extends Animal {
  final String horseName;
  final String horseFood;
  final String horseLocation;

  Horse({
    required this.horseName,
    required this.horseFood,
    required this.horseLocation,
  }) : super(
          name: horseName,
          food: horseFood,
          location: horseLocation,
        );

  @override
  void makeNoise() {
    print("$name goes like neigh");
  }

  void eat() {
    print("$name eats $food");
  }
}

class Student {
  String firstName;
  String lastName;
  String group;
  double averageMark;

  Student({
    required this.firstName,
    required this.lastName,
    required this.group,
    required this.averageMark,
  });

  void getScholarship() {
    averageMark == 5.0
        ? print("Scholarship is 20000")
        : print("You have no scholarship");
  }
}

class Aspirant extends Student {
  final String aspirantFirstName;
  final String aspirantLastName;
  final String aspirantGroup;
  final double aspirantAverageMark;

  Aspirant({
    required this.aspirantFirstName,
    required this.aspirantLastName,
    required this.aspirantGroup,
    required this.aspirantAverageMark,
  }) : super(
          firstName: aspirantFirstName,
          lastName: aspirantLastName,
          group: aspirantGroup,
          averageMark: aspirantAverageMark,
        );

  @override
  void getScholarship() {
    aspirantAverageMark == 5.0
        ? print("Scholarship is 40000")
        : print("Scholarship is 18000");
  }
}
