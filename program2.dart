//Perform Mathematical Operations with Functions
import 'dart:io';

void main(List<String> args) {
  //while loop to iterate through the out until an option is made
  while (true) {
    print("""===Choose the operation===
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Exit
""");
//get input from user
    stdout.write("Enter choice : ");
//convert input to interger and assign it variable choice
    int choice = int.parse(stdin.readLineSync()!);
    //statement to pass an instruction if choice 5 or greater is selected
    if (choice == 5) {
      exit(0);
    } else if (choice < 1 || choice > 4) {
      print("Invalid choice");
      continue;
    }
//variables to stores two numbers
    print("Enter first number:");
    int x = int.parse(stdin.readLineSync()!);
    print("Enter second number:");
    int y = int.parse(stdin.readLineSync()!);

    int performOperation(int x, int y, int choice) {
      switch (choice) {
        case 1:
          return x + y;
        case 2:
          return x - y;
        case 3:
          return x * y;
        case 4:
          return x ~/ y;
        default:
          throw ("Invalid operation");
      }
    }

    int result = performOperation(x, y, choice);
    print("The result is: $result");
  }
}
