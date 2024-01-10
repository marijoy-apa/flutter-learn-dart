void main() {
  // List of strings
  List<String> stringList = ['apple', 'banana', 'orange'];

  // Using for loop with stringList
  print('Using for loop with stringList:');
  for (int i = 0; i < stringList.length; i++) {
    print(stringList[i]);
  }

  // Using for...in loop with stringList
  print('\nUsing for...in loop with stringList:');
  for (String fruit in stringList) {
    print(fruit);
  }

  // Using while loop with stringList
  print('\nUsing while loop with stringList:');
  int index = 0;
  while (index < stringList.length) {
    print(stringList[index]);
    index++;
  }
}
