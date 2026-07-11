import 'dart:io';
void main() {
  
String? name=stdin.readLineSync();
double mark=double.parse(stdin.readLineSync()!);  
  
  print('your mark in addtion to your reward:${mark+5}');
  
  if(mark>100 || mark<0){
    print('Enter from 0 to 100 please!');
  }
  if(mark>=50){
    print('passed');
  }
  else{
    print('failed');
  }
  
}

