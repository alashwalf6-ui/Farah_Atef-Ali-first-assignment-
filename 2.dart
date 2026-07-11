void main(){
List<Map> s=[{'name':'Alaa','age':12,'mark':90},
{'name':'Rena','age':20,'mark':50},
{'name':'Marwa','age':18,'mark':89}
];

for (var i in s){
    if(i['mark']>60){
      print(i['name']);
    }
}

}



   










