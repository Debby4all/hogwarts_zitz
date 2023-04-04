import 'dart:io';
void main () {
List<String> hogwartsHouseColor = ['Red', 'Green','blue', 'Yellow'];
stdout.write('Welcome, please enter your name\n');

String name = stdin.readLineSync() ?? ' No Name entered';

stdout.write('Please, enter your age\n');

int age = int.parse(stdin.readLineSync()!);

stdout.write('Please, input your favorite color\n');

String color = stdin.readLineSync() ?? 'No color inputted';

stdout.write('What is your unique trait\n');

String trait = stdin.readLineSync() ?? 'No trait inputted';



switch(color) {


  case 'blue':
  print('You are in blue house');
  break;

  case 'green':
  print('You are in green house');
  break;

  case 'Yellow': 
  print('You are in yellow house');
  break;

  default: 
  print('You are not in any house, rest!');

}

print('Your name is $name; You are $age years; Your favorite color is $color; Your unique trait is $trait');








}