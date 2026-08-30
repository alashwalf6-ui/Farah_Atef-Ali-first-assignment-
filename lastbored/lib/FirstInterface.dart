import 'dart:math';

import 'package:flutter/material.dart';

class c1 extends StatefulWidget {
  const c1({super.key});

  @override
  State<c1> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<c1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( child:Directionality(textDirection: TextDirection.rtl, child: GridView.count(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,

        children: [
          Card(child: Center(child: Text('عنصر1')),color: Colors.grey,),Card(child: Center(child: Center(child: Text('عنصر2'))),color: Colors.grey,),Card(child: Center(child: Text('عنصر3')),color: Colors.grey,),
          Card(child: Center(child: Center(child: Text('عنصر4'))),color: Colors.grey,)

        ],

      ),),

      ),

    );

  }
}