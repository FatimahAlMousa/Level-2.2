// ignore_for_file: unused_local_variable

/* String getValidGuess() {
-The getValidGuess function prompts the player to enter a guess.
-It uses a loop to ensure that the input is a valid guess.
-It reads the input from the user, trims and converts it to lowercase, and validates it using a regular expression.
} */

import 'dart:io';

String getValidGuess() {
  stdout.write("Enter your guess (a single letter): ");
  String? guess = stdin.readLineSync();

  while (guess == null ||
      guess.isEmpty ||
      guess.length != 1 ||
      !RegExp(r'[a-zA-Z]').hasMatch(guess)) {
    print("Invalid guess. Please enter a single letter.");
    stdout.write("Enter your guess (a single letter): ");
    guess = stdin.readLineSync();
  }

  return guess.toLowerCase();
}

String chooseRandomWord(List<String> words) {
  return words[DateTime.now().microsecondsSinceEpoch % words.length];
}
