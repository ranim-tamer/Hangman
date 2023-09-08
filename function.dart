

void welcome(){
  print('===========================\n');
  print('      Hangman Game : \n');
  print('===========================\n');
  print('Save yourself before hanging by guessing the letters...\n');
  print('Are you ready? GO>>\n');
}


void display_misses(int misses){
  if (misses ==1){
    print("+--------+ \n");
    print("|        | \n");
    print("O        | \n");
    print("         | \n");
    print("         | \n");
    print("         | \n");
    print("         | \n");
  }
  else if( misses == 2){
    print("+--------+ \n");
    print("|        | \n");
    print("O        | \n");
    print("|        | \n");
    print("         | \n");
    print("         | \n");
    print("         | \n");
  }
  else if ( misses == 3){
    print(" +--------+ \n");
    print(" |        | \n");
    print(" O        | \n");
    print("/|        | \n");
    print("          | \n");
    print("          | \n");
    print("          | \n");
  }
  else if( misses == 4){
    print(" +--------+ \n");
    print(" |        | \n");
    print(" O        | \n");
    print("/||       | ");
    print("          | \n");
    print("          | \n");
    print("          | \n");
  }
  else if( misses == 5){
    print(" +--------+ \n");
    print(" |        | \n");
    print(" O        | \n");
    print("/||       | \n");
    print("/         | \n");
    print("          | \n");
  }
  else if( misses == 6){
    print(" +--------+ \n");
    print(" |        | \n");
    print(" O        | \n");
    print("/||       | \n");
    print("/ |       | \n");
    print("          | \n");
  }
}

void display_status(List<String>incorrect, answer){
  print('Incorrect Guesses: \n');
  for(int i = 0 ; i < incorrect.length;i++){
    print(incorrect[i]);
  }
  print('\n Word: \n');

  for(int i = 0 ; i < answer.length ; i++){
    print(answer[i]);
  }
}


void end_game(answer,word){
  if(answer == word){
    print("Great!!! you win>>>\n");
    print("Congratulations\n");
  }
  else{
    print("OH NO!!! Man is hanged\n>>>");
  }
}