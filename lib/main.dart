import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/contact_list_provider.dart';
import 'package:provider_practice/counter_change_page.dart';
import 'package:provider_practice/counter_provider.dart';
import 'package:provider_practice/list_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContactListProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListPage());
  }
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
              builder: (ctx, provider, child) {
                return Text('${provider.getCounter()}');
              },
            ),
            //Text(context.watch<CounterProvider>().getCounter().toString()),
            //Text(Provider.of<CounterProvider>(context).getCounter().toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CounterChangePage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
