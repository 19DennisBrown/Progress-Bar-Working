
import 'package:flutter/material.dart';

void main(){
  runApp( const ProgressBar());
}



class ProgressBar extends StatelessWidget{

  const ProgressBar({
    super.key,
  });


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loader(),
    );
  }
  
}

class Loader extends StatelessWidget{
  const Loader({
    super.key,
  });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicator'),
        backgroundColor: Color.fromARGB(213, 42, 92, 186),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  

          children: [
            CircularProgressIndicator(
              backgroundColor: Color.fromARGB(120, 215, 23, 97),
              valueColor:  AlwaysStoppedAnimation(Colors.cyan),
              strokeWidth: 5,

              
            ),
            SizedBox(
              height: 95,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.greenAccent,
              valueColor: AlwaysStoppedAnimation( const Color.fromARGB(255, 13, 150, 204)),
              minHeight: 3,
            ),

            
          ]
        )
      ),

      bottomNavigationBar: BottomAppBar(
        child: Center(
          child:  Text('Bottom navigation here...'),
        )
      ),
    );
  }
}