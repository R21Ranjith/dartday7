import 'dart:io';

// Arrow functions
double calculateBMI(double weight, double height) => weight / (height * height);

String getBMICategory(double bmi) =>
    (bmi < 18.5) ? "Underweight"
  : (bmi < 24.9) ? "Normal weight"
  : (bmi < 29.9) ? "Overweight"
  : "Obese";

void main() {
  stdout.write("Enter your weight (kg): ");
  double weight = double.parse(stdin.readLineSync()!);

  stdout.write("Enter your height (meters): ");
  double height = double.parse(stdin.readLineSync()!);

  double bmi = calculateBMI(weight, height);
  String category = getBMICategory(bmi);

  print("\n--- BMI Report ---");
  print("Weight: $weight kg");
  print("Height: $height m");
  print("BMI: ${bmi.toStringAsFixed(2)}");
  print("Category: $category");
}
