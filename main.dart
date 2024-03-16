
import 'dart:io';

class Student {
  late String name;
  late int admn_no;
  late int cat_1;
  late int cat_2;
  late int main_exam;

  Student({
    required this.name,
    required this.admn_no,
  });

  void printResults(int score) {
    if (score > 85) {
      print("Excellent \u{1f603} You scored $score points");
    } else if (score > 75) {
      print("Very Good \u{1f603} You scored $score points");
    } else if (score > 65) {
      print("Good \u{1f603} You scored $score points");
    } else {
      print("Average \u{1f604} You scored $score points");
    }
  }

  void evaluateResults() {
    int total = cat_1 + cat_2 + main_exam;
    double average = total / 3;
    int roundedAverage = average.round();

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
  stdout.write("Enter your name : ");
  String name = stdin.readLineSync()!;
  stdout.write("Enter your Admn no : ");
  int admn_no = int.parse(stdin.readLineSync()!);
  var average = Student(name: name, admn_no: admn_no);
  while (true) {
    print("""====Welcome $name admission no $admn_no to Gumbaru gradechecker====
                 1.Check Cat 1 Results
                 2.Check Cat 2 Results
                 3.Check Main exam Results
                 4.Check Average 
                 5.Exit""");
    stdout.write("Enter choice : ");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        stdout.write("Enter Cat 1 : ");
        int cat_1 = int.parse(stdin.readLineSync()!);
        average.cat_1 = cat_1;
        average.printResults(cat_1);
        break;
      case 2:
        stdout.write("Enter Cat 2 : ");
        int cat_2 = int.parse(stdin.readLineSync()!);
        average.cat_2 = cat_2;
        average.printResults(cat_2);
        break;
      case 3:
        stdout.write("Enter Main exam : ");
        int main_exam = int.parse(stdin.readLineSync()!);
        average.main_exam = main_exam;
        average.printResults(main_exam);
        break;
      case 4:
        stdout.write("Enter Cat 1 : ");
        int cat1 = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Cat 2 : ");
        int cat2 = int.parse(stdin.readLineSync()!);
        stdout.write("Enter Main exam : ");
        int mainExam = int.parse(stdin.readLineSync()!);
        average.cat_1 = cat1;
        average.cat_2 = cat2;
        average.main_exam = mainExam;
        average.evaluateResults();
        break;
      case 5:
        exit(0);
      default:
        print("Invalid choice");
    }
  }
}
