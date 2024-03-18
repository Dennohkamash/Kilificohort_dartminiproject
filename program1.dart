//Display Personal Information
import 'dart:io';

void main() {
  //prompt for user input
  stdout.write("Enter your name : ");
  //read the userinput and store it to name variable
  String name = stdin.readLineSync()!;
  stdout.write("Enter your age : ");
  int age = int.parse(stdin.readLineSync()!);
  stdout.write("Enter your School : ");
  String school = stdin.readLineSync()!;
  stdout.write("Enter your hobbies sperate by comma : ");
  String? input = stdin.readLineSync()!;
  //converting the input to a list
  List<String> hobbies = input.split(',');
  stdout.writeln(
      "Hello my is $name, am $age years old, a student at $school and my hobbie are $hobbies");
}
