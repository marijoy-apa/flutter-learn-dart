void main() {
  // Define a map representing two persons
  Map<String, Map<String, dynamic>> persons = {
    'person1': {
      'name': 'Alice',
      'age': 28,
      'isStudent': false,
      'grades': {'math': 90, 'english': 85, 'history': 95},
    },
    'person2': {
      'name': 'Bob',
      'age': 24,
      'isStudent': true,
      'grades': {'math': 80, 'english': 92, 'history': 88},
    },
  };

  // Accessing values for Person 1
  print('Person 1 Details:');
  print('Name: ${persons['person1']!['name']}');
  print('Age: ${persons['person1']!['age']}');
  print('Is Student? ${persons['person1']!['isStudent']}');

  //! is added to address error "the receiver can be null"

}
