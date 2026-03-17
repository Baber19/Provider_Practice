import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/counter_provider.dart';

class CounterChangePage extends StatelessWidget {
  const CounterChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
               // Provider.of<CounterProvider>(context,listen: false).counterIncrement();
                context.read<CounterProvider>().counterIncrement();
              },
              icon: Icon(Icons.add),
            ),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {
               // Provider.of<CounterProvider>(context).counterIncrement();
                context.read<CounterProvider>().counterIncrement();
              },
              icon: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
