/**
 * Exercise 12
Write a program that asks the user how many Fibonnaci numbers to generate and then generates them. Take this opportunity to think about how you can use functions.

Make sure to ask the user to enter the number of numbers in the sequence to generate.
 */
import 'dart:io';
void main(){
  print("How many Fibonacci numbers do you want ? ");
  try {
    List<int> fibonacciList = [];
    int fibonacciNumber = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < fibonacciNumber; i++) {
      if (i <= 1) {
        fibonacciList.add(1);
      } else {
        fibonacciList.add(fibonacciList[i -1] + fibonacciList[i - 2] );
      }
    }
    fibonacciList.remove(fibonacciList[0]);
    print(fibonacciList);
  } catch (e) {
    print("Please give The program Number!");
  }
}

