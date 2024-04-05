import 'guess.dart';

void hangman() {
  print("Welcome to Hangman!");
  List<String> words = ["flutter", "banana", "hangman"];
  String guessed = "hangman";
  String guessedWord = chooseRandomWord(words);
  List<String> guessedLetters = [];
  int attemptsLeft = 6;

  while (attemptsLeft > 0) {
    print(
        "Word: ${guessedWord.split('').map((char) => guessedLetters.contains(char) ? char : '_').join(' ')}");
    print("Guessed Letters: ${guessedLetters.join(', ')}");
    print("Attempts Left: $attemptsLeft");

    String guess = getValidGuess();

    if (guessedWord.contains(guess)) {
      print("$guess\nCorrect!");
      guessedLetters.add(guess);
    } else {
      print("Incorrect");
      attemptsLeft--;
      print("Attempts Left: $attemptsLeft");
    }

    if (guessedWord.split('').every((char) => guessedLetters.contains(char))) {
      print("Congratulations! You guessed the word: $guessedWord");
      return;
    }
  }

  print("You ran out of attempts. The word was: $guessedWord");

  //List<String> words = []; Start with a list of any words you wish to add
  //choose random word from the list as the guessed word
}
