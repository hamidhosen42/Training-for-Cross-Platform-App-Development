import 'dart:io';

void main() {
  print("Enter your day time:");
  int? time = int.parse(stdin.readLineSync()!);

  print("Enter your age1 number:");
  int? age = int.parse(stdin.readLineSync()!);

  if (time == 6 && ((age < 10 && age > 20) && (age < 50 || age > 60))) {
    print("everyone can go out without age 10-20 & 50-60.");
  } else if (time == 7 && ((age < 15 || age > 25) && (age <= 50))) {
    print("everyone can go out without age 15-25 & 50.");
  } else if (time == 10 && ((age < 26 || age > 30) && (age < 45 || age > 60))) {
    print(" everyone can go out without age 26-30 & 45-60.");
  } else if (time == 12 && ((age < 10 || age > 15) && (age < 50 || age > 60))) {
    print(" everyone can go out without age 10-15 & 50-60.");
  } else if (time == 12 && ((age < 10 || age > 15) && (age < 50 || age > 60))) {
    print(" everyone can go out without age 10-15 & 50-60.");
  } else if (time == 13 && ((age < 25 || age > 40) && (age < 60))) {
    print("everyone can go out without age 25-40 & 60.");
  } else if (time == 15 && ((age < 20 || age > 25) && (age >= 40))) {
    print("everyone can go out without age 20-25 & upto 40.");
  } else if (time == 19 && ((age < 15 || age > 25) && (age <= 50))) {
    print("everyone can go out without age 15-25 & 50.");
  } else if (time == 17) {
    print("everyone can go out.");
  } else {
    print("Every one go");
  }
}
/*
day time: at 6.00 everyone can go out without age 10-20 & 50-60.
day time: at 7.00 everyone can go out without age 15-25 & 50.
day time: at 10.00 everyone can go out without age 26-30 & 45-60.
day time: at 12.00 everyone can go out without age 10-15 & 50-60.
day time: at 13.00 everyone can go out without age 25-40 & 60.
day time: at 15.00 everyone can go out without age 20-25 & upto 40.
day time: at 17.00 everyone can go out .
day time: at 19.00 everyone can go out without age 15-25 & 50.
*/
