#include <iostream>
using namespace std;

int main() {
    int secretNum = 7;
    int guess;
    int guessCount = 0;
    int guessLimit = 3;
    bool outOfGuesses = false;

    cout << "Welcome to the Number Guessing Game!" << endl;

    while (!outOfGuesses && guessCount < guessLimit) {
        cout << "Enter guess: ";
        cin >> guess;
        guessCount++;

        if (guess == secretNum) {
            cout << "Congratulations, you win!" << endl;
            break; // Exit the loop because the guess is correct
        } else if (guessCount < guessLimit) {
            cout << "Incorrect guess. Try again." << endl;
        } else {
            outOfGuesses = true;
        }
    }

    if (outOfGuesses) {
        cout << "Out of guesses. You lose!" << endl;
    }

    return 0;
}
