import 'dart:io';

//class student with its properties
class Student {
  late String name;
  late int admn_no;
  late int cat_1;
  late int cat_2;
  late int main_exam;
//constructor to initialize the property name and admnission number
  Student({
    required this.name,
    required this.admn_no,
  });
//function that takes its mandatory parameters score and examtype to check the score and exam type
  void printResults(int score, String examType) {
    //is else statement to check if the score is within the stated condition
    if (score > 85) {
      print("Excellent \u{1f603} You scored $score points in $examType");
    } else if (score > 75) {
      print("Very Good \u{1f603} You scored $score points in $examType");
    } else if (score > 65) {
      print("Good \u{1f603} You scored $score points in $examType");
    } else {
      print("Average \u{1f604} You scored $score points in $examType");
    }
  }

//function to evaluate results
  void evaluateResults() {
    double average = (cat_1 + cat_2 + main_exam) / 3;
    //rounding of the average to the nearest whole number
    int roundedAverage = average.round();
//is else statement to check if the  average is within the stated condition
    if (roundedAverage > 85) {
      print("Excellent You scored an Average of $roundedAverage points");
    } else if (roundedAverage > 75) {
      print("Very Good You scored an Average of $roundedAverage points");
    } else if (roundedAverage > 65) {
      print("Good You scored an Average of $roundedAverage points");
    } else {
      print("Average You scored an Average of $roundedAverage points");
    }
  }
}

void main() {
  //getting users input
  stdout.write("Enter your name : ");
  //read the input and store it variable name
  String name = stdin.readLineSync()!;
  //getting users input
  stdout.write("Enter your Admn no : ");
  //read the input convert into and interger and store it variable admn_no
  int admn_no = int.parse(stdin.readLineSync()!);
  //object to access the properties of the class student
  var student = Student(
    name: name,
    admn_no: admn_no,
  );
  //boolean variables to check whether they contain values that we are going to use to store data
  bool cat1Entered = false;
  bool cat2Entered = false;
  bool mainExamEntered = false;
//while loop to iterate through the following output
  while (true) {
    print("""====Welcome $name admission no $admn_no to Gumbaru gradechecker====
                 1.Check Cat 1 Results
                 2.Check Cat 2 Results
                 3.Check Main exam Results
                 4.Check Average 
                 5.Exit""");
    //getting users input
    stdout.write("Enter choice : ");
    //converting the input from the user to an interger and storing it to a variable choice
    int choice = int.parse(stdin.readLineSync()!);
    //switch case statement to check whether a specific condition is meet through the choices
    switch (choice) {
      case 1:
        stdout.write("Enter Cat 1 : ");
        student.cat_1 = int.parse(stdin.readLineSync()!);
        student.printResults(student.cat_1, "Cat 1");
        cat1Entered = true;
        break;
      case 2:
        stdout.write("Enter Cat 2 : ");
        student.cat_2 = int.parse(stdin.readLineSync()!);
        student.printResults(student.cat_2, "Cat 2");
        cat2Entered = true;
        break;
      case 3:
        stdout.write("Enter Main exam : ");
        student.main_exam = int.parse(stdin.readLineSync()!);
        student.printResults(student.main_exam, "Main Exam");
        mainExamEntered = true;
        break;
      case 4:
        if (!cat1Entered || !cat2Entered || !mainExamEntered) {
          print(
              "Please enter all exam results before calculating the average.");
        } else {
          student.printResults(student.cat_1, "Cat 1");
          student.printResults(student.cat_2, "Cat 2");
          student.printResults(student.main_exam, "Main Exam");
          student.evaluateResults();
        }
        break;
      case 5:
        exit(0);
      default:
        print("Invalid choice");
    }
  }
}
