class Car {
  // Fields
  String brand;
  int year;

  // Constructor
  Car(this.brand, this.year);

  // Getter and setter for brand
  String get carBrand => brand;
  set carBrand(String value) => brand = value;

  // Getter and setter for year
  int get carYear => year;
  set carYear(int value) => year = value;

  // Function to display car information
  void displayInfo() {
    print('Car: $brand, Year: $year');
  }
}

void main() {
  // Creating an object of the Car class
  Car myCar = Car('Toyota', 2022);

  // Accessing fields using getters
  print('Car Brand: ${myCar.carBrand}');
  print('Car Year: ${myCar.carYear}');

  // Using a function to display car information
  myCar.displayInfo();
}
