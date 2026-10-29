

import 'package:flutter/material.dart';



void main(){
  runApp( const TabBarDemo());
}


class TabBarDemo extends StatelessWidget{

  const TabBarDemo({
    super.key,
  });


  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: AlertDialog(
        title: Text('Warning'),
        content: Text('This site uses cookies'),

        actions: [
          TextButton(
            onPressed: (){},
            child: Text('Reject')
          ),

          TextButton(
            onPressed: (){},
            child: Text('Reject')
          )
        ]
      )
    );
  }
}