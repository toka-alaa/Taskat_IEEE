// 1- Write a program that take elements in a list and
// displays whether each number is High (>5) or Low (≤5).

/*void main () {
  List<int> numbers = [2, 7, 4, 9, 1, 6, 3, 8, 5];

  for (int number in numbers) {
    if (number > 5) {
      print('$number is High');
    } else {
      print('$number is Low');
    }
  }
}*/

// 2- Write a program that takes n and displays the first n
// odd numbers and their sum.

/*void main () {
  int n = 6;
  int sum = 0;

  print('The odd numbers are:');
  for (int i = 0; i < n; i++) {
    int oddNumber = 2 * i + 1;
    print(oddNumber);
    sum += oddNumber;
  }
  print('The sum is : $sum');
}*/


// 3- Write a program that asks how many numbers the user wants to enter,
// then reads those numbers and counts positive & negative values. (Using while)

/*import 'dart:io';
void main () {
  print('How many numbers?');
  int count = int.parse(stdin.readLineSync()!);

  int positiveCount = 0;
  int negativeCount = 0;
  int i = 0;

  while (i < count) {
    int number = int.parse(stdin.readLineSync()!);

    if (number >= 0) {
      positiveCount++;
    } else {
      negativeCount++;
    }
    i++;
  }

  print('$positiveCount positive numbers, $negativeCount negative numbers');
}*/

// 4- Write a program that takes an integer and outputs its
// digits in reverse order.

/*void main ()
{
  String number = '6789';
  String reversed = "";
  for (int i = number.length - 1; i >= 0; i--)
  {
    reversed += number[i];
  }
  print(reversed);
}*/


// 5- Write a program that checks if integer is prime or not.

/*import 'dart:io';

  void main() {
    int n = int.parse(stdin.readLineSync()!);
    bool prime = n > 1;

    for (int i = 2; i * i <= n && prime; i++) {
      if (n % i == 0) prime = false;
    }

    print(prime ? "Prime" : "Not Prime");
  }
*/

// 6- Write a program that takes a list of names and prints
// “Long Name” if the name has more than 4 characters,
// otherwise prints the name. (Using forEach)

/*void main () {
  List<String> names = ['Ali', 'Mona', 'walid', 'Ahmed', 'Sara'];
  List newNames = [];
  names.forEach((name) {
    if (name.length > 4) {
      newNames.add("Long Name");
    } else {
      newNames.add(name);
    }
  }
  );
  print(newNames);
}*/

// 7- Write a program that uses .map() to increase all
// prices in a list by 20% and stores the new values in
// another list.

/*void main () {
  List<double> prices = [50, 100, 150, 200];
  List<double> increasedPrices = prices.map((price) => price * 1.2).toList();
  print(increasedPrices);
}*/


// Bonus
//Write a program that calculates the average grade for
// each student and prints whether they passed or failed.

void main () {
  List<Map<String, dynamic>> students = [
    {"name": "Ali", "grades": [50, 60, 70]},
    {"name": "Omar", "grades": [80, 90, 100]},
    {"name": "Sara", "grades": [40, 30, 20]},
  ];

  students.forEach((student) {
    String name = student['name'];
    List grades = student['grades']; 
    double sum = 0;

    grades.forEach((grade) {
      sum += grade;
    });

    double average = sum / grades.length;

    if (average >= 60) {
      print('$name passed with avg: ${average.toStringAsFixed(2)}');
    } else {
      print('$name failed with avg: ${average.toStringAsFixed(2)}');
    }
  });

}


