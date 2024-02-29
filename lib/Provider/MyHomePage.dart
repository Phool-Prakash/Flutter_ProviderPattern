import 'package:flutter/material.dart';
import 'package:flutter_provider_pattern/Model/CounterModel.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Counter :'),
              Consumer<CounterModel>(builder: (context, counter, child) {
                return Text('${counter.count}',
                    style: const TextStyle(color: Colors.red));
              })
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterModel>(context, listen: false).increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
