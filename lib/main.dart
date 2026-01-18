import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

void main(){
  runApp(
    ChangeNotifierProvider(create: (context) => CounterProvider(),child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCounterApp(),
    );
  }
}
 class MyCounterApp extends StatelessWidget {
   const MyCounterApp({super.key});

 
   @override
   Widget build(BuildContext context) {
     int num = context.watch<CounterProvider>().counter;
     return Scaffold(
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text(
             "$num",style: TextStyle(fontSize: 25),
           ),
         ],
       ),
       floatingActionButton:  FloatingActionButton(onPressed: (){
         context.read<CounterProvider>().increaseCounter();
       },child: Text("+",style: TextStyle(fontSize: 20),),),
     );
   }
 }
 