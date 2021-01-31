import 'package:flutter/material.dart';
import 'counter.dart';

void main() {
  runApp(MyApp());
}

// does not get updated if it is
// stateless so we need to create
// a stateful widget to update
// the counter
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CounterWidget());
  }
}

// updates the state of the screen
class CounterWidget extends StatefulWidget {
  CounterState createState() {
    return CounterState();
  }
}

// creates a Counter object
// need setState in order to update
// the value
class CounterState extends State<CounterWidget> {
  // number in the parathesis specifies
  // what number the counter is initialized
  // at startup
  // need hard reset when this value is changed
  // to reset the state (instead of hot reload)
  final Counter counter = Counter(42);

  // calls the increment function
  // from counter.dart and adds
  // to the value
  void incrementCounter() {
    setState(() {
      counter.increment();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('You have pushed the button this many times:'),
        Text(counter.value.toString(), style: TextStyle(fontSize: 72)),
      ])),
      floatingActionButton: FloatingActionButton(
          // on Press of button it will
          // call the incrementCounter function
          onPressed: incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add)),
    );
  }
}
