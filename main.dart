
import 'dart:io';
import 'function.dart';

void main(){
  welcome();
  String word = 'Flutter';
  String answer = '_______';
  int misses =0;
  List<String> incorrect =[];
  bool guess = false;


  while(answer!= word && misses < 7){
    display_misses(misses);
    display_status(incorrect, answer);

    print('\n \n please enter your guess:');
    String letter = stdin.readLineSync()!;

    for(int i = 0 ; i < word.length ;i++){
      if(letter == word[i]){
        answer[i] = letter;
        guess = true;
      }
    }
    if(guess){
      print("\n Correct \n");
    }
    else{
      print("Incorrect! Another part of person has been drawn");
      incorrect.add(letter);
      misses++;
    }
    guess =false;
  }
  end_game(answer,word);
}
