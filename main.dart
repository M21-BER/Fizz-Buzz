import 'dart:io';

void main() {
  print(
      "Enter the Maximum Number to Check if numbers between (1-entered number) follow the rules listed below \n\n During iteration, if number is divisible by 3 the system will output Fizz \n During iteration, if the number is divisible by 5 the system will output Buzz \n During iteration, if the number is divisible by both 3 & 5 the system will output Fizz-Buzz \n Other wise system will output the number \n");
  stdout.write("Enter Number: ");
  final input = stdin.readLineSync();
  try {
    final int value = int.parse(input!);
    for (int i = 1; i <= value; i++) {
      if (i % 3 == 0) {
        print("Fizz");
      } else if (i % 5 == 0) {
        print("Buzz");
      } else if (i % 3 == 0 && i % 5 == 0) {
        print("Fizz-Buzz");
      } else {
        print(i);
      }
    }
  } catch (e) {
    if (e.runtimeType == FormatException) {
      print("Invalid Entry, please enter only integer value");
    } else {
      print(e);
    }
  }
}
