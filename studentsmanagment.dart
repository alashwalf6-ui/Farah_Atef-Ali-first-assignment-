import 'dart:io';
List<Map<String,dynamic>> students=[];
int counter=14;

void main(){
  String appname='students managment';
  print(appname);
  bool work=true;
while(work) {
showmessages();
  String number=stdin.readLineSync()??"".trim();
switch(number){
  case "1": addstudents();
  break;
  case "2": removestudents(); break;
  case "3": showstudents(); break;
  case "4":findstudents(); break;
case "5":work=false; break;
default: print('invalid choice!'); break;
}
if(work==false){
break;}
}
  
}


 void showmessages(){
  print('choose 1 to add a student');
    print('choose 2 to remove a student');
  print('choose 3 to show a student');
  print('choose 4 to find a student');
  print('choose 5 to stop the system');
  stdout.write('choose a number');
 }
 void addstudents(){
  stdout.write('Enter a name:');
  String name=stdin.readLineSync()??"";

    stdout.write('Enter the level:');
  int level=  int.tryParse( stdin.readLineSync()??"")?? 1;

    stdout.write('Enter the department:');
  String department=stdin.readLineSync()??"";

     stdout.write('Enter the average:');
  double average=  double.tryParse( stdin.readLineSync()??"")?? 0.0;

  students.add({
 'id':counter++,
 'name':name,
 'department':department,
 'level':level,
 'average':average
  }); 

print('add sucessfully');
 }
 void removestudents(){
  
    stdout.write('Enter ID:');
  int? id=  int.tryParse( stdin.readLineSync()??"");
  if(id==null){
   print('invalid');
   return;
  }
  students.remove((students)=>students['id']==id);
  print('remove done');
 }

void showstudents(){

  if(students.isEmpty){
    print('List is empty ');
    return;
  }
  for(var std in students){

    print("ID:${std['id']} | Name:${std['name']} | Department:${std['department']} | level: ${std['level']}  | Average:${std['average']}  " );

  }
}
void findstudents(){

    stdout.write('Enter ID:');
  int? id=  int.tryParse( stdin.readLineSync()??"");
  if(id==null){
   print('invalid');
   return;
  }
  for( var s in students){
    if(s['id']==id){
          print("ID:${s['id']} | Name:${s['name']} | Department:${s['department']} | level: ${s['level']}  | Average:${s['average']}  " );
        return;
    }
  }
    print('studen not found3');

}



