import 'dart:async';
import 'dart:io';
List<Person> people=[];


abstract class Person{
static  int _counter=14;

  final int id;
  late String name;
    late String department;
    


Person({ required this.id, required this.name,  required this.department});

  


void printdata();
 static int generateid(){
  return _counter++;
}

bool hasid(int personid){
  return this.id==personid;
}

}
class Student extends Person{
  late int level;
  late double _average;

double get average=>_average;

  set average(double studentaverage){
  if(studentaverage>=0 && studentaverage<=100){
 _average=studentaverage;
  }else{
    print('Invalid average');
  }
}
Student({
 required super.id,
 required super.name,
 required super.department,
 required this.level,
 required this._average

});
Student.guest():this.level=0,this._average=90,super(id:0 ,name:'unknown',department:'unknown');

@override
void printdata(){
  print('Student:id: ${super.id} | Name: ${super.name} | Department: ${super.department} | Level :${this.level}  | Average: ${this._average}');
}

}

class Doctors extends Person{
late int salary;

Doctors({
  required super.id,
 required super.name,
 required super.department,
 required this.salary
  
});
@override
 void printdata(){
  print('Doctor:id: ${super.id} | Name: ${super.name} | Department: ${super.department} | Salary: ${this.salary}');
}

}



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
  case "2": removeperson(); break;
  case "3": showperson(); break;
  case "4":findperson(); break;
  case"5": addgueststudent(); break;
  case"6":adddoctors(); break;
case "7":work=false; break;
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
    print('choose 5 to add a guest student');
        print('choose 6 to add a doctor');
  print('choose 7 to stop the system');
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

  people.add(Student(id: Person.generateid(),
name: name,

level: level,
department: department,
average: average
)); 

print(' student add sucessfully');
 }
void  adddoctors(){
    stdout.write('Enter a name:');
  String name=stdin.readLineSync()??"";

    stdout.write('Enter the department:');
  String doctordepartment=stdin.readLineSync()??"";

     stdout.write('Enter the level:');
  int salarydoctor=  int.tryParse( stdin.readLineSync()??"")?? 1;

   people.add(Doctors(id: Person.generateid(),
name: name,
department: doctordepartment,
salary: salarydoctor
)); 
print('Doctor add sucessfully');

}
void addgueststudent(){
people.add(Student.guest());
}

 void removeperson(){
  
    stdout.write('Enter ID:');
  int? id=  int.tryParse( stdin.readLineSync()??"");
  if(id==null){
   print('invalid');
   return;
  }
  people.remove((Person)=>Person.hasid(id));
  print('remove done');
 }

void showperson(){

  if(people.isEmpty){
    print('List is empty ');
    return;
  }
  for(Person student in people){
student.printdata();

  }
}
void findperson(){

    stdout.write('Enter ID:');
  int? id=  int.tryParse( stdin.readLineSync()??"");
  if(id==null){
   print('invalid');
   return;
  }
  for( Person s in people){
    if(s.hasid(id)){
      s.printdata();
        return;
    }
  }
    print('studen not found3');
}









