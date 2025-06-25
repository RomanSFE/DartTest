// a.
abstract class Vehicle {
  // Protected variable
  int _speed = 0;

  // Abstract method
  void move();

  // Non-abstract method
  void setSpeed(int speed) {
    _speed = speed;
  }

// c) 
// prevent direct access
  int get speed => _speed;
}

// b) 
//Subclass Car extending Vehicle
class Car extends Vehicle {
  // Implement abstract method
  @override
  void move() {
    print("The car is moving at $_speed km/h");
  }
}

// d) 
// main function - Call move method
void main() {
  Car myCar = Car();
  myCar.setSpeed(80);  // Set speed using setter
  myCar.move();        // Call move method
}

