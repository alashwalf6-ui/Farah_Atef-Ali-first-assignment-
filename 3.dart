void fun({required int n1, required  int n2}){
 
try{
if(n2 == 0){
    throw Exception('You can not divide by zero');
}


double d=n1 / n2;
 print('The result: $d');
}catch(e){
print('$e');
}
}
void main(){
//fun(n1: 12, n2: 3);
fun(n1: 2, n2: 0);
}






